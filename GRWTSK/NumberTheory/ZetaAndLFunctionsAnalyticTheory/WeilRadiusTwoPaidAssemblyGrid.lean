/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidObservationBounds

/-!
# Integer grids for the calculated radius-two paid comparison

The raw centre/radius grid is 2^-45 and the actual rank-four reconstruction
grid is 2^-24. Exact integer products therefore represent observed rows on
grid 2^-69 and their Gram and squared-radius price on grid 2^-138. Young's
33/32 coefficient puts the observed charge on grid 2^-143. These are exact
identities of the calculated comparison, not a comparison of archive hashes.
The two overlap terms have grids 2^-69 and 2^-93. Multiplying the
44-bit head numerator by 2^99, these terms by 2^74 and 2^50, and the
64-bit remote numerator by 2^79 puts all signed charges on grid 2^-143.
Subtracting the remote interval exchanges its endpoints. Adding the two
orientations then gives the symmetric endpoints on grid 2^-144.

The consumer is the remaining calculated-interval containment obligation.
Finite product certificates can establish integer intermediates once, then
use these identities rather than reevaluate nested rational sums. The signed
centre product and the product of radii with abs(A) remain distinct; no
factorization of abs(L*R) is used. All physical and scalar-pole slots remain
in the typed Trial/Head carriers. No particular numeric table, source entry
enclosure, high floor or stage positivity is supplied by this algebra.

The derivation uses finite sums and positive powers of two. Nonnegative raw
radii are required when reducing signed interval multiplication; ordered
remote and oriented intervals are required when reducing positive scaling.
These hypotheses prevent an invalid interval from being treated as an exact
ordered pair. Zero or cancelling reconstruction coefficients keep their
actual absolute values; the cancellation boundary in `WeilRadiusTwoRankFourProjection`
explains why absolute values cannot instead be applied to each factor.
Automated assistance supplied symbolic algebra and proof-step construction.
The Lean kernel replay and axiom audits assess only the stated source identities.
It shares the
same observation definitions as the source return, and is not an independent
analytic argument. Independent analytical review and novelty assessment
remain pending; formal assurance is recorded separately by grwtsk/noeaaeue.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidAssemblyGrid

open RadiusTwoCandidateEntries RadiusTwoTrialProjection
open RadiusTwoPaidObservationBounds
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

def decode {ι κ : Type*} (bits : ℕ) (A : Matrix ι κ ℤ) : Matrix ι κ ℚ :=
  fun i j => (A i j : ℚ) / 2^bits

def absEntries {ι κ : Type*} (A : Matrix ι κ ℤ) : Matrix ι κ ℤ :=
  fun i j => |A i j|

theorem decode_mul {ι κ μ : Type*} [Fintype κ]
    (b a : ℕ) (C : Matrix ι κ ℤ) (A : Matrix κ μ ℤ) :
    decode b C * decode a A = decode (b+a) (C*A) := by
  ext i j
  simp only [decode, Matrix.mul_apply, Int.cast_sum, Int.cast_mul,
    div_mul_div_comm, pow_add, Finset.sum_div]

theorem decode_transpose {ι κ : Type*} (b : ℕ) (A : Matrix ι κ ℤ) :
    (decode b A).transpose = decode b A.transpose := rfl

theorem decode_abs {ι κ : Type*} (b : ℕ) (A : Matrix ι κ ℤ) :
    Matrix.of (fun i j => |decode b A i j|) = decode b (absEntries A) := by
  ext i j
  simp only [Matrix.of_apply, decode, absEntries, abs_div, Int.cast_abs,
    abs_of_pos (by positivity : (0 : ℚ) < 2^b)]

def squaredPrice (V : Matrix ResidualRows Head ℤ) : ℤ :=
  ∑ i, ∑ j, (V i j)^2

theorem decoded_observedRows (C : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) :
    observedRows (decode 45 C) (decode 24 A) = decode 69 (C*A) := by
  exact decode_mul 45 24 C A

theorem decoded_radiusRows (R : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) :
    decode 45 R * Matrix.of (fun k j => |decode 24 A k j|) =
      decode 69 (R*absEntries A) := by
  rw [decode_abs]
  exact decode_mul 45 24 R (absEntries A)

theorem decoded_observationPrice (R : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) :
    observationPrice (decode 45 R) (decode 24 A) =
      (squaredPrice (R*absEntries A) : ℚ) / 2^138 := by
  unfold observationPrice
  rw [decoded_radiusRows]
  simp only [decode, squaredPrice, Int.cast_sum, Int.cast_pow,
    div_pow, ← pow_mul, Finset.sum_div]

theorem decoded_gram (U : Matrix ResidualRows Head ℤ) :
    (decode 69 U).transpose * decode 69 U = decode 138 (U.transpose*U) := by
  rw [decode_transpose]
  exact decode_mul 69 69 U.transpose U

theorem scale_rawBounds (c x r : ℚ) (hr : 0 ≤ r) :
    scale c (rawBounds x r) = rawBounds (c*x) (|c| * r) := by
  have hxu : x-r ≤ x+r := by linarith
  rcases le_total 0 c with hc | hc
  · have h := mul_le_mul_of_nonneg_left hxu hc
    simp only [scale, mul, point, rawBounds, min_self, max_self,
      min_eq_left h, max_eq_right h, abs_of_nonneg hc]
    congr 1 <;> ring
  · have h := mul_le_mul_of_nonpos_left hxu hc
    simp only [scale, mul, point, rawBounds, min_self, max_self,
      min_eq_right h, max_eq_left h, abs_of_nonpos hc]
    congr 1 <;> ring

theorem sum_rawBounds {ι : Type*} (s : Finset ι) (c r : ι → ℚ) :
    sum s (fun k => rawBounds (c k) (r k)) =
      rawBounds (∑ k ∈ s, c k) (∑ k ∈ s, r k) := by
  simp only [sum, rawBounds, Finset.sum_sub_distrib, Finset.sum_add_distrib]

/-- Exact interval product before any outer rounding; every radius retains
the absolute coefficient of the actual reconstruction. -/
theorem overlapProductBounds_grid (C R : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) (hR : ∀ i j, 0 ≤ R i j)
    (k : Fin 448) (j : Head) :
    overlapProductBounds (decode 45 C) (decode 45 R) (decode 24 A) k j =
      rawBounds (decode 69 (C*A) (overlapRow k) j)
        (decode 69 (R*absEntries A) (overlapRow k) j) := by
  have hRadius (l : Trial) : 0 ≤ decode 45 R (overlapRow k) l := by
    unfold decode
    exact div_nonneg (by exact_mod_cast hR (overlapRow k) l) (by positivity)
  unfold overlapProductBounds
  simp_rw [scale_rawBounds _ _ _ (hRadius _)]
  rw [sum_rawBounds]
  have hC := congrArg (fun M : Matrix ResidualRows Head ℚ => M (overlapRow k) j)
    (decode_mul 45 24 C A)
  have hV := congrArg (fun M : Matrix ResidualRows Head ℚ => M (overlapRow k) j)
    (decoded_radiusRows R A)
  simp only [Matrix.mul_apply, Matrix.of_apply] at hC hV
  apply congrArg₂ rawBounds
  · simpa only [mul_comm] using hC
  · simpa only [mul_comm] using hV

/-- Numerator of the exact Young charge on the 143-bit grid. -/
def chargeNumerator (G : Matrix Head Head ℤ) (P : ℤ) : Matrix Head Head ℤ :=
  33 • G + (1056*P) • 1

theorem decoded_observedCharge (C R : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) :
    observedCharge (decode 45 C) (decode 45 R) (decode 24 A) =
      decode 143 (chargeNumerator ((C*A).transpose*(C*A))
        (squaredPrice (R*absEntries A))) := by
  unfold observedCharge
  rw [decoded_observedRows]
  dsimp only
  rw [decoded_gram, decoded_observationPrice]
  ext i j
  by_cases hij : i = j
  · subst j
    simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply,
      ite_true, decode, chargeNumerator, Int.cast_add, Int.cast_mul, Int.cast_ofNat,
      Int.cast_one]
    norm_num
    ring
  · simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply,
      hij, ite_false, decode, chargeNumerator, Int.cast_add, Int.cast_mul,
      Int.cast_ofNat, Int.cast_zero]
    norm_num
    ring

theorem scaled_rawBounds_sum {ι : Type*} [Fintype ι]
    (c r w : ι → ℚ) (hr : ∀ k, 0 ≤ r k) :
    sum Finset.univ (fun k => scale (w k) (rawBounds (c k) (r k))) =
      rawBounds (∑ k, w k * c k) (∑ k, |w k| * r k) := by
  simp_rw [scale_rawBounds _ _ _ (hr _)]
  exact sum_rawBounds _ _ _

theorem integer_radiusRows_nonneg (R : Matrix ResidualRows Trial ℤ)
    (A : Matrix Trial Head ℤ) (hR : ∀ i j, 0 ≤ R i j) (i : ResidualRows) (j : Head) :
    0 ≤ (R*absEntries A) i j := by
  change 0 ≤ ∑ k, R i k * |A k j|
  exact Finset.sum_nonneg (fun k _ => mul_nonneg (hR i k) (abs_nonneg (A k j)))

def headCross (C : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ) :
    Matrix Head Head ℤ :=
  (C.submatrix overlapRow headSlot).transpose * A.submatrix overlapSlot id

def headCrossRadius (R : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ) :
    Matrix Head Head ℤ :=
  (R.submatrix overlapRow headSlot).transpose * absEntries (A.submatrix overlapSlot id)

def overlapCross (C : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ) :
    Matrix Head Head ℤ :=
  (A.submatrix overlapSlot id).transpose * (C*A).submatrix overlapRow id

def overlapCrossRadius (R : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ) :
    Matrix Head Head ℤ :=
  (absEntries (A.submatrix overlapSlot id)).transpose *
    (R*absEntries A).submatrix overlapRow id

/-- The two overlap terms retain their different grids: 69 and 93 bits. -/
theorem splitTrialBounds_grid (head : Head → Head → Bounds)
    (C R : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ)
    (hR : ∀ i j, 0 ≤ R i j) (i j : Head) :
    splitTrialBounds head (decode 45 C) (decode 45 R) (decode 24 A) i j =
      add (add (head i j)
        (rawBounds (decode 69 (headCross C A) i j)
          (decode 69 (headCrossRadius R A) i j)))
        (rawBounds (decode 93 (overlapCross C A) i j)
          (decode 93 (overlapCrossRadius R A) i j)) := by
  have hR' (k : Fin 448) : 0 ≤ decode 45 R (overlapRow k) (headSlot i) := by
    exact div_nonneg (by exact_mod_cast hR _ _) (by positivity)
  have hV (k : Fin 448) : 0 ≤ decode 69 (R*absEntries A) (overlapRow k) j := by
    exact div_nonneg (by exact_mod_cast integer_radiusRows_nonneg R A hR _ _) (by positivity)
  unfold splitTrialBounds
  simp_rw [overlapProductBounds_grid C R A hR]
  rw [scaled_rawBounds_sum _ _ _ hR', scaled_rawBounds_sum _ _ _ hV]
  have hB := congrArg (fun M : Matrix Head Head ℚ => M i j)
    (decode_mul 45 24 (C.submatrix overlapRow headSlot).transpose
      (A.submatrix overlapSlot id))
  have hb := congrArg (fun M : Matrix Head Head ℚ => M i j)
    (decode_mul 45 24 (R.submatrix overlapRow headSlot).transpose
      (absEntries (A.submatrix overlapSlot id)))
  have hD := congrArg (fun M : Matrix Head Head ℚ => M i j)
    (decode_mul 24 69 (A.submatrix overlapSlot id).transpose
      ((C*A).submatrix overlapRow id))
  have hd := congrArg (fun M : Matrix Head Head ℚ => M i j)
    (decode_mul 24 69 (absEntries (A.submatrix overlapSlot id)).transpose
      ((R*absEntries A).submatrix overlapRow id))
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.submatrix_apply, id_eq,
    decode, headCross, headCrossRadius, overlapCross, overlapCrossRadius,
    absEntries, abs_div, Int.cast_abs,
    abs_of_pos (by positivity : (0 : ℚ) < 2^24)] at hB hb hD hd ⊢
  rw [← hB, ← hb, ← hD, ← hd]
  (congr 2; apply congrArg₂ rawBounds) <;>
    apply Finset.sum_congr rfl <;> intro k _ <;> ring

/-- Endpoints on one exact integer grid; no rounding is performed. -/
def gridBounds (bits : ℕ) (lo hi : Matrix Head Head ℤ) (i j : Head) : Bounds :=
  (decode bits lo i j, decode bits hi i j)

theorem scale_of_ordered (c : ℚ) (a : Bounds) (hc : 0 ≤ c) (ha : a.1 ≤ a.2) :
    scale c a = (c*a.1, c*a.2) := by
  have h := mul_le_mul_of_nonneg_left ha hc
  simp only [scale, mul, point, min_self, max_self, min_eq_left h, max_eq_right h]

def orientedLower (H B b D d O Q : Matrix Head Head ℤ) : Matrix Head Head ℤ :=
  fun i j => H i j * 2^99 + (B i j-b i j)*2^74 + (D i j-d i j)*2^50 -
    5*(O i j + Q i j*2^79)

def orientedUpper (H B b D d O Q : Matrix Head Head ℤ) : Matrix Head Head ℤ :=
  fun i j => H i j * 2^99 + (B i j+b i j)*2^74 + (D i j+d i j)*2^50 -
    5*(O i j + Q i j*2^79)

/-- Exact calculated endpoints on grid 2^-143 before symmetrizing.
The remote endpoints exchange roles under the negative charge. -/
theorem paidBounds_grid (Hlo Hhi Qlo Qhi : Matrix Head Head ℤ)
    (C R : Matrix ResidualRows Trial ℤ) (A : Matrix Trial Head ℤ)
    (hR : ∀ i j, 0 ≤ R i j) (hQ : ∀ i j, Qlo i j ≤ Qhi i j) (i j : Head) :
    paidBounds (gridBounds 44 Hlo Hhi) (decode 45 C) (decode 45 R) (decode 24 A)
      (gridBounds 64 Qlo Qhi) i j =
    gridBounds 143
      (orientedLower Hlo (headCross C A) (headCrossRadius R A)
        (overlapCross C A) (overlapCrossRadius R A)
        (chargeNumerator ((C*A).transpose*(C*A)) (squaredPrice (R*absEntries A))) Qhi)
      (orientedUpper Hhi (headCross C A) (headCrossRadius R A)
        (overlapCross C A) (overlapCrossRadius R A)
        (chargeNumerator ((C*A).transpose*(C*A)) (squaredPrice (R*absEntries A))) Qlo) i j := by
  have hQ' : (gridBounds 64 Qlo Qhi i j).1 ≤ (gridBounds 64 Qlo Qhi i j).2 := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hQ i j) (by positivity)
  unfold paidBounds
  rw [splitTrialBounds_grid _ C R A hR, decoded_observedCharge]
  rw [scale_of_ordered 5 _ (by norm_num) (by
    exact add_le_add le_rfl hQ')]
  apply Prod.ext <;>
    simp only [sub, add, neg, point, rawBounds, gridBounds, decode,
      orientedLower, orientedUpper, Int.cast_sub, Int.cast_add, Int.cast_mul,
      Int.cast_pow, Int.cast_ofNat] <;> norm_num <;> ring

/-- Symmetrizing a valid 143-bit interval adds its two integer orientations
and divides by 2^144, retaining every endpoint exactly. -/
theorem symmetric_gridBounds (lo hi : Matrix Head Head ℤ)
    (h : ∀ i j, lo i j ≤ hi i j) (i j : Head) :
    RadiusTwoPaidLowerBounds.symmetricBounds (gridBounds 143 lo hi) i j =
      gridBounds 144 (lo + lo.transpose) (hi + hi.transpose) i j := by
  have h' (i j : Head) : (gridBounds 143 lo hi i j).1 ≤
      (gridBounds 143 lo hi i j).2 := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast h i j) (by positivity)
  unfold RadiusTwoPaidLowerBounds.symmetricBounds
  rw [scale_of_ordered (1/2) _ (by norm_num) (add_le_add (h' i j) (h' j i))]
  apply Prod.ext <;>
    simp only [gridBounds, add, decode, Matrix.add_apply, Matrix.transpose_apply,
      Int.cast_add] <;> norm_num <;> ring

/-- Source enclosure can discharge endpoint order without a separate numeric
positivity check on the integer table. -/
theorem gridBounds_ordered_of_encloses (bits : ℕ) (lo hi : Matrix Head Head ℤ)
    (i j : Head) {x : ℝ} (h : Encloses (gridBounds bits lo hi i j) x) :
    lo i j ≤ hi i j := by
  have h' : decode bits lo i j ≤ decode bits hi i j := by
    exact_mod_cast h.1.trans h.2
  have h'' : (lo i j : ℚ) ≤ (hi i j : ℚ) := by
    exact (div_le_div_iff_of_pos_right (by positivity : (0 : ℚ) < 2^bits)).mp h'
  exact_mod_cast h''

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidAssemblyGrid
