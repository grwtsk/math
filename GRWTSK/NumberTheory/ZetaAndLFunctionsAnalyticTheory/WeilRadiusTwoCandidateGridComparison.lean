/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateScalarComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedSchurBudget

/-!
# Gridded covariance comparison for the radius-two seed

Evaluate the signed Toeplitz and Hankel moments at the retained physical
mode with weight `100 / 39`. The two generators and the covariance
diagonal use the same signals as the scalar observation formula.
Restoring the sign of the odd Toeplitz reciprocal gives a grid error
of at most `1 / 10^8` in each component. The three comparisons to
the encoded seed can therefore spend `9 / 10^8` and return the
existing `1 / 10^7` arithmetic bounds. The signed signal field
keeps its exact equality.

The moment identity, the comparisons to the encoded seed and the
literal source enclosures are explicit inputs. Independent
mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateGridComparison

open RadiusTwoCandidateSeed RadiusTwoCandidateScalarComparison
open RadiusTwoCovarianceGrid RadiusTwoSeedCovariance
open private α W mode_range receiving_range from
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateScalarComparison

private def value (s : Observations) (moments : Fin 399936 → Moments) (i : Fin 399936) :
    ℝ × ℝ × ℝ :=
  evaluate (mode 400000 i) (s.signal (mode 400000 i)) W (moments i)

/-- Evaluate the observed seed with supplied covariance moments. -/
def ofMoments (s : Observations) (moments : Fin 399936 → Moments) :
    Coefficients (Fin 399936) :=
  let m := mode 400000
  let u := s.signal ∘ m
  ⟨fun i => s.coreDiagonal i - (value s moments i).2.2 - α * (u i)^2 -
      s.derivativePrice * (m i : ℝ)^2 - s.remoteDiagonal i,
    fun i => u i - (value s moments i).1 + s.derivativePrice * (m i : ℝ)^3,
    u,
    fun i => (value s moments i).2.1 + α * (m i : ℝ) * u i⟩

/-- The three evaluations on the supplied moments equal the signed
reciprocal-grid evaluations on the same receiving signals. -/
def MomentsMatch (s : Observations) (moments : Fin 399936 → Moments) : Prop :=
  ∀ i : Fin 399936,
    evaluate (mode 400000 i) (s.signal (mode 400000 i)) (100/39) (moments i) =
      evaluate (mode 400000 i) (s.signal (mode 400000 i)) (100/39)
        (griddedMoments (s.signal ∘ receiving 400000 1200000)
          (RadiusTwoPackedMoments.grid false (mode 400000 i))
          (RadiusTwoPackedMoments.grid true (mode 400000 i)))

/-- Arithmetic comparisons that reserve the reciprocal-grid error in
each covariance component before returning the required seed budget. -/
structure GridArithmeticSound (s : Observations) (moments : Fin 399936 → Moments)
    (c : Coefficients (Fin 399936)) : Prop where
  diag : ∀ i, |(ofMoments s moments).diag i - c.diag i| ≤ 9/10^8
  first : ∀ i, |(ofMoments s moments).first i - c.first i| ≤ 9/10^8
  signal : ∀ i, (ofMoments s moments).signal i = c.signal i
  normalizedSecond :
    ∀ i, |(ofMoments s moments).normalizedSecond i - c.normalizedSecond i| ≤ 9/10^8

private theorem gridError {s : Observations} {moments : Fin 399936 → Moments}
    (hMag : ∀ n, 65 ≤ n → n ≤ 1200000 → |s.signal n| ≤ 9)
    (hMatch : MomentsMatch s moments) (i : Fin 399936) :
    let m := mode 400000 i
    let n := receiving 400000 1200000
    let u := s.signal m
    let U := s.signal ∘ n
    let v := value s moments i
    |(∑ k, W * cross m (n k) u (U k) * U k) - v.1| ≤ (10:ℝ)⁻¹^8 ∧
      |(∑ k, W * normalizedCross m (n k) u (U k)) - v.2.1| ≤ (10:ℝ)⁻¹^8 ∧
      |(∑ k, W * (cross m (n k) u (U k))^2) - v.2.2| ≤ (10:ℝ)⁻¹^8 := by
  dsimp only [value]
  rw [show W = (100/39 : ℝ) by rfl, hMatch i]
  let m := mode 400000 i
  let n := receiving 400000 1200000
  have hm := mode_range i
  have hmn (k : Fin 800000) : m < n k :=
    hm.2.trans_lt (lt_of_lt_of_le (by decide : 400000 < 400001) (receiving_range k).1)
  refine covariance_grid_error (κ := Fin 800000) (by simp) m (s.signal m)
    (fun k => (n k : ℝ)) (s.signal ∘ n)
    (RadiusTwoPackedMoments.grid false m) (RadiusTwoPackedMoments.grid true m)
    (by exact_mod_cast hm.1) (fun k => by exact_mod_cast hmn k)
    (hMag m hm.1 (by omega)) (fun k => hMag (n k)
      ((by decide : 65 ≤ 400001).trans (receiving_range k).1) (receiving_range k).2) ?_ ?_
  · intro p k hp
    exact signedToeplitzGrid56_error (hmn k) hp
  · intro p k _
    have hPos : 0 < m + n k := by have := hmn k; omega
    simpa only [RadiusTwoPackedMoments.grid, RadiusTwoPackedMoments.distance,
      ite_eq_left, one_mul, n, receiving, Nat.cast_add] using
      (reciprocalGrid56_error p hPos)

private theorem diag_difference (d x y a b c : ℝ) :
    |(d - x - a - b - c) - (d - y - a - b - c)| = |x-y| := by
  rw [show (d - x - a - b - c) - (d - y - a - b - c) = -(x-y) by ring, abs_neg]

private theorem first_difference (u x y d : ℝ) :
    |(u - x + d) - (u - y + d)| = |x-y| := by
  rw [show (u - x + d) - (u - y + d) = -(x-y) by ring, abs_neg]

private theorem second_difference (x y a : ℝ) :
    |(x + a) - (y + a)| = |x-y| := by
  rw [show (x + a) - (y + a) = x-y by ring]

/-- The scalar observation coefficients and their gridded evaluations
agree within the reserve for each of the three covariance components. -/
theorem observation_error {s : Observations} {moments : Fin 399936 → Moments}
    (hMag : ∀ n, 65 ≤ n → n ≤ 1200000 → |s.signal n| ≤ 9)
    (hMatch : MomentsMatch s moments) (i : Fin 399936) :
    |(ofObservations s).diag i - (ofMoments s moments).diag i| ≤ 1/10^8 ∧
      |(ofObservations s).first i - (ofMoments s moments).first i| ≤ 1/10^8 ∧
      |(ofObservations s).normalizedSecond i - (ofMoments s moments).normalizedSecond i| ≤ 1/10^8 := by
  obtain ⟨hFirst, hSecond, hDiag⟩ := gridError hMag hMatch i
  dsimp only [ofObservations, ofMoments, Function.comp_apply]
  refine ⟨?_, ?_, ?_⟩
  · rw [diag_difference]
    exact hDiag.trans_eq (by norm_num)
  · rw [first_difference]
    exact hFirst.trans_eq (by norm_num)
  · rw [second_difference]
    exact hSecond.trans_eq (by norm_num)

/-- The exact moment comparison and the reserved arithmetic bounds
supply the existing observation arithmetic predicate. -/
theorem arithmeticSound {s : Observations} {moments : Fin 399936 → Moments}
    {c : Coefficients (Fin 399936)}
    (hMag : ∀ n, 65 ≤ n → n ≤ 1200000 → |s.signal n| ≤ 9)
    (hMatch : MomentsMatch s moments) (hc : GridArithmeticSound s moments c) :
    ArithmeticSound s c := by
  refine ⟨?_, ?_, hc.signal, ?_⟩
  · intro i
    exact (abs_sub_le _ ((ofMoments s moments).diag i) _).trans
      ((add_le_add (observation_error hMag hMatch i).1 (hc.diag i)).trans (by norm_num))
  · intro i
    exact (abs_sub_le _ ((ofMoments s moments).first i) _).trans
      ((add_le_add (observation_error hMag hMatch i).2.1 (hc.first i)).trans (by norm_num))
  · intro i
    exact (abs_sub_le _ ((ofMoments s moments).normalizedSecond i) _).trans
      ((add_le_add (observation_error hMag hMatch i).2.2 (hc.normalizedSecond i)).trans (by norm_num))

/-- Apply the gridded arithmetic return to the literal seed comparison. -/
theorem seedComparison_of_grid {s : Observations} {moments : Fin 399936 → Moments}
    {c : Coefficients (Fin 399936)} (hs : ObservationsSound s)
    (hMatch : MomentsMatch s moments) (hc : GridArithmeticSound s moments c) :
    SeedComparison c :=
  seedComparison hs (arithmeticSound hs.observedMagnitude hMatch hc)

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurNearestEven StructuredSchurCompactReplay.PackedRadixFold
open RadiusTwoAggregateSchurBudget RadiusTwoCompactGaugeBinding

/-- Return the radius-two high floor from the gridded source comparison
and the checked pivots and price budget of one common archive tape. -/
theorem highFloor_two_of_gridArchive
    (cert : CertifiedArchive RadiusTwoPackedSchurBudget.recordWeight 0 399936)
    (seed : Fin 399936 → GridRow 2)
    {s : Observations} {moments : Fin 399936 → Moments}
    (hs : ObservationsSound s) (hMatch : MomentsMatch s moments)
    (hc : GridArithmeticSound s moments (coefficientsFromRaw seed))
    (hRaw : ∀ i, (seed i).v 0 = (65 + (i.val : ℤ)) * 2^31)
    (hBlock : ((RadiusTwoPackedSchurBudget.tape cert.archive).withGeometricCaps
      (400000^2)).BlockCaps 0 seed 399936 (by omega))
    (hPaid : 1000 * totalNumerator cert.totals.1 cert.totals.2 ≤ 39 * (500 * 2^80)) :
    OddLiteralWindow.HighFloor 2 (-1/2) (1/5) 64 :=
  highFloor_two_of_gaugedCompactBlock_totals (RadiusTwoPackedSchurBudget.tape cert.archive)
    seed (seedComparison_of_grid hs hMatch hc) (fun _ => rfl) hRaw hBlock
    (RadiusTwoPackedSchurBudget.budgetCheck cert hPaid)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateGridComparison
