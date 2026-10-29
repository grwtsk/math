-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TruncatedDivisorCoefficient.Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TruncatedDivisorCoefficient.Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/TruncatedDivisorResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport

/-! The complete post-cutoff identity of the original endpoint-corrected fractional residual. -/

namespace GRWTSK.Topology.GeneralTopology.TruncatedDivisorCoefficient.Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259

set_option autoImplicit false
namespace TruncatedDivisorResidualScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator LogarithmicResidualTail
open DampedDivisorCoefficient
noncomputable section

/-- The actual finite divisor coefficient keeps exactly the divisors at or below the source cutoff.
No positivity is built into this truncated coefficient. -/
def truncatedDivisorCoefficient (X : ℕ) (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
    (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

/-- Up to the cutoff, truncation keeps every divisor of the original full coefficient. -/
theorem truncatedDivisorCoefficient_eq_full (X : ℕ) (ε : ℝ) (n : ℕ) (hn : n ≤ X) :
    truncatedDivisorCoefficient X ε n = dampedDivisorCoefficient ε n := by
  have he : n.divisors.filter (fun d => d ≤ X) = n.divisors :=
    filter_eq_self.mpr (fun d hd => (Nat.le_of_dvd (Nat.pos_of_ne_zero (Nat.mem_divisors.mp hd).2)
      (Nat.mem_divisors.mp hd).1).trans hn)
  rw [truncatedDivisorCoefficient, he]
  rfl

private theorem finite_floor_prefix (X : ℕ) (x : ℝ) (a : ℕ → ℝ) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors.filter (fun d => d ≤ X), a d := by
  have hf (n : ℕ) (hn : n ∈ Icc 1 ⌊x⌋₊) :
      (Icc 1 X).filter (fun d => d ∣ n) = n.divisors.filter (fun d => d ≤ X) := by
    have hn0 : n ≠ 0 := by have := (mem_Icc.mp hn).1; omega
    ext d
    simp only [mem_filter, mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨hd, hdn⟩
      exact ⟨⟨hdn, hn0⟩, hd.2⟩
    · rintro ⟨⟨hdn, _⟩, hdX⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn (by omega)
      exact ⟨⟨hd0, hdX⟩, hdn⟩
  calc
    _ = ∑ d ∈ Icc 1 X, ∑ n ∈ Icc 1 ⌊x⌋₊, if d ∣ n then a d else 0 := by
      apply sum_congr rfl
      intro d hd
      rw [Nat.floor_div_natCast, ← sum_filter]
      simp only [sum_const, nsmul_eq_mul, CoprimeCount.positive_multiples_card]
      ring
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ Icc 1 X, if d ∣ n then a d else 0 := sum_comm
    _ = _ := by
      apply sum_congr rfl
      intro n hn
      rw [← sum_filter, hf n hn]

/-- The actual corrected coefficient floors retain the complete post-cutoff divisor prefix
and its endpoint compensation, at every real argument. -/
theorem damped_floor_eq_truncated_prefix (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      (∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n) -
        (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          FiniteMobiusController.mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) := by
  simp only [dampedCoefficient, sub_mul, ite_mul, zero_mul, sum_sub_distrib]
  rw [finite_floor_prefix]
  congr 1
  simp [hX]

private theorem residual_floor (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 0 ≤ x) :
    arithmeticResidual X ε x = (if 1 ≤ x then 1 else 0) +
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      ((∑ d ∈ Icc 1 X, dampedCoefficient X ε d *
        (⌊x / (d : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  rw [arithmeticResidual, ← dampedCoefficient_reciprocal_sum X ε hX]
  push_cast
  rw [Finset.mul_sum, add_sub_assoc, ← Finset.sum_sub_distrib]
  congr 1
  apply sum_congr rfl
  intro d hd
  have hd0 : (0 : ℝ) ≤ d := Nat.cast_nonneg _
  rw [Int.fract, ← natCast_floor_eq_intCast_floor (div_nonneg hx hd0)]
  push_cast
  ring

/-- The unchanged complex residual has its exact truncated-divisor identity on the full half-line.
The endpoint correction is kept at and beyond the source cutoff. -/
theorem arithmeticResidual_eq_truncated_prefix (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          FiniteMobiusController.mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  rw [residual_floor X ε x hX (by linarith), if_pos hx,
    damped_floor_eq_truncated_prefix X ε x hX]
  push_cast
  ring

end
end TruncatedDivisorResidualScratch
