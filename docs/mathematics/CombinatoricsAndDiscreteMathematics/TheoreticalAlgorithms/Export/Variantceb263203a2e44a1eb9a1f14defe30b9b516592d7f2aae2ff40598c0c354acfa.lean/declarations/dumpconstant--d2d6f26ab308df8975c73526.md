# dumpConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1d67b5a9628c9eea278a8b3be8d790099c0e4259b478ad4e38063d7d612b5a",
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
  "slug": "dumpconstant--d2d6f26ab308df8975c73526",
  "source": {
    "blob": "8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2d6f26ab308df8975c7352633ed541c20a0a1f16c95e69bef9e3c84bbbf8fc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1d67b5a9628c9eea278a8b3be8d790099c0e4259b478ad4e38063d7d612b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–423.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
