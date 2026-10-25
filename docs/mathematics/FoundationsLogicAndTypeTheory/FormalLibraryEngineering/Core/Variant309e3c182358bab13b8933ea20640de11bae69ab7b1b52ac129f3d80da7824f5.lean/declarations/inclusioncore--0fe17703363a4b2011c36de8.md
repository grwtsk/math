# inclusionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6dcd3a0d09cdb8513dcf3e82ea2352e693765e5faafdf49943b47c2aec6a9fb",
  "kind": "def",
  "lexical_name": "inclusionCore",
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
  "slug": "inclusioncore--0fe17703363a4b2011c36de8",
  "source": {
    "blob": "94e881cdbd1c500cd2a50dbb59563823b820e0b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant309e3c182358bab13b8933ea20640de11bae69ab7b1b52ac129f3d80da7824f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fe17703363a4b2011c36de844ef074427b98ede338135fc3b532beb7ef4545b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant309e3c182358bab13b8933ea20640de11bae69ab7b1b52ac129f3d80da7824f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6dcd3a0d09cdb8513dcf3e82ea2352e693765e5faafdf49943b47c2aec6a9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inclusionCore (goal : Expr) (config : InclusionConfig) : MetaM Expr := do
  if config.kernel && config.native then
    throwError "Cannot simultaneously enable +kernel and +native"
  let goal ← instantiateMVars goal
  unless ← isProp goal do
    throwError "The goal is not a proposition"
  let exprInclusion ← (toExprInclusion goal).run config.paramSettings config.families
  let inclusionExpr := exprInclusion.inclusion
  let inclusionProof ←
    if config.native then
      mkNativeInclusionTrueProof inclusionExpr
    else if config.kernel then
      mkKernelInclusionTrueProof inclusionExpr
    else
      mkInclusionTrueProof inclusionExpr
  return exprInclusion.mkGoalProof goal inclusionProof

end Inclusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant309e3c182358bab13b8933ea20640de11bae69ab7b1b52ac129f3d80da7824f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant309e3c182358bab13b8933ea20640de11bae69ab7b1b52ac129f3d80da7824f5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e881cdbd1c500cd2a50dbb59563823b820e0b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
