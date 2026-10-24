# error_logarithmic_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9187723-b25a-824f-c160-2876390227d2",
  "kind": "theorem",
  "lexical_name": "error_logarithmic_integrand_integrable",
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
  "slug": "error-logarithmic-integrand-integrable--19da2aaeaa23f5d6f459d3cc",
  "source": {
    "blob": "454ae8e58815f814e2757dfb894ad1659fa5f695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19da2aaeaa23f5d6f459d3cc524c022bb10ba01da6c89f8f4b78576cd5cbf23e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9187723-b25a-824f-c160-2876390227d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_logarithmic_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ))
      volume := by
  have hc := BridgeFourier.sourceFourier_continuous
    ((smoothedTest_integrable A ε hA hε).sub (actualTest_integrable A hA))
  apply ((actual_logarithmic_integrand_integrable A hA).const_mul 4).mono'
    (logarithmicWeight_continuous.mul (Complex.continuous_normSq.comp hc)).aestronglyMeasurable
  exact Filter.Eventually.of_forall fun ξ ↦ by
    dsimp only [Pi.mul_apply, Function.comp_apply]
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (logarithmicWeight_nonneg ξ)
      (Complex.normSq_nonneg _))]
    calc
      _ ≤ logarithmicWeight ξ * (4 * Complex.normSq (sourceFourier (actualTest A) ξ)) :=
        mul_le_mul_of_nonneg_left (sourceFourier_testError_normSq_le A ε hA hε ξ)
          (logarithmicWeight_nonneg ξ)
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454ae8e58815f814e2757dfb894ad1659fa5f695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
