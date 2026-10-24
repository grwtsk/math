# correlationPrimeScaleDerivative_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be832b2f-9df2-9cd3-64a0-d639ea25be8d",
  "kind": "theorem",
  "lexical_name": "correlationPrimeScaleDerivative_eq_integral",
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
  "slug": "correlationprimescalederivative-eq-integral--7db1f60ef48fa4c556409e61",
  "source": {
    "blob": "cb6d0ba0862d22a9db0c4943bf6f22f4cccdc508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 386,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db1f60ef48fa4c556409e6117a36ef1adb30cb4d3d2c9324ffcdfe4c3c79fa5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be832b2f-9df2-9cd3-64a0-d639ea25be8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationPrimeScaleDerivative_eq_integral {A : ℝ} (hA : 0 < A) (s : ℝ) :
    correlationPrimeScaleDerivative A s =
      (∫ x : ℝ, spatialDerivative A x * scaleDerivative A (x - s)) -
      ∫ x : ℝ, scaleDerivative A x * spatialDerivative A (x - s) := by
  unfold correlationPrimeScaleDerivative
  rw [real_inner_of_representatives _ _ _ _ (spatialDerivativeState_coe_ae hA)
    (translate_real_representative s _ _ (scaleDerivativeState_coe_ae hA)),
    real_inner_of_representatives _ _ _ _ (scaleDerivativeState_coe_ae hA)
    (translate_real_representative s _ _ (spatialDerivativeState_coe_ae hA))]

/-- Both mixed terms are integrable, independently of the total-integral convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6d0ba0862d22a9db0c4943bf6f22f4cccdc508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
