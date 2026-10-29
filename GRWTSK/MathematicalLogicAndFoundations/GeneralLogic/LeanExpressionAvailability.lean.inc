-- @@MEASURE@@
/- Exact byte count for the existing JSON grammar, with structurally keyed
memoization. Alpha equivalence must not erase binder names or annotations. -/
structure ExpressionMeasure where
  bytes : Nat
  depth : Nat

def expressionByteLimit : Nat := 1024 * 1024 * 1024

def addMeasure (own : Nat) (children : Array ExpressionMeasure) : ExpressionMeasure :=
  { bytes := min (expressionByteLimit + 1) (own + (children.foldl (fun n c => n + c.bytes) 0))
    depth := children.foldl (fun n c => max n (c.depth + 1)) 0 }

partial def measureExpression (e : Expr) (callDepth : Nat := 0) : StateT (ExprStructMap ExpressionMeasure) (Except String) ExpressionMeasure := do
  if callDepth > 256 then throw "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256"
  if let some result := (← get)[(⟨e⟩ : ExprStructEq)]? then
    if callDepth + result.depth > 256 then throw "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256"
    return result
  if (← get).size + callDepth ≥ 1000000 then throw "RESOURCE_BOUNDED_EXPRESSION_PREFLIGHT_UNIQUE_NODES_1000000"
  let jsonBytes (j : Json) := j.compress.utf8ByteSize
  let measure (own : String) (children : Array Expr := #[]) := do
    let parts ← children.mapM (fun child => measureExpression child (callDepth + 1))
    return addMeasure own.utf8ByteSize parts
  let result ← match e with
    | .bvar n => pure { bytes := (exprJson (.bvar n)).compress.utf8ByteSize, depth := 0 }
    | .fvar n => pure { bytes := (exprJson (.fvar n)).compress.utf8ByteSize, depth := 0 }
    | .mvar n => pure { bytes := (exprJson (.mvar n)).compress.utf8ByteSize, depth := 0 }
    | .sort l => pure { bytes := (exprJson (.sort l)).compress.utf8ByteSize, depth := 0 }
    | .const n ls => pure { bytes := (exprJson (.const n ls)).compress.utf8ByteSize, depth := 0 }
    | .app f a => measure "{\"argument\":,\"function\":,\"tag\":\"app\"}" #[a,f]
    | .lam n t b bi | .forallE n t b bi => do
      let parts ← #[b,t].mapM (fun child => measureExpression child (callDepth + 1))
      let own := "{\"binder_info\":,\"body\":,\"name\":,\"tag\":,\"type\":}"
      let fields := jsonBytes (binderJson bi) + jsonBytes (nameJson n) + jsonBytes (str (if e.isLambda then "lam" else "forall"))
      pure (addMeasure (own.utf8ByteSize + fields) parts)
    | .letE n t v b nd => do
      let parts ← #[b,t,v].mapM (fun child => measureExpression child (callDepth + 1))
      let own := "{\"body\":,\"name\":,\"non_dependent\":,\"tag\":\"let\",\"type\":,\"value\":}"
      pure (addMeasure (own.utf8ByteSize + jsonBytes (nameJson n) + jsonBytes (toJson nd)) parts)
    | .lit (.natVal n) => pure { bytes := (exprJson (.lit (.natVal n))).compress.utf8ByteSize, depth := 0 }
    | .lit (.strVal s) => pure { bytes := (exprJson (.lit (.strVal s))).compress.utf8ByteSize, depth := 0 }
    | .mdata m child => do
      let part ← measureExpression child (callDepth + 1)
      let entries := toJson (m.entries.map fun (k,v) => obj [("key", nameJson k), ("value", dataJson v)])
      pure (addMeasure ("{\"entries\":,\"expression\":,\"tag\":\"metadata\"}".utf8ByteSize + jsonBytes entries) #[part])
    | .proj n i child => do
      let part ← measureExpression child (callDepth + 1)
      pure (addMeasure ("{\"expression\":,\"index\":,\"name\":,\"tag\":\"projection\"}".utf8ByteSize + jsonBytes (nat i) + jsonBytes (nameJson n)) #[part])
  modify (·.insert (⟨e⟩ : ExprStructEq) result)
  return result

def artifactMeasure (e : Expr) : Except String ExpressionMeasure := do
  let (result, _) ← (measureExpression e).run {}
  if result.depth > 256 then throw "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256"
  let total := result.bytes + "{\"expression\":,\"format\":\"lean-expr-json-v1\",\"lean_version\":\"4.33.0\",\"schema_version\":1}\n".utf8ByteSize
  if total > expressionByteLimit then throw "RESOURCE_BOUNDED_EXPRESSION_BYTES_1_GIB"
  return { result with bytes := total }

-- @@AVAILABILITY@@
def artifactAvailable (dir : System.FilePath) (index : Nat) (suffix : String) (e : Expr) : IO (String × String) := do
  try
    let path ← artifact dir index suffix e
    return (path, "")
  catch error =>
    let reason := error.toString
    if reason == "RESOURCE_BOUNDED_EXPRESSION_BYTES_1_GIB" ||
        reason == "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256" ||
        reason == "RESOURCE_BOUNDED_EXPRESSION_PREFLIGHT_UNIQUE_NODES_1000000" then
      return ("", reason)
    throw error

def availabilityControls (dir : System.FilePath) : IO Unit := do
  IO.FS.createDirAll (dir / "artifacts")
  let t := Expr.sort .zero
  let left := Expr.lam `x t (.bvar 0) .default
  let right := Expr.lam `longerBinder t (.bvar 0) .implicit
  let check : StateT (ExprStructMap ExpressionMeasure) (Except String) Unit := do
    let a ← measureExpression left
    let b ← measureExpression right
    let metaA := Expr.mdata (KVMap.empty.setBool `flag true) left
    let metaB := Expr.mdata (KVMap.empty.setBool `flag false) left
    let ma ← measureExpression metaA
    let mb ← measureExpression metaB
    if ma.bytes != (exprJson metaA).compress.utf8ByteSize || mb.bytes != (exprJson metaB).compress.utf8ByteSize then
      throw "METADATA_STRUCTURAL_KEY_COLLISION"
    let letA := Expr.letE `x t left (.bvar 0) true
    let letB := Expr.letE `x t left (.bvar 0) false
    let la ← measureExpression letA
    let lb ← measureExpression letB
    if la.bytes != (exprJson letA).compress.utf8ByteSize || lb.bytes != (exprJson letB).compress.utf8ByteSize then
      throw "LET_FLAG_STRUCTURAL_KEY_COLLISION"
    if a.bytes != (exprJson left).compress.utf8ByteSize || b.bytes != (exprJson right).compress.utf8ByteSize then
      throw "STRUCTURAL_KEY_COLLISION"
  let _ ← IO.ofExcept (check.run {})
  let mut large := Expr.lit (.natVal 1)
  for _ in [:28] do large := .app large large
  let (path, reason) ← artifactAvailable dir 0 "body" large
  if !path.isEmpty || reason != "RESOURCE_BOUNDED_EXPRESSION_BYTES_1_GIB" then
    throw <| IO.userError "LARGE_EXPRESSION_WRONGLY_AVAILABLE"
  if ← (dir / "artifacts/0-body.json").pathExists then
    throw <| IO.userError "PREFLIGHT_CREATED_A_TRUNCATED_ARTIFACT"
  let (path, reason) ← artifactAvailable dir 1 "body" left
  if path.isEmpty || !reason.isEmpty then throw <| IO.userError "LATER_ARTIFACT_NOT_OBSERVED"
  if (← IO.FS.readFile (dir / path)).utf8ByteSize != (← IO.ofExcept (artifactMeasure left)).bytes then
    throw <| IO.userError "ARTIFACT_SIZE_MISMATCH"
  let mut deep := t
  for _ in [:257] do deep := .app deep t
  let (path, reason) ← artifactAvailable dir 2 "type" deep
  if !path.isEmpty || reason != "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256" then
    throw <| IO.userError "DEEP_EXPRESSION_WRONGLY_AVAILABLE"
  IO.println "EXPRESSION_AVAILABILITY_CONTROLS_PASSED"

