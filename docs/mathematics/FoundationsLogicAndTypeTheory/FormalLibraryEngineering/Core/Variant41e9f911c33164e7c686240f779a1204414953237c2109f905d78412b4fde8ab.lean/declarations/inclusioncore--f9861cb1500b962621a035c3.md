# inclusionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3cb49b9dea0a109292afb92984e3d7aa2c314a16230ce51b31325541b24b2fb",
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
  "slug": "inclusioncore--f9861cb1500b962621a035c3",
  "source": {
    "blob": "2788a5bdab7abb2b7ae5fddb9a3d07e22cbf6eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9861cb1500b962621a035c3c1269439b2ab4cb796646872df2cc2ae3c1438e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3cb49b9dea0a109292afb92984e3d7aa2c314a16230ce51b31325541b24b2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant41e9f911c33164e7c686240f779a1204414953237c2109f905d78412b4fde8ab.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2788a5bdab7abb2b7ae5fddb9a3d07e22cbf6eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
