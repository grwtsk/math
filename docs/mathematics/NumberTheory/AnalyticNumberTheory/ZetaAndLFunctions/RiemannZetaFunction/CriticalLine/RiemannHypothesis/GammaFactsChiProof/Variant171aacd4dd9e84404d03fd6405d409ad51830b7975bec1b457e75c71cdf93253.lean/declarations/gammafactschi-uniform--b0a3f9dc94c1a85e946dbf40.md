# gammaFactsChi_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19a6f54d-d1f9-9654-ef73-cea07a2b8020",
  "kind": "theorem",
  "lexical_name": "gammaFactsChi_uniform",
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
  "slug": "gammafactschi-uniform--b0a3f9dc94c1a85e946dbf40",
  "source": {
    "blob": "cf1486081a4e59a90670d111b5eeb029cba4094f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 388,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a3f9dc94c1a85e946dbf40c4b7d8ef4dbbf44f03ece0d3eb4d12795e45b725",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a6f54d-d1f9-9654-ef73-cea07a2b8020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaFactsChi_uniform :
    ∃ C : ℝ, ∀ (κ q : ℕ), κ ≤ 1 → 1 ≤ q → GammaFactsChiBounded κ q C := by
  set Cs : ℝ := 20 / (2 * Real.pi) with hCs
  set T₂ : ℝ := max (2 * Real.pi * Real.exp 4) (32 * Real.pi ^ 2 * (Cs * (1 + Cs) + 1)) with hT₂
  set K₂ : ℝ := 8 * (1 + 2 * Real.log 2 ^ 2) + 1 + 4 * Real.pi * |Cs| with hK₂
  set C : ℝ := max (max (max Cs (24 / Real.pi)) (max 1 T₂)) K₂ with hC
  have hCs_le : Cs ≤ C := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _)
  have h24_le : 24 / Real.pi ≤ C := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) (le_max_left _ _)
  have h1_le : (1:ℝ) ≤ C := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) (le_max_left _ _)
  have hT₂_le : T₂ ≤ C := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) (le_max_left _ _)
  have hK₂_le : K₂ ≤ C := le_max_right _ _
  refine ⟨C, fun κ q hκ hq => ?_⟩
  have hcont := (muq_smooth κ q).continuous
  have hst := muq_stirling_const (q := q) hκ hq
  refine ⟨muq_even hκ, muq_smooth κ q, muq_monotoneOn hκ, muq_zero_le hκ, neg_one_lt_muq_zero hκ hq,
    ?_, ?_, ?_, ?_⟩
  · intro τ hτ
    exact (hst τ hτ).trans (div_le_div_of_nonneg_right hCs_le (sq_nonneg _))
  · intro τ hτ
    exact (muq_deriv_bound_const hκ τ hτ).trans (div_le_div_of_nonneg_right h24_le (abs_nonneg _))
  · intro T hT
    have hT1 : (1:ℝ) ≤ T := h1_le.trans hT
    have hT0 : 0 < T := by linarith
    exact (IntMuChi.int_muq_uniform Cs κ q hq hcont hst T hT1).trans
      (div_le_div_of_nonneg_right hCs_le hT0.le)
  · intro T hT
    have hT' : T₂ ≤ T := hT₂_le.trans hT
    have hT0 : 0 ≤ T := le_trans (by linarith) hT
    have h := IntMuChi.int_muq_sq_uniform Cs κ q hq hcont hst T hT'
    refine h.trans ?_
    have hnn : 0 ≤ (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2 := by positivity
    have hk : K₂ * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2
        = K₂ * ((T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2) := by ring
    have hc : C * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2
        = C * ((T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2) := by ring
    rw [hk, hc]
    exact mul_le_mul_of_nonneg_right hK₂_le hnn

end GammaChi
end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1486081a4e59a90670d111b5eeb029cba4094f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
