# dumpConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1157f70304c6291ab6799855a41a3499e1730f9f88e7c4eeb294a19eccdd39aa",
  "kind": "def",
  "lexical_name": "dumpConstant",
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
  "slug": "dumpconstant--af7600747bc902e4f89755e5",
  "source": {
    "blob": "cda19933d5d21d78655034ffa695fd1d42b176ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af7600747bc902e4f89755e546b89bcbe29266dea75a188e8f978c8c3076720c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1157f70304c6291ab6799855a41a3499e1730f9f88e7c4eeb294a19eccdd39aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def dumpConstant (c : Name) : M Unit := do
  let some declar := (← read).env.find? c
    | if (← get).ignoreMissing then return else panic! s!"Constant {c} not found in environment."
  if ((declar.isUnsafe || declar.isPartial) && !(← get).exportUnsafe) || (← get).visitedConstants.contains c then
    return
  modify fun st => { st with visitedConstants := st.visitedConstants.insert c }
  match declar with
  | .axiomInfo val => do
    dumpDeps val.type
    dumpObj [
      ("axiom", Json.mkObj [
        ("name", ← dumpName val.name),
        ("levelParams", ← dumpUparams val.levelParams),
        ("type", ← dumpExpr val.type),
        ("isUnsafe", val.isUnsafe)
      ])
    ]
  | .defnInfo val => do
    dumpDeps val.type
    dumpDeps val.value
    dumpObj [
      ("def", Json.mkObj [
        ("name", ← dumpName val.name),
        ("levelParams", ← dumpUparams val.levelParams),
        ("type", ← dumpExpr val.type),
        ("value", ← dumpExpr val.value),
        ("hints", val.hints.toJson),
        ("safety", val.safety.toJson),
        ("all", ← dumpNames val.all)
      ])
    ]
  | .opaqueInfo val => do
    dumpDeps val.type
    dumpDeps val.value
    dumpObj [
      ("opaque", Json.mkObj [
        ("name", ← dumpName val.name),
        ("levelParams", ← dumpUparams val.levelParams),
        ("type", ← dumpExpr val.type),
        ("value", ← dumpExpr val.value),
        ("all", ← dumpNames val.all),
        ("isUnsafe", val.isUnsafe)
      ])
    ]
  | .thmInfo val => do
    dumpDeps val.type
    dumpDeps val.value
    dumpObj [
      ("thm", Json.mkObj [
        ("name", ← dumpName val.name),
        ("levelParams", ← dumpUparams val.levelParams),
        ("type", ← dumpExpr val.type),
        ("value", ← dumpExpr val.value),
        ("all", ← dumpNames val.all)
      ])
    ]
  | .quotInfo _ =>
    -- Always dump full Quot package in the sensible order
    dumpConstant ``Eq
    for c in [`Quot, ``Quot.mk, ``Quot.lift, ``Quot.ind] do
      let some (.quotInfo val) := (← read).env.find? c
        | if (← get).ignoreMissing then return else panic! s!"Constant {c} not found in environment."
      modify fun st => { st with visitedConstants := st.visitedConstants.insert c }
      dumpObj [
        ("quot", .mkObj [
          ("name", ← dumpName val.name),
          ("levelParams", ← dumpUparams val.levelParams),
          ("type", ← dumpExpr val.type),
          ("kind", val.kind.toJson)
        ])
      ]
  | .inductInfo baseIndVal => do
    let mut indVals := #[]
    let mut ctorVals := #[]
    let mut recursorNames := NameSet.empty
    for indName in baseIndVal.all do
      let val := ((← read).env.find? indName |>.get!).inductiveVal!
      assert! ((!val.isUnsafe) || (← get).exportUnsafe)
      indVals := indVals.push val
      for ctor in val.ctors do
        match ((← read).env.find? ctor |>.get!) with
        | .ctorInfo ctorVal =>
          assert! ((!ctorVal.isUnsafe) || (← get).exportUnsafe)
          ctorVals := ctorVals.push ctorVal
        | _ => panic! "Expected a `ConstantInfo.ctorInfo`."
      modify fun st => { st with visitedConstants:= st.visitedConstants.insert indName }
      dumpDeps val.type
      if let .some names := (← get).recursorMap.get? baseIndVal.name
      then recursorNames := recursorNames.union names
      else assert! ctorVals.size == 0

    /- We dump the constructor dependencies (which will not include the inductives in this block since we've
    added the names to `visitedConstants`) before actually outputting anything in this inductive block to
    ensure e.g. the `LT` in `Fin.mk` is dumped before this inductive block appears in the export file. -/
    for ctorVal in ctorVals do
      modify fun st => { st with visitedConstants:= st.visitedConstants.insert ctorVal.name }
      dumpDeps ctorVal.type

    let mut recursorVals := #[]
    for recursorName in recursorNames do
      match ((← read).env.find? recursorName |>.get!) with
      | .recInfo recVal =>
        assert! ((!recVal.isUnsafe) || (← get).exportUnsafe)
        recursorVals := recursorVals.push recVal
      | _ => panic! "expected a `constantinfo.recinfo`."
    for recursorVal in recursorVals do
      modify fun st => { st with visitedConstants:= st.visitedConstants.insert recursorVal.name }
      dumpDeps recursorVal.type

    /- We only dump these after we've already dumped the `recursorVal` type and added the name
    to `visitedConstants` so that `dumpDeps` does not retry dumping the appearance of `Foo.rec` -/
    for recursorVal in recursorVals do
      for rule in recursorVal.rules do
        dumpDeps rule.rhs

    let inductiveValsJson ← indVals.mapM <| fun indVal => do
      pure <| Json.mkObj [
          ("name", ← dumpName indVal.name),
          ("levelParams", ← dumpUparams indVal.levelParams),
          ("type", ← dumpExpr indVal.type),
          ("numParams", indVal.numParams),
          ("numIndices", indVal.numIndices),
          ("all", ← dumpNames indVal.all),
          ("ctors", ← dumpNames indVal.ctors),
          ("numNested", indVal.numNested),
          ("isRec", indVal.isRec),
          ("isReflexive", indVal.isReflexive),
          ("isUnsafe", indVal.isUnsafe),
      ]
    let ctorValsJson ← ctorVals.mapM <| fun ctorVal => do
      pure <| Json.mkObj [
          ("name", ← dumpName ctorVal.name),
          ("levelParams", ← dumpUparams ctorVal.levelParams),
          ("type", ← dumpExpr ctorVal.type),
          ("induct", ← dumpName ctorVal.induct),
          ("cidx", ctorVal.cidx),
          ("numParams", ctorVal.numParams),
          ("numFields", ctorVal.numFields),
          ("isUnsafe", ctorVal.isUnsafe)
      ]
    let recursorValsJson ← recursorVals.mapM <| fun recursorVal => do
      pure <| Json.mkObj [
          ("name", ← dumpName recursorVal.name),
          ("levelParams", ← dumpUparams recursorVal.levelParams),
          ("type", ← dumpExpr recursorVal.type),
          ("all", ← dumpNames recursorVal.all),
          ("numParams", recursorVal.numParams),
          ("numIndices", recursorVal.numIndices),
          ("numMotives", recursorVal.numMotives),
          ("numMinors", recursorVal.numMinors),
          ("rules", (← recursorVal.rules.mapM dumpRecRule).toJson),
          ("k", recursorVal.k),
          ("isUnsafe", recursorVal.isUnsafe),
      ]
    dumpObj [
      ("inductive", Json.mkObj [
        ("types", inductiveValsJson.toJson),
        ("ctors", ctorValsJson.toJson),
        ("recs", recursorValsJson.toJson),
      ])
    ]
  | .ctorInfo val => dumpConstant val.induct
  | .recInfo val =>
    for indName in val.all do
      dumpConstant indName
where
  dumpDeps e := do
    for c in e.getUsedConstants do
      dumpConstant c
  /- Return these for inclusion inline with the exported `recInfo`. -/
  dumpRecRule (rule : RecursorRule) : M Json := do
    return Json.mkObj [
      ("ctor", ← dumpName rule.ctor),
      ("nfields", rule.nfields),
      ("rhs", ← dumpExpr rule.rhs),
    ]
  dumpObj (fields : List (String × Json)) : M Unit :=
    IO.println <| Json.mkObj fields |>.compress

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda19933d5d21d78655034ffa695fd1d42b176ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
