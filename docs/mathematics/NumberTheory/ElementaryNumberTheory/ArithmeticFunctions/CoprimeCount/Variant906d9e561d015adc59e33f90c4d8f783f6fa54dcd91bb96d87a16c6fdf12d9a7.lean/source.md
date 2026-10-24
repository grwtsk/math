# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeCount.Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f8dd8dc7e4bc54d6a738d693dcb40e932c7846d` · SHA-256 `9676992b9916674440abc943cf8b9af3529c97d2abdc7ab2ba3870af22f5c665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeCount.Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.CoprimeCount.Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/CoprimeCount.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Cast.Field
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeCount.Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0

set_option autoImplicit false

namespace CoprimeCountScratch

open Finset
open scoped ArithmeticFunction.zeta

noncomputable section

/-- The actual number of positive integers through j that are coprime to h. -/
def coprimeCount (h j : ℕ) : ℕ :=
  ((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card

/-- The finite Möbius density coefficient, with all divisors retained. -/
def coprimeDensity (h : ℕ) : ℝ :=
  ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)

/-- Summing the actual Möbius function over divisors gives the unit indicator. -/
theorem sum_moebius_divisors (n : ℕ) :
    (∑ e ∈ n.divisors, (ArithmeticFunction.moebius e : ℝ)) = if n = 1 then 1 else 0 := by
  have h := congrArg (fun f : ArithmeticFunction ℝ ↦ f n)
    (ArithmeticFunction.coe_moebius_mul_coe_zeta (R := ℝ))
  simpa only [ArithmeticFunction.coe_mul_zeta_apply, ArithmeticFunction.intCoe_apply,
    ArithmeticFunction.one_apply] using h

/-- Coprimality is exactly the divisor Möbius indicator; h is an actual positive modulus. -/
theorem coprime_indicator_eq (h k : ℕ) (hh : 1 ≤ h) :
    (if Nat.Coprime k h then (1 : ℝ) else 0) =
      ∑ e ∈ h.divisors, if e ∣ k then (ArithmeticFunction.moebius e : ℝ) else 0 := by
  have hh0 : h ≠ 0 := by omega
  have hg0 : Nat.gcd k h ≠ 0 := (Nat.gcd_pos_of_pos_right k (by omega : 0 < h)).ne'
  have hfilter : h.divisors.filter (fun e ↦ e ∣ k) = (Nat.gcd k h).divisors := by
    ext e
    simp only [mem_filter, Nat.mem_divisors, Nat.dvd_gcd_iff]
    constructor
    · rintro ⟨⟨heh, _⟩, hek⟩
      exact ⟨⟨hek, heh⟩, hg0⟩
    · rintro ⟨⟨hek, heh⟩, _⟩
      exact ⟨⟨heh, hh0⟩, hek⟩
  rw [← sum_filter, hfilter, sum_moebius_divisors]

/-- The exact count of positive multiples is natural division, including j=0. -/
theorem positive_multiples_card (j e : ℕ) :
    ((Icc 1 j).filter (fun k ↦ e ∣ k)).card = j / e := by
  have hi : Ioc 0 j = Icc 1 j := by
    ext k
    simp only [mem_Ioc, mem_Icc]
    omega
  rw [← hi]
  exact Nat.Ioc_filter_dvd_card_eq_div j e

/-- Finite inversion gives the original coprime count with its exact integer floors. -/
theorem coprimeCount_eq_moebius_floor (h j : ℕ) (hh : 1 ≤ h) :
    (coprimeCount h j : ℝ) =
      ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) := by
  have hcount : (coprimeCount h j : ℝ) =
      ∑ k ∈ Icc 1 j, if Nat.Coprime k h then (1 : ℝ) else 0 := by
    simp only [coprimeCount, ← sum_filter, sum_const, nsmul_eq_mul, mul_one]
  rw [hcount]
  simp_rw [coprime_indicator_eq h _ hh]
  rw [sum_comm]
  apply sum_congr rfl
  intro e _
  rw [← sum_filter]
  simp only [sum_const, nsmul_eq_mul, positive_multiples_card]
  ring

/-- Each genuine natural quotient differs from real division by at most one. -/
theorem natural_division_error (j e : ℕ) (he : 1 ≤ e) :
    |((j / e : ℕ) : ℝ) - (j : ℝ) / (e : ℝ)| ≤ 1 := by
  have he0 : (0 : ℝ) < e := by exact_mod_cast (show 0 < e by omega)
  have hx : 0 ≤ (j : ℝ) / (e : ℝ) := div_nonneg (Nat.cast_nonneg j) he0.le
  have hl := Nat.floor_le hx
  have hu := Nat.lt_floor_add_one ((j : ℝ) / (e : ℝ))
  rw [Nat.floor_div_eq_div] at hl hu
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The error in the finite coprime density is bounded by the actual divisor count. -/
theorem coprimeCount_error_le (h j : ℕ) (hh : 1 ≤ h) :
    |(coprimeCount h j : ℝ) - coprimeDensity h * (j : ℝ)| ≤
      (h.divisors.card : ℝ) := by
  rw [coprimeCount_eq_moebius_floor h j hh, coprimeDensity, sum_mul, ← sum_sub_distrib]
  have hterm (e : ℕ) (he : e ∈ h.divisors) :
      |(ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ)| ≤ 1 := by
    have he0 := Nat.pos_of_mem_divisors he
    have hmu : |(ArithmeticFunction.moebius e : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := e))
    have hf := natural_division_error j e he0
    have heq : (ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) =
        (ArithmeticFunction.moebius e : ℝ) * (((j / e : ℕ) : ℝ) -
          (j : ℝ) / (e : ℝ)) := by ring
    rw [heq, abs_mul]
    simpa only [one_mul] using mul_le_mul hmu hf (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  calc
    _ ≤ ∑ e ∈ h.divisors,
        |(ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) -
          ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ _e ∈ h.divisors, (1 : ℝ) := sum_le_sum hterm
    _ = _ := by simp

/-- At one full modulus the floor identity gives the exact finite density relation. -/
theorem coprimeCount_period (h : ℕ) (hh : 1 ≤ h) :
    (coprimeCount h h : ℝ) = coprimeDensity h * (h : ℝ) := by
  rw [coprimeCount_eq_moebius_floor h h hh, coprimeDensity, sum_mul]
  apply sum_congr rfl
  intro e he
  rw [Nat.cast_div_charZero (Nat.mem_divisors.mp he).1]
  ring

/-- The literal coprime count cannot exceed its entire positive interval. -/
theorem coprimeCount_le (h j : ℕ) : coprimeCount h j ≤ j := by
  unfold coprimeCount
  calc
    _ ≤ (Icc 1 j).card := card_filter_le _ _
    _ = j := by simp

/-- Positivity of the exact period count proves nonnegativity of its finite density. -/
theorem coprimeDensity_nonneg (h : ℕ) (hh : 1 ≤ h) : 0 ≤ coprimeDensity h := by
  have hh0 : (0 : ℝ) < h := by exact_mod_cast (show 0 < h by omega)
  apply (mul_nonneg_iff_of_pos_right hh0).mp
  rw [← coprimeCount_period h hh]
  exact Nat.cast_nonneg _

/-- Counting at one period bounds the actual finite density by one. -/
theorem coprimeDensity_le_one (h : ℕ) (hh : 1 ≤ h) : coprimeDensity h ≤ 1 := by
  have hh0 : (0 : ℝ) < h := by exact_mod_cast (show 0 < h by omega)
  apply (mul_le_mul_iff_left₀ hh0).mp
  rw [← coprimeCount_period h hh, one_mul]
  exact_mod_cast coprimeCount_le h h

end
end CoprimeCountScratch

#print axioms CoprimeCountScratch.coprimeCount
#print axioms CoprimeCountScratch.coprimeDensity
#print axioms CoprimeCountScratch.sum_moebius_divisors
#print axioms CoprimeCountScratch.coprime_indicator_eq
#print axioms CoprimeCountScratch.positive_multiples_card
#print axioms CoprimeCountScratch.coprimeCount_eq_moebius_floor

#print axioms CoprimeCountScratch.natural_division_error
#print axioms CoprimeCountScratch.coprimeCount_error_le

#print axioms CoprimeCountScratch.coprimeCount_period

#print axioms CoprimeCountScratch.coprimeCount_le

#print axioms CoprimeCountScratch.coprimeDensity_nonneg

#print axioms CoprimeCountScratch.coprimeDensity_le_one
```
