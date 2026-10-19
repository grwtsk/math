import Lake
import Lake.Load.Workspace

/-! Standalone elaborated-environment exporter. Never imported by FormalResearch.
The versioned declaration projection is specified in
docs/state/lean-declaration-fingerprint-v1.md. -/

open Lean

namespace StateExporter

def obj := Json.mkObj
def arr := Json.arr
def str := Json.str
def num (n : Nat) : Json := toJson n

def nameJson : Name → Json
  | .anonymous => arr #[str "anonymous"]
  | .str p s => arr #[str "str", nameJson p, str s]
  | .num p n => arr #[str "num", nameJson p, num n]

def binderJson : BinderInfo → Json
  | .default => str "default"
  | .implicit => str "implicit"
  | .strictImplicit => str "strictImplicit"
  | .instImplicit => str "instImplicit"

def levelJson (params : List Name) : Level → Except String Json
  | .zero => pure <| arr #[str "zero"]
  | .succ l => return arr #[str "succ", ← levelJson params l]
  | .max a b => return arr #[str "max", ← levelJson params a, ← levelJson params b]
  | .imax a b => return arr #[str "imax", ← levelJson params a, ← levelJson params b]
  | .param n => do
    let some (_, i) := params.zipIdx.find? (fun p => p.1 == n)
      | throw "undeclared universe parameter"
    return arr #[str "param", num i]
  | .mvar _ => throw "unresolved universe metavariable"

structure Dag where
  seen : Std.HashMap ExprStructEq Nat := {}
  canonical : Std.HashMap String Nat := {}
  nodes : Array Json := #[]

def dagLevel (params : List Name) (l : Level) : StateT Dag (Except String) Json :=
  match levelJson params l with | .ok j => pure j | .error e => throw e

partial def encode (params : List Name) (e : Expr) : StateT Dag (Except String) Nat := do
  let key : ExprStructEq := ⟨e⟩
  if let some i := (← get).seen[key]? then return i
  if let .mdata _ body := e then return ← encode params body
  let j : Json ← match e with
    | .bvar n => pure <| arr #[str "bvar", num n]
    | .fvar _ => throw "free expression variable"
    | .mvar _ => throw "expression metavariable"
    | .sort l => do pure <| arr #[str "sort", ← dagLevel params l]
    | .const n ls => do pure <| arr #[str "const", nameJson n, arr (← ls.toArray.mapM (dagLevel params))]
    | .app f a => do pure <| arr #[str "app", num (← encode params f), num (← encode params a)]
    | .lam _ t b bi => do pure <| arr #[str "lam", num (← encode params t), num (← encode params b), binderJson bi]
    | .forallE _ t b bi => do pure <| arr #[str "forallE", num (← encode params t), num (← encode params b), binderJson bi]
    | .letE _ t v b nd => do pure <| arr #[str "letE", num (← encode params t), num (← encode params v), num (← encode params b), toJson nd]
    | .lit (.natVal n) => pure <| arr #[str "natVal", str (toString n)]
    | .lit (.strVal s) => pure <| arr #[str "strVal", str s]
    | .proj n i b => do pure <| arr #[str "proj", nameJson n, num i, num (← encode params b)]
    | .mdata _ _ => throw "unreachable metadata branch"
  let state ← get
  if let some i := state.canonical[j.compress]? then
    modify fun s => {s with seen := s.seen.insert key i}
    return i
  if state.nodes.size ≥ 2000000 then throw "expression node resource bound exceeded"
  let i := state.nodes.size
  set ({seen := state.seen.insert key i, canonical := state.canonical.insert j.compress i, nodes := state.nodes.push j} : Dag)
  return i

def expression (params : List Name) (e : Expr) : Except String Json := do
  if e.hasLooseBVars then throw "loose bound expression variable"
  let (root, state) ← (encode params e).run {}
  return obj [("root", num root), ("nodes", arr state.nodes)]

def names (ns : List Name) := arr (ns.toArray.map nameJson)

def metadata (ci : ConstantInfo) : Except String (String × Json × Json) := do
  let expr := expression ci.levelParams
  match ci with
  | .axiomInfo v => return ("axiom", Json.null, obj [("is_unsafe", toJson v.isUnsafe)])
  | .defnInfo v =>
    let safety := match v.safety with | .safe => "safe" | .unsafe => "unsafe" | .partial => "partial"
    let hints := match v.hints with
      | .opaque => arr #[str "opaque"]
      | .abbrev => arr #[str "abbrev"]
      | .regular h => arr #[str "regular", num h.toNat]
    return ("definition", ← expr v.value, obj [("safety", str safety), ("reducibility_hints", hints), ("all", names v.all)])
  | .thmInfo _ => return ("theorem", Json.null, obj [])
  | .opaqueInfo v => return ("opaque", ← expr v.value, obj [("is_unsafe", toJson v.isUnsafe), ("all", names v.all)])
  | .quotInfo v =>
    let kind := match v.kind with | .type => "type" | .ctor => "ctor" | .lift => "lift" | .ind => "ind"
    return ("quotient", Json.null, obj [("quot_kind", str kind)])
  | .inductInfo v => return ("inductive", Json.null, obj [
      ("num_params", num v.numParams), ("num_indices", num v.numIndices), ("all", names v.all),
      ("constructors", names v.ctors), ("num_nested", num v.numNested), ("is_recursive", toJson v.isRec),
      ("is_unsafe", toJson v.isUnsafe), ("is_reflexive", toJson v.isReflexive)])
  | .ctorInfo v => return ("constructor", Json.null, obj [("inductive", nameJson v.induct),
      ("constructor_index", num v.cidx), ("num_params", num v.numParams),
      ("num_fields", num v.numFields), ("is_unsafe", toJson v.isUnsafe)])
  | .recInfo v =>
    let rules ← v.rules.toArray.mapM fun r => do
      return obj [("constructor", nameJson r.ctor), ("num_fields", num r.nfields), ("rhs", ← expr r.rhs)]
    return ("recursor", Json.null, obj [("all", names v.all), ("num_params", num v.numParams),
      ("num_indices", num v.numIndices), ("num_motives", num v.numMotives), ("num_minors", num v.numMinors),
      ("rules", arr rules), ("k", toJson v.k), ("is_unsafe", toJson v.isUnsafe)])

def liftExcept (x : Except String α) : CoreM α :=
  match x with | .ok a => pure a | .error e => throwError "{e}"

def kernelKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def owned (roots : List Name) (moduleName : Name) : Bool :=
  roots.any (·.isPrefixOf moduleName)

def inventory (root : Name) (ownershipRoots : List Name) (dependencyProjections : Bool)
    (includeEvidence : Bool := false) (requested : List String := []) : CoreM Json := do
  let env ← getEnv
  let mut selected : Array (Name × ConstantInfo × Name) := #[]
  let mut displayed : Std.HashSet String := {}
  for (n, ci) in env.constants.toList do
    let some index := env.getModuleIdxFor? n
      | throwError "constant has no defining module: {n}"
    let some owner := env.header.moduleNames[index.toNat]?
      | throwError "constant has invalid defining-module index: {n}"
    if displayed.contains n.toString then throwError "ambiguous exact declaration display: {n}"
    displayed := displayed.insert n.toString
    if requested.isEmpty || requested.contains n.toString then
      selected := selected.push (n, ci, owner)
  unless requested.isEmpty || selected.size == requested.length do
    throwError "requested declaration is missing or repeated"
  let rows ← (selected.qsort fun a b => a.1.toString < b.1.toString).mapM fun (n, ci, owner) => do
    let isOwned := owned ownershipRoots owner
    let detailed := isOwned || dependencyProjections
    let projection ← if detailed then do
        let type ← liftExcept (expression ci.levelParams ci.type)
        let (kind, value, details) ← liftExcept (metadata ci)
        pure <| obj [("schema_version", num 1), ("kind", str kind),
          ("name", nameJson n), ("universe_arity", num ci.levelParams.length),
          ("type", type), ("value", value), ("metadata", details)]
      else pure Json.null
    let isProposition ← if detailed then do
        pure <| toJson (← Meta.MetaM.run' <| Meta.isProp ci.type)
      else pure Json.null
    let proof ← if detailed then match ci with
      | .thmInfo v => liftExcept (expression ci.levelParams v.value)
      | _ => pure Json.null
      else pure Json.null
    let evidence ← if includeEvidence && detailed then do
        let axioms ← collectAxioms n
        pure <| obj [("universe_parameters", names ci.levelParams),
          ("axiom_dependencies", arr ((axioms.qsort Name.lt).map fun ax =>
            obj [("name", str ax.toString), ("name_parts", nameJson ax)]))]
      else pure Json.null
    pure <| obj [("name", str n.toString), ("name_parts", nameJson n),
      ("module", str owner.toString), ("module_parts", nameJson owner),
      ("ownership", str (if isOwned then "owned" else "dependency")),
      ("kind", str (kernelKind ci)), ("projection", projection), ("theorem_proof", proof),
      ("type_is_proposition", isProposition),
      ("evidence", evidence),
      ("annotations", obj [("class", toJson (isClass env n)),
        ("structure", toJson (isStructure env n)), ("instance", toJson (Meta.isInstanceCore env n))])]
  let modules ← env.header.moduleNames.mapM fun n => do
    let fields := [("name", str n.toString), ("name_parts", nameJson n),
      ("ownership", str (if owned ownershipRoots n then "owned" else "dependency"))]
    if includeEvidence then
      let path ← findOLean n
      pure <| obj (fields ++ [("olean_path", str path.toString)])
    else pure <| obj fields
  pure <| obj [("schema_version", num 1), ("exporter", str "lean-environment-export-v1"),
    ("root_module", str root.toString), ("ownership_roots", arr (ownershipRoots.toArray.map (str ∘ Name.toString))),
    ("dependency_projections", toJson dependencyProjections),
    ("modules", arr modules), ("declarations", arr rows)]

def expressionReferences (expression : Expr) : NameSet := Id.run do
  let mut pending := [expression]
  let mut seen : Std.HashSet ExprStructEq := {}
  let mut result : NameSet := {}
  while !pending.isEmpty do
    let current := pending.head!
    pending := pending.tail!
    if seen.contains ⟨current⟩ then continue
    seen := seen.insert ⟨current⟩
    match current with
    | .const name _ => result := result.insert name
    | .proj name _ body => result := result.insert name; pending := body :: pending
    | .app fn arg => pending := fn :: arg :: pending
    | .lam _ type body _ | .forallE _ type body _ => pending := type :: body :: pending
    | .letE _ type value body _ => pending := type :: value :: body :: pending
    | .mdata _ body => pending := body :: pending
    | _ => pure ()
  return result

def declarationReferences (ci : ConstantInfo) : NameSet := Id.run do
  let mut result := expressionReferences ci.type
  if let some value := ci.value? (allowOpaque := true) then
    result := result ++ expressionReferences value
  match ci with
  | .inductInfo value => result := result ++ .ofList (value.all ++ value.ctors)
  | .ctorInfo value => result := result.insert value.induct
  | .recInfo value =>
    result := result ++ .ofList value.all
    for rule in value.rules do result := result ++ expressionReferences rule.rhs
  | _ => pure ()
  return result

def reachableDependencies (roots : List Name) : CoreM NameSet := do
  let env ← getEnv
  let mut pending := roots
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let current := pending.head!
    pending := pending.tail!
    if visited.contains current then continue
    visited := visited.insert current
    let some ci := env.find? current | throwError "unresolved kernel dependency: {current}"
    pending := (declarationReferences ci).toList ++ pending
  return visited

def ownedKernelAudit (ownershipRoots : List Name) : CoreM Json := do
  let env ← getEnv
  let mut roots := []
  for (name, _) in env.constants.toList do
    let some index := env.getModuleIdxFor? name | throwError "missing declaration owner"
    if owned ownershipRoots env.header.moduleNames[index.toNat]! then roots := name :: roots
  let visited ← reachableDependencies roots
  let axioms := (visited.toArray.filter fun name => (env.find? name).any (·.isAxiom)).qsort Name.lt
  pure <| obj [("owned_roots", num roots.length), ("reachable_constants", num visited.size),
    ("axioms", arr (axioms.map fun name => obj [("name", str name.toString), ("name_parts", nameJson name)])),
    ("semantics", str "actual-kernel-type-value-projection-and-inductive-dependency-walk-v1")]

def dependencyClosure (ownershipRoots : List Name) (displayName : String) : CoreM Json := do
  let env ← getEnv
  let candidates := env.constants.toList.filter fun (name, _) => name.toString == displayName
  let [(root, _)] := candidates | throwError "missing or ambiguous declaration"
  let visited ← reachableDependencies [root]
  let describe (name : Name) : CoreM Json := do
    let some ci := env.find? name | throwError "missing dependency"
    let some index := env.getModuleIdxFor? name | throwError "missing dependency owner"
    let owner := env.header.moduleNames[index.toNat]!
    pure <| obj [("name", str name.toString), ("name_parts", nameJson name),
      ("kind", str (kernelKind ci)), ("module", str owner.toString),
      ("ownership", str (if owned ownershipRoots owner then "owned" else "dependency"))]
  let allNames := visited.toArray.qsort fun a b => a.toString < b.toString
  let axioms := allNames.filter fun name => (env.find? name).any (fun ci => ci.isAxiom)
  pure <| obj [("root", nameJson root), ("dependencies", arr (← (allNames.filter (· != root)).mapM describe)),
    ("axioms", arr (← axioms.mapM describe)),
    ("semantics", str "transitive-type-value-projection-and-inductive-kernel-dependencies-v1")]

def astFixtures : Except String Json := do
  let explicit := Expr.lam `x (.sort .zero) (.bvar 0) .default
  let alpha := Expr.lam `renamed (.sort .zero) (.bvar 0) .default
  let implicit := Expr.lam `x (.sort .zero) (.bvar 0) .implicit
  let forallExplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let forallImplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let errorOf (e : Expr) := match expression [] e with
    | .error message => str message
    | .ok _ => str "ERROR: unsafe expression was accepted"
  let universeA ← expression [`u] (.sort (.succ (.param `u)))
  let universeB ← expression [`v] (.sort (.succ (.param `v)))
  let layout := Expr.letE `local (.const `Nat []) (.lit (.natVal 9007199254740993))
    (.app (.const `Nat.succ []) (.bvar 0)) true
  return obj [("schema_version", num 1), ("descriptor", str "formal-research-lean-ast-fixtures-v1"),
    ("binder_explicit", ← expression [] explicit), ("binder_alpha", ← expression [] alpha),
    ("metadata_omitted", ← expression [] (.mdata {} explicit)),
    ("binder_implicit", ← expression [] implicit), ("binder_pair", ← expression [] (.app explicit implicit)),
    ("forall_pair", ← expression [] (.app forallExplicit forallImplicit)),
    ("universe_a", universeA), ("universe_b", universeB),
    ("level_constructors", ← expression [`u] (.const (.num `Fixture 42)
      [.zero, .succ .zero, .max .zero (.param `u), .imax (.param `u) .zero])),
    ("let_literal", ← expression [] layout),
    ("projection_string", ← expression [] (.proj `Prod 1 (.lit (.strVal "λé é\n")))),
    ("free_variable", errorOf (.fvar ⟨`free⟩)),
    ("metavariable", errorOf (.mvar ⟨`unknown⟩)),
    ("loose_bound_variable", errorOf (.bvar 0)),
    ("undeclared_universe", errorOf (.sort (.param `unknown))),
    ("universe_metavariable", errorOf (.sort (.mvar ⟨`unknown⟩)))]

end StateExporter

unsafe def main (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  if args == ["package-identity"] then
    let lean ← Lake.LeanInstall.get (← findSysroot)
    let lakeEnv ← (Lake.Env.compute (Lake.LakeInstall.ofLean lean) lean none (some true)).toIO IO.userError
    let config : Lake.LoadConfig := {lakeEnv, wsDir := ← IO.currentDir}
    let some workspace ← (Lake.loadWorkspaceRoot config).toBaseIO
      | throw <| IO.userError "could not evaluate actual Lake root package"
    let package := workspace.root
    (← IO.getStdout).putStrLn (Json.mkObj [("name", toJson package.origName.toString),
      ("scope", if package.scope.isEmpty then Json.null else toJson package.scope)]).compress
    return 0
  if args == ["ast-fixtures"] then
    let fixtures ← IO.ofExcept StateExporter.astFixtures
    (← IO.getStdout).putStrLn fixtures.compress
    return 0
  let dependencyQuery := args.length == 4 && args[0]! == "dependency-closure"
  unless dependencyQuery || args.length == 3 || (args.length >= 4 && args[3]! == "evidence") do
    throw <| IO.userError "usage: LeanExporter.lean ROOT_MODULE OWNERSHIP_ROOTS_JSON owned|all [evidence]"
  unless dependencyQuery || args[2]! == "owned" || args[2]! == "all" do
    throw <| IO.userError "projection mode must be owned or all"
  enableInitializersExecution
  let root := (if dependencyQuery then args[1]! else args[0]!).toName
  let rootsJson ← IO.ofExcept (Json.parse (if dependencyQuery then args[2]! else args[1]!))
  let rootStrings : Array String ← IO.ofExcept (fromJson? rootsJson)
  let ownershipRoots := rootStrings.toList.map String.toName
  if ownershipRoots.isEmpty || ownershipRoots.any Name.isAnonymous then
    throw <| IO.userError "ownership roots must be an explicit nonempty list of Lean module names"
  let env ← importModules #[{module := root, importAll := true}] {}
    (trustLevel := 0) (loadExts := true) (level := .private)
  let env := env.setExporting false
  let options := ({} : Options) |>.set `maxRecDepth (16384 : Nat) |>.set `maxHeartbeats (0 : Nat)
  let context : Core.Context := {fileName := "state-exporter", fileMap := default, options}
  let action := if dependencyQuery then StateExporter.dependencyClosure ownershipRoots args[3]!
    else do
      let result ← StateExporter.inventory root ownershipRoots (args[2]! == "all")
        (args.length >= 4) (args.drop 4)
      if args.length == 4 then
        return result.setObjVal! "owned_kernel_audit" (← StateExporter.ownedKernelAudit ownershipRoots)
      else return result
  let (result, _) ← action.toIO context {env}
  (← IO.getStdout).putStrLn result.compress
  return 0
