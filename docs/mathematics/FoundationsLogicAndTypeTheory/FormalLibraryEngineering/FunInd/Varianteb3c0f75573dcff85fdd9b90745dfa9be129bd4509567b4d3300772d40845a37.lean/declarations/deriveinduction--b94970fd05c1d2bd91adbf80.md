# deriveInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c07945403a9b58f0979fa2108cc30b30ce986bfaddf7e1538d3ec5fb969ffabb",
  "kind": "def",
  "lexical_name": "deriveInduction",
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
  "slug": "deriveinduction--b94970fd05c1d2bd91adbf80",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1507,
    "line": 1487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94970fd05c1d2bd91adbf80e585f623088e39ab91574df2b7b22fd721976eea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c07945403a9b58f0979fa2108cc30b30ce986bfaddf7e1538d3ec5fb969ffabb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1487–1507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveInduction (unfolding : Bool) (name : Name) : MetaM Unit := do
  prependError m!"Cannot derive functional induction principle (please report this issue)" do
    if let some eqnInfo := WF.eqnInfoExt.find? (← getEnv) name then
      let unaryInductName ← deriveUnaryInduction unfolding eqnInfo.declNameNonRec
      if eqnInfo.declNames.size > 1 then
        projectMutualInduct unfolding eqnInfo.declNames (unpackMutualInduction unfolding eqnInfo) do
          -- We set the FunIndInfo on the first induction principle, which must happen inside its
          -- realization.
          if eqnInfo.argsPacker.numFuncs = 1 then
            setNaryFunIndInfo (unfolding := unfolding) eqnInfo.fixedParamPerms eqnInfo.declNames[0]! unaryInductName
      else
        -- (in this case, `unpackMutualInduction` already does `setNaryFunIndInfo`)
        let _ ← unpackMutualInduction unfolding eqnInfo
    else if let some eqnInfo := Structural.eqnInfoExt.find? (← getEnv) name then
      if eqnInfo.declNames.size > 1 then
        projectMutualInduct unfolding eqnInfo.declNames (deriveInductionStructural unfolding eqnInfo.declNames eqnInfo.fixedParamPerms) (pure ())
      else
        let _ ← deriveInductionStructural unfolding eqnInfo.declNames eqnInfo.fixedParamPerms
    else
      throwError "constant `{name}` is not structurally or well-founded recursive"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L1487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
