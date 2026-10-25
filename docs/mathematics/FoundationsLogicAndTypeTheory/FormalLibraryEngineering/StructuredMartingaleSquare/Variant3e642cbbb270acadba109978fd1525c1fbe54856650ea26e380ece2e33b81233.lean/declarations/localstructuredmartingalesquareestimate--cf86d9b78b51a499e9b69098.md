# LocalStructuredMartingaleSquareEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac877c98c6de69ef6830746dd27cbf66740ae4ac12b85eb615329fd404a636c6",
  "kind": "def",
  "lexical_name": "LocalStructuredMartingaleSquareEstimate",
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
  "slug": "localstructuredmartingalesquareestimate--cf86d9b78b51a499e9b69098",
  "source": {
    "blob": "0e61e68bb421f23d529128747a7835e11f5b6ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructuredMartingaleSquare/Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf86d9b78b51a499e9b690980773311a9112a8cca853e7ddb9da7784eca0c3f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructuredMartingaleSquare/Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac877c98c6de69ef6830746dd27cbf66740ae4ac12b85eb615329fd404a636c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocalStructuredMartingaleSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeStructuredIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε *
        evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructuredMartingaleSquare/Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructuredMartingaleSquare/Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e61e68bb421f23d529128747a7835e11f5b6ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
