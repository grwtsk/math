# compileToSimpleGroundExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35c029f1def4beeec0060524db75611e71526c8bd8885b7e919834cce83a8a2b",
  "kind": "def",
  "lexical_name": "compileToSimpleGroundExpr",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "compiletosimplegroundexpr--3650cd733cee49a51f75ccea",
  "source": {
    "blob": "c73f72919ec72d9f71678c83fa074470aaf6cd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3650cd733cee49a51f75cceae256ad3d3a69a1d3d34f01c13f847f3004ec6866",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35c029f1def4beeec0060524db75611e71526c8bd8885b7e919834cce83a8a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compileToSimpleGroundExpr (code : Code .impure) : CompilerM (Option SimpleGroundExpr) :=
  go code |>.run' {} |>.run
where
  go (code : Code .impure) : DetectM SimpleGroundExpr := do
    match code with
    | .let decl (.return fvarId) | .let decl (.inc _ _ _ true  (.return fvarId)) =>
      guard <| decl.fvarId == fvarId
      compileFinalLet decl.value
    | .let decl k => compileNonFinalLet decl k
    | .inc (persistent := true) (k := k) .. => go k
    | _ => failure

  @[inline]
  record (id : FVarId) (val : SimpleGroundValue) : DetectM Unit :=
    modify fun s => { s with groundMap := s.groundMap.insert id val }

  compileNonFinalLet (decl : LetDecl .impure) (k : Code .impure) : DetectM SimpleGroundExpr := do
    match decl.value with
    | .fap c #[] =>
      guard <| isSimpleGroundDecl (← getEnv) c
      record decl.fvarId (.arg (.reference c))
      go k
    | .lit v =>
      match v with
      | .nat v =>
        match decl.type with
        | ImpureType.tagged =>
          guard <| v < 2^31
          record decl.fvarId (.arg (.tagged v))
        | _ => failure
      | .uint8 v => record decl.fvarId (.uint8 v)
      | .uint16 v => record decl.fvarId (.uint16 v)
      | .uint32 v => record decl.fvarId (.uint32 v)
      | .uint64 v => record decl.fvarId (.uint64 v)
      | .usize v => record decl.fvarId (.usize v)
      | .str .. => failure
      go k
    | .ctor i objArgs =>
      if i.isScalar then
        record decl.fvarId (.arg (.tagged i.cidx))
        go k
      else
        let objArgs ← compileArgs objArgs
        let usizeArgs := Array.replicate i.usize 0
        -- Align to 8 bytes for alignment with lean_object*
        let align (v a : Nat) : Nat :=
          (v / a) * a + a * (if v % a != 0 then 1 else 0)
        let alignedSsize := align i.ssize 8
        let ssizeArgs := Array.replicate alignedSsize 0
        compileSetChain decl.fvarId i objArgs usizeArgs ssizeArgs k
    | .box _ fvarId =>
      match (← get).groundMap[fvarId]! with
      | .uint8 v =>
        record decl.fvarId (.arg (.tagged v.toNat))
        go k
      | .uint16 v =>
        record decl.fvarId (.arg (.tagged v.toNat))
        go k
      -- boxed uint32/uint64 get extracted into separate closed terms automatically
      | _ => failure
    | .fap ``Array.mkEmpty #[.erased, .fvar sizeId]
    | .fap ``Array.emptyWithCapacity #[.erased, .fvar sizeId] =>
      let .arg (.tagged size) := (← get).groundMap[sizeId]! | failure
      record decl.fvarId (.arrayBuilder [] size)
      go k
    | .fap ``Array.push #[.erased, .fvar arrId, .fvar elemId] =>
      let .arrayBuilder elems remainingCapacity := (← get).groundMap[arrId]! | failure
      let .arg elemArg := (← get).groundMap[elemId]! | failure
      record decl.fvarId (.arrayBuilder (elemArg :: elems) (remainingCapacity - 1))
      go k
    | _ => failure

  compileSetChain (id : FVarId) (info : CtorInfo) (objArgs : Array SimpleGroundArg)
      (usizeArgs : Array UInt64) (scalarArgs : Array UInt8) (code : Code .impure) :
      DetectM SimpleGroundExpr := do
    match code with
    | .return fvarId =>
      guard <| id == fvarId
      return .ctor info.cidx objArgs usizeArgs scalarArgs
    | .sset id' i offset y _ k =>
      guard <| id == id'
      let i := i - objArgs.size - usizeArgs.size
      let offset := i * 8 + offset
      let scalarArgs ←
        match (← get).groundMap[y]! with
        | .uint8 v =>
          let scalarArgs := scalarArgs.set! offset v
          pure scalarArgs
        | .uint16 v =>
          let scalarArgs := scalarArgs.set! offset v.toUInt8
          let scalarArgs := scalarArgs.set! (offset + 1) (v >>> 0x08).toUInt8
          pure scalarArgs
        | .uint32 v =>
          let scalarArgs := scalarArgs.set! offset v.toUInt8
          let scalarArgs := scalarArgs.set! (offset + 1) (v >>> 0x08).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 2) (v >>> 0x10).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 3) (v >>> 0x18).toUInt8
          pure scalarArgs
        | .uint64 v =>
          let scalarArgs := scalarArgs.set! offset v.toUInt8
          let scalarArgs := scalarArgs.set! (offset + 1) (v >>> 0x08).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 2) (v >>> 0x10).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 3) (v >>> 0x18).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 4) (v >>> 0x20).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 5) (v >>> 0x28).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 6) (v >>> 0x30).toUInt8
          let scalarArgs := scalarArgs.set! (offset + 7) (v >>> 0x38).toUInt8
          pure scalarArgs
        | _ => failure
      compileSetChain id info objArgs usizeArgs scalarArgs k
    | .uset id' i y k =>
      guard <| id == id'
      let i := i - objArgs.size
      let .usize v := (← get).groundMap[y]! | failure
      let usizeArgs := usizeArgs.set! i v
      compileSetChain id info objArgs usizeArgs scalarArgs k
    | _ => failure

  compileFinalLet (e : LetValue .impure) : DetectM SimpleGroundExpr := do
    match e with
    | .lit v =>
      match v with
      | .str v => return .string v
      | _ => failure
    | .ctor i args =>
      guard <| i.usize == 0 && i.ssize == 0 && !args.isEmpty
      return .ctor i.cidx (← compileArgs args) #[] #[]
    | .fap ``Name.num._override args =>
      let pre ← compileArg args[0]!
      let .tagged i ← compileArg args[1]! | failure
      let name := Name.num (← interpNameLiteral pre) i
      let hash := name.hash
      return .ctor 2 #[pre, .tagged i] #[] (uint64ToByteArrayLE hash)
    | .fap ``Name.str._override args =>
      let pre ← compileArg args[0]!
      let (ref, str) ← compileStrArg args[1]!
      let name := Name.str (← interpNameLiteral pre) str
      let hash := name.hash
      return .ctor 1 #[pre, .reference ref] #[] (uint64ToByteArrayLE hash)
    | .fap ``Name.mkStr1 args
    | .fap ``Name.mkStr2 args
    | .fap ``Name.mkStr3 args
    | .fap ``Name.mkStr4 args
    | .fap ``Name.mkStr5 args
    | .fap ``Name.mkStr6 args
    | .fap ``Name.mkStr7 args
    | .fap ``Name.mkStr8 args =>
      let mut nameAcc := Name.anonymous
      let mut processedArgs := Array.emptyWithCapacity args.size
      for arg in args do
        let (ref, str) ← compileStrArg arg
        nameAcc := .str nameAcc str
        processedArgs := processedArgs.push (ref, nameAcc.hash)
      return .nameMkStr processedArgs
    | .fap ``Array.mkEmpty #[.erased, .fvar sizeId]
    | .fap ``Array.emptyWithCapacity #[.erased, .fvar sizeId] =>
      let .arg (.tagged 0) := (← get).groundMap[sizeId]! | failure
      return .array #[]
    | .fap ``ByteArray.mk #[.fvar argId] =>
      match (← get).groundMap[argId]! with
      | .arrayBuilder elems 0 =>
        let bytes ← elems.mapM fun elem => do
          let .tagged v := elem | failure
          return v.toUInt8
        return .byteArray bytes.toArray.reverse
      | .arg (.reference ref) =>
        let some (.array elems) := getSimpleGroundExprWithResolvedRefs (← getEnv) ref | failure
        let bytes ← elems.mapM fun elem => do
          let .tagged v := elem | failure
          return v.toUInt8
        return .byteArray bytes
      | _ => failure
    | .fap ``Array.push #[.erased, .fvar arrId, .fvar elemId] =>
      let .arrayBuilder elems remainingCapacity := (← get).groundMap[arrId]! | failure
      if remainingCapacity > 1 then failure
      let .arg elemArg := (← get).groundMap[elemId]! | failure
      return .array (elemArg :: elems).toArray.reverse
    | .fap c #[] =>
      guard <| isSimpleGroundDecl (← getEnv) c
      return .reference c
    | .box _ fvarId =>
      match (← get).groundMap[fvarId]! with
      | .uint32 _ => failure -- TODO: figure out how to do this properly with 32/64bit restrictions
      | .uint64 v => return .ctor 0 #[] #[] (uint64ToByteArrayLE v)
      | .usize v => return .ctor 0 #[] #[v] #[]
      | .uint8 _ | .uint16 _ -- boxed uint8/uint16 should never be final expressions
      | _ => failure
    | .pap c ys => return .pap c (← compileArgs ys)
    | _ => failure

  compileArg (arg : Arg .impure) : DetectM SimpleGroundArg := do
    match arg with
    | .fvar fvarId =>
      let .arg arg := (← get).groundMap[fvarId]! | failure
      return arg
    | .erased => return .tagged 0

  compileArgs (args : Array (Arg .impure)) : DetectM (Array SimpleGroundArg) := do
    args.mapM compileArg

  compileStrArg (arg : Arg .impure) : DetectM (Name × String) := do
    let .fvar fvarId := arg | failure
    let (.arg (.reference ref)) := (← get).groundMap[fvarId]! | failure
    let some (.string val) := getSimpleGroundExprWithResolvedRefs (← getEnv) ref | failure
    return (ref, val)

  interpStringLiteral (arg : SimpleGroundArg) : DetectM String := do
    let .reference ref := arg | failure
    let some (.string val) := getSimpleGroundExprWithResolvedRefs (← getEnv) ref | failure
    return val

  interpNameLiteral (arg : SimpleGroundArg) : DetectM Name := do
    match arg with
    | .tagged 0 => return .anonymous
    | .reference ref =>
      match getSimpleGroundExprWithResolvedRefs (← getEnv) ref with
      | some (.ctor 1 #[pre, .reference ref] _ _) =>
        let pre ← interpNameLiteral pre
        let str ← interpStringLiteral (.reference ref)
        return .str pre str
      | some (.ctor 2 #[pre, .tagged i] _ _) =>
        let pre ← interpNameLiteral pre
        return .num pre i
      | some (.nameMkStr args) =>
        args.foldlM (init := .anonymous) fun acc (ref, _) => do
          let part ← interpStringLiteral (.reference ref)
          return .str acc part
      | _ => failure
    | _ => failure


/--
Detect whether `d` can be compiled to a `SimpleGroundExpr`. If it can record the associated
`SimpleGroundExpr` into the environment for later processing by code emission.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73f72919ec72d9f71678c83fa074470aaf6cd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
