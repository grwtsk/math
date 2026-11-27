/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeOrdinaryRamp
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRationalRampWindow

/-!
# Integer comparison between the finite prime product score and the zeta ramp

The missing proper-power slopes telescope separately at each ordinary prime.
Keeping only bases through the tested integer gives an exact nonnegative
cutoff correction, bounded by the full proper-power correction.
-/

namespace GRWTSK.XiAlpogeFiniteRampBounds

open XiAlpogeOrdinaryRamp XiAlpogeRationalRampWindow
noncomputable section

/-- The prime portion of the exact finite logarithmic score. -/
def finiteRamp (n : ℕ) : ℝ := ∑ p ∈ primes n, ((n:ℝ)/((p:ℝ)-1)-1)*Real.log p

private def linear (n : ℕ) (q : PrimePowerIndex) := weight q * ((n:ℝ)/site q)
private def ramp (n : ℕ) (q : PrimePowerIndex) := weight q * max ((n:ℝ)/site q-1) 0
private def clip (n : ℕ) (q : PrimePowerIndex) := weight q * min 1 ((n:ℝ)/site q)

/-- The explicit clipping correction over bases up to n and all powers k≥2. -/
def cutoffCorrection (n : ℕ) : ℝ :=
  ∑' q : PrimePowerIndex, if q.1.val ≤ n then clip n q else 0

private lemma prime_two (p : Nat.Primes) : 2 ≤ (p.val : ℝ) := by exact_mod_cast p.prop.two_le
private lemma site_pos (q : PrimePowerIndex) : 0 < site q := by
  have := prime_two q.1
  unfold site
  positivity
private lemma weight_nonneg (q : PrimePowerIndex) : 0 ≤ weight q :=
  Real.log_nonneg (by linarith [prime_two q.1])

private lemma linear_sum (n : ℕ) : Summable (linear n) := by
  have h := (summable_weight_site (s := 1) (by norm_num)).mul_left (n:ℝ)
  apply h.congr
  intro q
  simp only [Real.rpow_neg_one, linear, div_eq_mul_inv]
  ring

private lemma clip_bounds (n : ℕ) (q : PrimePowerIndex) : 0 ≤ clip n q ∧ clip n q ≤ linear n q :=
  ⟨mul_nonneg (weight_nonneg q) (le_min zero_le_one (div_nonneg (by positivity) (site_pos q).le)),
   mul_le_mul_of_nonneg_left (min_le_right _ _) (weight_nonneg q)⟩

private lemma ramp_bounds (n : ℕ) (q : PrimePowerIndex) : 0 ≤ ramp n q ∧ ramp n q ≤ linear n q :=
  ⟨mul_nonneg (weight_nonneg q) (le_max_right _ _),
   mul_le_mul_of_nonneg_left (max_le (by linarith) (div_nonneg (by positivity) (site_pos q).le))
     (weight_nonneg q)⟩

private lemma cutoff_linear (n : ℕ) (p : Nat.Primes) :
    (∑' k : ℕ, linear n (p,k)) = (n:ℝ)*Real.log p.val / ((p.val:ℝ)*(p.val-1)) := by
  have hp := prime_two p
  have hp0 : 0 < (p.val:ℝ) := by linarith
  have hsmall : (p.val:ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ (by linarith)
  have hsum := hasSum_geometric_of_lt_one (inv_nonneg.mpr hp0.le) hsmall
  have hform (k : ℕ) : linear n (p,k) =
      ((n:ℝ)*Real.log p.val / (p.val:ℝ)^2) * (p.val:ℝ)⁻¹^k := by
    simp only [linear, weight, site, pow_add, inv_pow, div_eq_mul_inv, mul_inv_rev]
    ring
  rw [tsum_congr hform, (hsum.mul_left _).tsum_eq]
  field_simp [hp0.ne', show (p.val:ℝ)-1 ≠ 0 by linarith]

private lemma natPrime_cut (f : ℕ → ℝ) (n : ℕ) :
    (∑' p : Nat.Primes, if p.val ≤ n then f p.val else 0) = ∑ p ∈ primes n, f p := by
  change (∑' p : {m : ℕ // m ∈ {j : ℕ | j.Prime}}, if (p.val : ℕ) ≤ n then f p else 0) = _
  rw [tsum_subtype (s := {j : ℕ | j.Prime}) (f := fun j => if j ≤ n then f j else 0)]
  rw [tsum_eq_sum (s := primes n)]
  · apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨hr,hprime⟩ := Finset.mem_filter.mp hp
    have hpn : p ≤ n := by simpa using Finset.mem_range.mp hr
    simp [Set.indicator, hprime, hpn]
  · intro p hp
    by_cases hprim : p.Prime
    · have hl : ¬p ≤ n := by
        intro h; exact hp (Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega),hprim⟩)
      simp [Set.indicator, hprim, hl]
    · simp [Set.indicator, hprim]

/-- The exact finite score exceeds the true von Mangoldt ramp by precisely the
positive clipped terms based at the retained ordinary primes. -/
theorem finiteRamp_sub_mangoldt (n : ℕ) :
    finiteRamp n - mangoldtRamp n = cutoffCorrection n := by
  have hl := linear_sum n
  have hc : Summable (clip n) := Summable.of_nonneg_of_le (fun q => (clip_bounds n q).1)
    (fun q => (clip_bounds n q).2) hl
  have hr : Summable (ramp n) := Summable.of_nonneg_of_le (fun q => (ramp_bounds n q).1)
    (fun q => (ramp_bounds n q).2) hl
  let lc (q : PrimePowerIndex) := if q.1.val ≤ n then linear n q else 0
  let cc (q : PrimePowerIndex) := if q.1.val ≤ n then clip n q else 0
  have hlc : Summable lc := (hl.indicator {q | q.1.val ≤ n}).congr (fun q => by by_cases h : q.1.val ≤ n <;> simp [lc, Set.indicator, h])
  have hcc : Summable cc := (hc.indicator {q | q.1.val ≤ n}).congr (fun q => by by_cases h : q.1.val ≤ n <;> simp [cc, Set.indicator, h])
  have hsplit (q : PrimePowerIndex) : lc q = ramp n q + cc q := by
    by_cases h : q.1.val ≤ n
    · simp only [lc, cc, ite_eq_left h, linear, ramp, clip]
      rw [← mul_add]
      rcases le_total ((n:ℝ)/site q) 1 with h'|h'
      · rw [max_eq_right (by linarith), min_eq_right h']; ring
      · rw [max_eq_left (by linarith), min_eq_left h']; ring
    · have hnp : (n:ℝ) ≤ (q.1.val:ℝ) := by exact_mod_cast (le_of_not_ge h)
      have hp : (1:ℝ) ≤ (q.1.val:ℝ) := by linarith [prime_two q.1]
      have hz : (n:ℝ)/site q ≤ 1 := (div_le_one (site_pos q)).mpr
        (hnp.trans (le_self_pow₀ hp (by omega)))
      simp [lc, cc, h, ramp, max_eq_right (sub_nonpos.mpr hz)]
  have hsum : (∑' q, lc q) = removedRamp n + cutoffCorrection n := by
    rw [tsum_congr hsplit, hr.tsum_add hcc]
    rfl
  have hlin : (∑' q, lc q) = ∑ p ∈ primes n, (n:ℝ)*Real.log p / ((p:ℝ)*(p-1)) := by
    rw [hlc.tsum_prod, ← natPrime_cut]
    apply tsum_congr
    intro p
    by_cases h : p.val ≤ n
    · simpa [lc, h] using cutoff_linear n p
    · simp [lc,h]
  have hord : ordinaryRamp n = ∑ p ∈ primes n, ((n:ℝ)/p-1)*Real.log p := by
    rw [← natPrime_cut]
    apply tsum_congr
    intro p
    have hp : 0 < (p.val:ℝ) := by linarith [prime_two p]
    by_cases h : p.val ≤ n
    · have hl' : 1 ≤ (n:ℝ)/p.val := (one_le_div hp).mpr (by exact_mod_cast h)
      simp [h, max_eq_left (sub_nonneg.mpr hl'), mul_comm]
    · have hl' : (n:ℝ)/p.val ≤ 1 := (div_le_one hp).mpr (by exact_mod_cast (le_of_not_ge h))
      simp [h, max_eq_right (sub_nonpos.mpr hl')]
  have hterms : finiteRamp n = ordinaryRamp n + ∑' q, lc q := by
    rw [hord, hlin, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨_,hprime⟩ := Finset.mem_filter.mp hp
    have hp2 : (2:ℝ) ≤ p := by exact_mod_cast hprime.two_le
    field_simp [show (p:ℝ) ≠ 0 by linarith, show (p:ℝ)-1 ≠ 0 by linarith]
    ring
  rw [hterms, hsum, mangoldtRamp_eq]
  ring

theorem cutoffCorrection_bounds (n : ℕ) : 0 ≤ cutoffCorrection n ∧ cutoffCorrection n ≤ correction n := by
  have hc : Summable (clip n) := Summable.of_nonneg_of_le (fun q => (clip_bounds n q).1)
    (fun q => (clip_bounds n q).2) (linear_sum n)
  have hcc : Summable (fun q : PrimePowerIndex => if q.1.val ≤ n then clip n q else 0) :=
    (hc.indicator {q | q.1.val ≤ n}).congr (fun q => by by_cases h : q.1.val ≤ n <;> simp [Set.indicator, h])
  constructor
  · apply tsum_nonneg
    intro q
    split_ifs <;> simp [(clip_bounds n q).1]
  · apply hcc.tsum_le_tsum _ hc
    intro q
    split_ifs <;> simp [(clip_bounds n q).1]

end
end GRWTSK.XiAlpogeFiniteRampBounds
