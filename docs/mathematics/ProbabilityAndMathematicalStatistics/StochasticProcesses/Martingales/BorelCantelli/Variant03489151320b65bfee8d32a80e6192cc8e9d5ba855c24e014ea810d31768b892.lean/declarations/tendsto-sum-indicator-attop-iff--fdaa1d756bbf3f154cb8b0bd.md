# tendsto_sum_indicator_atTop_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f84954a-f9b0-25a3-9444-05a9d64d723f",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_indicator_atTop_iff",
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
  "slug": "tendsto-sum-indicator-attop-iff--fdaa1d756bbf3f154cb8b0bd",
  "source": {
    "blob": "5a82be970be94326018b7b5192b6ace59da9bbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 289,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdaa1d756bbf3f154cb8b0bd7d90a8dfee9abee364110a2a243af162bc1e87bc",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f84954a-f9b0-25a3-9444-05a9d64d723f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_indicator_atTop_iff [IsFiniteMeasure μ]
    (hfmono : ∀ᵐ ω ∂μ, ∀ n, f n ω ≤ f (n + 1) ω) (hf : StronglyAdapted ℱ f)
    (hint : ∀ n, Integrable (f n) μ) (hbdd : ∀ᵐ ω ∂μ, ∀ n, |f (n + 1) ω - f n ω| ≤ R) :
    ∀ᵐ ω ∂μ, Tendsto (fun n => f n ω) atTop atTop ↔
      Tendsto (fun n => predictablePart f ℱ μ n ω) atTop atTop := by
  simp only [← Real.norm_eq_abs] at hbdd
  have h₀ := martingalePart_bdd_difference ℱ hbdd
  simp only [Real.norm_eq_abs, ← NNReal.coe_ofNat, ← NNReal.coe_mul 2 R] at h₀
  have h₁ := (martingale_martingalePart hf hint).ae_not_tendsto_atTop_atTop h₀
  have h₂ := (martingale_martingalePart hf hint).ae_not_tendsto_atTop_atBot h₀
  have h₃ : ∀ᵐ ω ∂μ, ∀ n, 0 ≤ (μ[f (n + 1) - f n | ℱ n]) ω := by
    refine ae_all_iff.2 fun n => condExp_nonneg ?_
    filter_upwards [ae_all_iff.1 hfmono n] with ω hω using sub_nonneg.2 hω
  filter_upwards [h₁, h₂, h₃, hfmono] with ω hω₁ hω₂ hω₃ hω₄
  constructor <;> intro ht
  · refine tendsto_atTop_atTop_of_monotone' ?_ ?_
    · intro n m hnm
      simp only [predictablePart, Finset.sum_apply]
      exact Finset.sum_mono_set_of_nonneg hω₃ (Finset.range_mono hnm)
    rintro ⟨b, hbdd⟩
    rw [← tendsto_neg_atBot_iff] at ht
    simp only [martingalePart, sub_eq_add_neg] at hω₁
    exact hω₁ (tendsto_atTop_add_right_of_le _ (-b) (tendsto_neg_atBot_iff.1 ht) fun n =>
      neg_le_neg (hbdd ⟨n, rfl⟩))
  · refine tendsto_atTop_atTop_of_monotone' (monotone_nat_of_le_succ hω₄) ?_
    rintro ⟨b, hbdd⟩
    exact hω₂ ((tendsto_atBot_add_left_of_ge _ b fun n =>
      hbdd ⟨n, rfl⟩) <| tendsto_neg_atBot_iff.2 ht)

open BorelCantelli

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a82be970be94326018b7b5192b6ace59da9bbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
