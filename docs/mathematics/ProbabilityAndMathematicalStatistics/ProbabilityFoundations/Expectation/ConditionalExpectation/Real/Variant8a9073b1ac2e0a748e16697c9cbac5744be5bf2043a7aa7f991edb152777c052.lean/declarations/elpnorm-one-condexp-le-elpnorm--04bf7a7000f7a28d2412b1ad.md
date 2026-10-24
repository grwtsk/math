# eLpNorm_one_condExp_le_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d5b7c56-1f9f-7ec1-6960-e83388a88ea8",
  "kind": "theorem",
  "lexical_name": "eLpNorm_one_condExp_le_eLpNorm",
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
  "slug": "elpnorm-one-condexp-le-elpnorm--04bf7a7000f7a28d2412b1ad",
  "source": {
    "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 66,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04bf7a7000f7a28d2412b1add039dce82e71c2ccd1ee8600a641c774b9221cb0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5b7c56-1f9f-7ec1-6960-e83388a88ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_one_condExp_le_eLpNorm (f : α → ℝ) : eLpNorm (μ[f|m]) 1 μ ≤ eLpNorm f 1 μ := by
  by_cases hf : Integrable f μ
  swap; · rw [condExp_of_not_integrable hf, eLpNorm_zero]; exact zero_le _
  by_cases hm : m ≤ m0
  swap; · rw [condExp_of_not_le hm, eLpNorm_zero]; exact zero_le _
  by_cases hsig : SigmaFinite (μ.trim hm)
  swap; · rw [condExp_of_not_sigmaFinite hm hsig, eLpNorm_zero]; exact zero_le _
  calc
    eLpNorm (μ[f|m]) 1 μ ≤ eLpNorm (μ[(|f|)|m]) 1 μ := by
      refine eLpNorm_mono_ae ?_
      filter_upwards [condExp_mono hf hf.abs
        (ae_of_all μ (fun x => le_abs_self (f x) : ∀ x, f x ≤ |f x|)),
        (condExp_neg ..).symm.le.trans (condExp_mono hf.neg hf.abs
          (ae_of_all μ (fun x => neg_le_abs (f x) : ∀ x, -f x ≤ |f x|)))] with x hx₁ hx₂
      exact abs_le_abs hx₁ hx₂
    _ = eLpNorm f 1 μ := by
      rw [eLpNorm_one_eq_lintegral_enorm, eLpNorm_one_eq_lintegral_enorm,
        ← ENNReal.toReal_eq_toReal (hasFiniteIntegral_iff_enorm.mp integrable_condExp.2).ne
          (hasFiniteIntegral_iff_enorm.mp hf.2).ne,
        ← integral_norm_eq_lintegral_enorm
          (stronglyMeasurable_condExp.mono hm).aestronglyMeasurable,
        ← integral_norm_eq_lintegral_enorm hf.1]
      simp_rw [Real.norm_eq_abs]
      rw (config := {occs := .pos [2]}) [← integral_condExp hm]
      refine integral_congr_ae ?_
      have : 0 ≤ᵐ[μ] μ[(|f|)|m] := by
        rw [← condExp_zero]
        exact condExp_mono (integrable_zero _ _ _) hf.abs
          (ae_of_all μ (fun x => abs_nonneg (f x) : ∀ x, 0 ≤ |f x|))
      filter_upwards [this] with x hx
      exact abs_eq_self.2 hx

@[deprecated (since := "2025-01-21")]
alias eLpNorm_one_condexp_le_eLpNorm := eLpNorm_one_condExp_le_eLpNorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
