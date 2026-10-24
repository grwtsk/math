# full_complex_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f11b5a79-af15-fe8e-4281-dcc7a6dc9450",
  "kind": "theorem",
  "lexical_name": "full_complex_correlation_square",
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
  "slug": "full-complex-correlation-square--fd2bcf935f0de7bc92f01022",
  "source": {
    "blob": "5c6f152648d81a9d059997bcf077928305504739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2bcf935f0de7bc92f01022e0d6816b9702abfed34064c4e7bf3a9892e3cb3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11b5a79-af15-fe8e-4281-dcc7a6dc9450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_complex_correlation_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = normalizedTransform A z ^ 2 := by
  let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℂ := fun x => (q x : ℂ)*Complex.exp (z*(x : ℂ))
  have hF : Integrable F := normalized_integrand_integrable hA z
  have he (t : ℝ) : (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ)) =
      (F ⋆[ContinuousLinearMap.mul ℂ ℂ] F) t := by
    unfold sourceCorrelation
    rw [← integral_complex_ofReal, ← integral_mul_const]
    rw [convolution]
    apply integral_congr_ae
    filter_upwards [] with x
    have heven := actual_normalized_even A hA (x-t)
    have he : Complex.exp (z*(t : ℂ)) =
        Complex.exp (z*(x : ℂ))*Complex.exp (z*((t-x : ℝ) : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      push_cast
      ring
    dsimp [F,q]
    rw [show t-x=-(x-t) by ring,heven,he]
    push_cast
    ring
  simp_rw [he]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ) hF hF]
  change normalizedTransform A z * normalizedTransform A z = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c6f152648d81a9d059997bcf077928305504739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
