# setMotiveArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5fad5aede1271c9ba47c42d9e09baee9c5df2e7e95d6334c30943ba76ca5a3c",
  "kind": "def",
  "lexical_name": "setMotiveArg",
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
  "slug": "setmotivearg--e2d8ef08dc547bf815192408",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2d8ef08dc547bf81519240878813944c1fd305229b192200addbaa1cf3d3424",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5fad5aede1271c9ba47c42d9e09baee9c5df2e7e95d6334c30943ba76ca5a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def setMotiveArg (mvarId : MVarId) (motiveArg : MVarId) (targets : Array FVarId) (complexArgs : Array Expr := #[]) : MetaM Unit := do
  let type ← inferType (mkMVar mvarId)

  let motiveType ← inferType (mkMVar motiveArg)
  let exptComplexArgTypes ← arrowDomainsN complexArgs.size (← instantiateForall motiveType (targets.map mkFVar))

  let mut absType := type
  for complexArg in complexArgs.reverse, exptComplexArgType in exptComplexArgTypes.reverse do
    trace[Elab.induction] "setMotiveArg: trying to abstract over {complexArg}, expected type {exptComplexArgType}"
    let complexArgType ← inferType complexArg
    if (← isDefEq complexArgType exptComplexArgType) then
      let absType' ← kabstract absType complexArg
      let absType' := .lam (← mkFreshUserName `x) complexArgType absType' .default
      if (← isTypeCorrect absType') then
        absType := absType'
      else
        trace[Elab.induction] "Not abstracting goal over {complexArg}, resulting term is not type correct:{indentExpr absType'} }"
        absType := .lam (← mkFreshUserName `x) complexArgType absType .default
    else
      trace[Elab.induction] "Not abstracting goal over {complexArg}, its type {complexArgType} does not match the expected {exptComplexArgType}"
      absType := .lam (← mkFreshUserName `x) exptComplexArgType absType .default

  let motive ← mkLambdaFVars (targets.map mkFVar) absType
  let motiverInferredType ← inferType motive
  unless (← isDefEqGuarded motiverInferredType motiveType) do
    throwError "Type mismatch when assigning motive{indentExpr motive}\n{← mkHasTypeButIsExpectedMsg motiverInferredType motiveType}"
  motiveArg.assign motive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
