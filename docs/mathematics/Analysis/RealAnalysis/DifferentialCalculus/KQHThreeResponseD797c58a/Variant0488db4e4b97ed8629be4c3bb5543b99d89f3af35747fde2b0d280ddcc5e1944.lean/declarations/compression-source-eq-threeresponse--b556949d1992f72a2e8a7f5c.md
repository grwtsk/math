# compression_source_eq_threeResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7b0ac81-cb40-1ed1-5063-a6a77bf79472",
  "kind": "theorem",
  "lexical_name": "compression_source_eq_threeResponse",
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
  "slug": "compression-source-eq-threeresponse--b556949d1992f72a2e8a7f5c",
  "source": {
    "blob": "1bdbe0504f00df3849580dff7019a2ced142f360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b556949d1992f72a2e8a7f5c1a46cc251fc604beb369f02fe10e3ea459f3e681",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7b0ac81-cb40-1ed1-5063-a6a77bf79472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_source_eq_threeResponse (A : ℝ) (hA : 1 ≤ A) :
    KQHSourceCompression.compression A (-1 / 4) (1 / A ^ 2) =
      threeResponseNumerator A := by
  apply (div_left_inj' (ne_of_gt (source_normalization_pos A hA))).mp
  exact (KQHSourceCompression.residual_eq_compression A hA).symm.trans
    (mertensResidual_eq_threeResponse A hA)

end FormalResearch.RiemannHypothesis.KQHThreeResponse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bdbe0504f00df3849580dff7019a2ced142f360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
