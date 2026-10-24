# Complete source: GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialBudget.Variant0c157a220e6e2fcefe9fd9498f96e6562193082503678da0311f72c8d5964b4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e456ed616077533de431f8a2aee449960302716` · SHA-256 `cd9d3129461a71958b7d680283f5a596f0dae4e560fe13d2a6e4482cd57ceede`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialCoefficient.Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PhasePolynomialCoefficient.Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff","mathematical_subject":"Algebra.Polynomials","original_sha256":"ebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/acceptance-regent/regent-phase-polynomial-budget/overlay/PhasePolynomialBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Prototype

/-!
# No polynomial upper budget for actual source phase mass

This private adapter imports the independently reviewed private phase-mass FTC
unit. Taylor's inequality supplies an explicit source lower bound and threshold
against every natural polynomial degree. It supplies no estimate for an actual
arithmetic state, operator error or signed readout and constructs no Hilbert
phase state. Neither private unit is counted in the maintained cycle-14 packet.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialCoefficient.Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

open SourcePairedPrimeWork SourcePhaseMassFTC

/-- The positive Taylor coefficient is independently specified, without phase normalization. -/
def phasePolynomialCoefficient (d : ℕ) : ℝ :=
  (7 / 8 : ℝ) / (80 ^ (d + 1) * ((d + 1).factorial : ℝ))

theorem phasePolynomialCoefficient_pos (d : ℕ) : 0 < phasePolynomialCoefficient d := by
  unfold phasePolynomialCoefficient
  positivity

/-- Actual source phase mass has a Taylor lower bound one degree above the proposed budget. -/
theorem positiveMass_ge_taylor {A : ℝ} (hA : 1 ≤ A) (d : ℕ) :
    phasePolynomialCoefficient d * A ^ (d + 1) - 1 ≤ positiveMass A := by
  have he := Real.pow_div_factorial_le_exp (A / 80)
    (show 0 ≤ A / 80 by linarith) (d + 1)
  have hm := mul_le_mul_of_nonneg_left he (show (0 : ℝ) ≤ 7 / 8 by norm_num)
  have hp := positiveMass_ge_early_exponential hA
  have heq : phasePolynomialCoefficient d * A ^ (d + 1) =
      (7 / 8 : ℝ) * ((A / 80) ^ (d + 1) / ((d + 1).factorial : ℝ)) := by
    unfold phasePolynomialCoefficient
    rw [div_pow]
    ring
  rw [← heq] at hm
  linarith

/-- The explicit threshold handles arbitrary real budget coefficients and the endpoint minus one. -/
theorem positiveMass_gt_polynomial {A C : ℝ} (d : ℕ) (hA : 1 ≤ A)
    (hAC : (C + 2) / phasePolynomialCoefficient d ≤ A) : C * A ^ d < positiveMass A := by
  have hk := phasePolynomialCoefficient_pos d
  have hlin : C + 2 ≤ phasePolynomialCoefficient d * A := by
    have h := (div_le_iff₀ hk).mp hAC
    simpa only [mul_comm] using h
  have hpow : 1 ≤ A ^ d := one_le_pow₀ hA
  have hnonneg : 0 ≤ A ^ d := by positivity
  have hmul := mul_le_mul_of_nonneg_right hlin hnonneg
  have ht := positiveMass_ge_taylor hA d
  rw [pow_succ] at ht
  have heq : phasePolynomialCoefficient d * (A ^ d * A) =
      (phasePolynomialCoefficient d * A) * A ^ d := by ring
  rw [heq] at ht
  nlinarith

/-- A max threshold witnesses eventual strict domination of each proposed polynomial budget. -/
theorem positiveMass_eventually_gt_polynomial (d : ℕ) (C : ℝ) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → C * A ^ d < positiveMass A := by
  refine ⟨max 1 ((C + 2) / phasePolynomialCoefficient d), le_max_left _ _, ?_⟩
  intro A hA
  exact positiveMass_gt_polynomial d ((le_max_left _ _).trans hA)
    ((le_max_right _ _).trans hA)

/-- This hostile guard excludes only scalar phase-mass budgets, not a signed arithmetic estimate. -/
theorem positiveMass_not_eventually_polynomial_bounded (d : ℕ) :
    ¬ ∃ C R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ C * A ^ d := by
  rintro ⟨C, R, h⟩
  obtain ⟨S, hS, hgt⟩ := positiveMass_eventually_gt_polynomial d C
  let A : ℝ := max R S
  have hAS : S ≤ A := le_max_right _ _
  have hAR : R ≤ A := le_max_left _ _
  have hA : 1 ≤ A := hS.trans hAS
  have hl := hgt A hAS
  have hu := h A hA hAR
  linarith

end FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget
```
