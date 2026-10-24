# toPointedCone_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ba2d31d-e2c3-8258-a9af-cadc6b071741",
  "kind": "lemma",
  "lexical_name": "toPointedCone_positive",
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
  "slug": "topointedcone-positive--887f553eb5ada794e9bbcb2f",
  "source": {
    "blob": "af5e9d4a43af76a837820dca45d6506750f8dcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:887f553eb5ada794e9bbcb2f0df1ea8550b4a2fad4b18c6b6d8f804556adc5eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba2d31d-e2c3-8258-a9af-cadc6b071741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toPointedCone_positive : (positive R E).toPointedCone = .positive R E := rfl

end PositiveCone
end ProperCone

/-!
### Topological properties of convex cones

This section proves topological results about convex cones.
-/

namespace ConvexCone
variable [Semifield 𝕜] [LinearOrder 𝕜] [Module 𝕜 E]

variable [TopologicalSpace 𝕜] [OrderTopology 𝕜] [DenselyOrdered 𝕜] [NoMaxOrder 𝕜]
  [ContinuousSMul 𝕜 E] {C : ConvexCone 𝕜 E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e9d4a43af76a837820dca45d6506750f8dcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
