/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's normalized rational projective heights, finite gcd and max norms
(Apache-2.0). Formalization assistance: OpenAI.

Projective coordinate-height bounds at the base affine-linear stage only.
A height-lower-bound for observations is NOT an upper bound by the radical.
No intrinsic higher-section metric or number-field family bound is claimed. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds
import Mathlib.NumberTheory.Height.NumberField

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Saturation preserves normalized integral content, including multiplicity. -/
theorem PrimitiveAdditiveTriple.threePort_gcd_eq (t : PrimitiveAdditiveTriple)
    (v : FreySectionCoordinates) :
    Finset.univ.gcd (t.threePortEval v) = Finset.univ.gcd v := by
  apply Int.dvd_antisymm Finset.Int.finsetGcd_nonneg Finset.Int.finsetGcd_nonneg
  · apply Finset.dvd_gcd
    intro j _
    exact (t.threePort_commonDivisor_iff _ v).mp
      (fun i => Finset.gcd_dvd (Finset.mem_univ i)) j
  · apply Finset.dvd_gcd
    intro i _
    exact (t.threePort_commonDivisor_iff _ v).mpr
      (fun j => Finset.gcd_dvd (Finset.mem_univ j)) i

lemma frey_iSup2_abs (v : Fin 2 → ℤ) :
    (⨆ i, |v i|) = max |v 0| |v 1| := by
  apply le_antisymm
  · apply ciSup_le
    intro i
    fin_cases i
    · exact le_max_left _ _
    · exact le_max_right _ _
  · exact max_le (Finite.le_ciSup_of_le 0 le_rfl)
      (Finite.le_ciSup_of_le 1 le_rfl)

lemma frey_iSup3_abs (y : Fin 3 → ℤ) :
    (⨆ i, |y i|) = max |y 0| (max |y 1| |y 2|) := by
  apply le_antisymm
  · apply ciSup_le
    intro i
    fin_cases i
    · exact le_max_left _ _
    · exact (le_max_left _ _).trans (le_max_right _ _)
    · exact (le_max_right _ _).trans (le_max_right _ _)
  · exact max_le (Finite.le_ciSup_of_le 0 le_rfl)
      (max_le (Finite.le_ciSup_of_le 1 le_rfl)
        (Finite.le_ciSup_of_le 2 le_rfl))

/-- A declared Bezout combination proves content one, not just nonzero rank. -/
lemma frey_gcd_eq_one_of_combination {ι : Type*} [Fintype ι]
    (z : ι → ℤ) (i j : ι) (r s : ℤ) (h : r * z i + s * z j = 1) :
    Finset.univ.gcd z = 1 := by
  apply Int.dvd_antisymm Finset.Int.finsetGcd_nonneg (by norm_num)
  · rw [← h]
    exact dvd_add
      (dvd_mul_of_dvd_right (Finset.gcd_dvd (Finset.mem_univ i)) r)
      (dvd_mul_of_dvd_right (Finset.gcd_dvd (Finset.mem_univ j)) s)
  · exact one_dvd _

/-- The normalized logarithmic coordinate-height comparison for primitive
integral representatives, using Mathlib's actual height rather than a new
surrogate definition. -/
theorem PrimitiveAdditiveTriple.frey_logHeight_lower_of_primitive
    (t : PrimitiveAdditiveTriple) (v : FreySectionCoordinates)
    (hv : Finset.univ.gcd v = 1) :
    Height.logHeight (freySectionCoordinatesToRat v) ≤
      Height.logHeight (t.freyAffinePortEval (freySectionCoordinatesToRat v)) := by
  rw [t.freyAffinePortEval_intCast]
  change Height.logHeight (((↑) : ℤ → ℚ) ∘ v) ≤
    Height.logHeight (((↑) : ℤ → ℚ) ∘ (t.threePortEval v))
  rw [Rat.logHeight_eq_max_abs_of_gcd_eq_one hv,
    Rat.logHeight_eq_max_abs_of_gcd_eq_one (by rw [t.threePort_gcd_eq, hv]),
    frey_iSup2_abs, frey_iSup3_abs]
  have h := t.freyAffinePortEval_norm_lower (freySectionCoordinatesToRat v)
  rw [t.freyAffinePortEval_intCast] at h
  dsimp only [freyMaxNorm2, freyMaxNorm3, freySectionCoordinatesToRat,
    freyThreePortValuesToRat] at h
  have hint : max |v 0| |v 1| ≤
      max |t.threePortEval v 0| (max |t.threePortEval v 1| |t.threePortEval v 2|) := by
    exact_mod_cast h
  have hvne : v ≠ 0 := by
    intro hz
    have hh : Finset.univ.gcd v = 0 :=
      Finset.gcd_eq_zero_iff.mpr (by intro i _; rw [hz]; rfl)
    rw [hv] at hh
    exact one_ne_zero hh
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hvne
  have hpos : (0 : ℤ) < max |v 0| |v 1| := by
    have hsup : (0 : ℤ) < ⨆ j, |v j| :=
      (abs_pos.mpr hi).trans_le (Finite.le_ciSup_of_le i le_rfl)
    simpa only [frey_iSup2_abs] using hsup
  apply Real.log_le_log (by exact_mod_cast hpos)
  exact_mod_cast hint

/-- Rational scaling commutes with the actual affine observation map. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_rat_smul
    (t : PrimitiveAdditiveTriple) (k : ℚ) (v : FreyRationalSectionCoordinates) :
    t.freyAffinePortEval (k • v) = k • t.freyAffinePortEval v := by
  rw [t.freyAffinePortEval_eq, t.freyAffinePortEval_eq]
  ext i
  fin_cases i <;> simp <;> ring

/-- The same projective bound for any rational vector supplied with a
primitive integral representative. The representative and nonzero scalar are
explicit; this statement does not hide a choice of integral coordinates. -/
theorem PrimitiveAdditiveTriple.frey_logHeight_lower_of_representative
    (t : PrimitiveAdditiveTriple) (w : FreyRationalSectionCoordinates)
    (v : FreySectionCoordinates) (hv : Finset.univ.gcd v = 1)
    (k : ℚ) (hk : k ≠ 0) (hw : w = k • freySectionCoordinatesToRat v) :
    Height.logHeight w ≤ Height.logHeight (t.freyAffinePortEval w) := by
  rw [hw, t.freyAffinePortEval_rat_smul]
  simp only [Height.logHeight_eq_log_mulHeight]
  rw [Height.mulHeight_smul_eq_mulHeight _ hk,
    Height.mulHeight_smul_eq_mulHeight _ hk]
  simpa only [Height.logHeight_eq_log_mulHeight] using
    t.frey_logHeight_lower_of_primitive v hv

/-- Exact projective height of the x observation. It generally grows even
though the coefficient vector of x is constant. -/
theorem PrimitiveAdditiveTriple.frey_observation_logHeight
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight (t.freyAffinePortEval freyXRationalSection) =
      Real.log (max (t.a : ℝ) (t.b : ℝ)) := by
  let z : Fin 3 → ℤ := ![0, (t.a : ℤ), -(t.b : ℤ)]
  have hz : Finset.univ.gcd z = 1 :=
    frey_gcd_eq_one_of_combination z 1 2 t.bezoutA (-t.bezoutB) (by
      simpa [z] using t.bezout_identity)
  have heq : t.freyAffinePortEval freyXRationalSection =
      ((↑) : ℤ → ℚ) ∘ z := by
    rw [t.freyAffinePortEval_x]
    ext i
    fin_cases i <;> simp [z]
  rw [heq, Rat.logHeight_eq_max_abs_of_gcd_eq_one hz, frey_iSup3_abs]
  simp [z, abs_of_nonneg (Int.natCast_nonneg t.a),
    abs_of_nonneg (Int.natCast_nonneg t.b), abs_neg]

/-- Exact projective height of the original primitive additive triple. -/
theorem PrimitiveAdditiveTriple.frey_triple_logHeight
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] = Real.log (t.c : ℝ) := by
  let z : Fin 3 → ℤ := ![(t.a : ℤ), (t.b : ℤ), (t.c : ℤ)]
  have hz : Finset.univ.gcd z = 1 :=
    frey_gcd_eq_one_of_combination z 0 1 t.bezoutA t.bezoutB (by
      simpa [z] using t.bezout_identity)
  have heq : ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] =
      ((↑) : ℤ → ℚ) ∘ z := by
    ext i
    fin_cases i <;> simp [z]
  have ha : (t.a : ℤ) ≤ (t.c : ℤ) := by exact_mod_cast t.a_lt_c.le
  have hb : (t.b : ℤ) ≤ (t.c : ℤ) := by exact_mod_cast t.b_lt_c.le
  rw [heq, Rat.logHeight_eq_max_abs_of_gcd_eq_one hz, frey_iSup3_abs]
  simp [z, abs_of_nonneg (Int.natCast_nonneg t.a),
    abs_of_nonneg (Int.natCast_nonneg t.b), abs_of_nonneg (Int.natCast_nonneg t.c),
    max_eq_right ha, max_eq_right hb]

/-- Decoding the same source triple costs at most log 2 in projective height.
This comparison contains no radical on either side. -/
theorem PrimitiveAdditiveTriple.frey_decoding_logHeight_bounds
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight (t.freyAffinePortEval freyXRationalSection) ≤
        Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] ∧
    Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] ≤
        Height.logHeight (t.freyAffinePortEval freyXRationalSection) + Real.log 2 := by
  rw [t.frey_observation_logHeight, t.frey_triple_logHeight]
  have hc : (0 : ℝ) < (t.c : ℝ) := by exact_mod_cast t.c_pos
  have ha : (0 : ℝ) < (t.a : ℝ) := by exact_mod_cast t.a_pos
  have hm : (0 : ℝ) < max (t.a : ℝ) (t.b : ℝ) := ha.trans_le (le_max_left _ _)
  have hlo : max (t.a : ℝ) (t.b : ℝ) ≤ (t.c : ℝ) := by
    exact max_le (by exact_mod_cast t.a_lt_c.le) (by exact_mod_cast t.b_lt_c.le)
  have hhi : (t.c : ℝ) ≤ 2 * max (t.a : ℝ) (t.b : ℝ) := by
    have hs : (t.a : ℝ) + (t.b : ℝ) = (t.c : ℝ) := by exact_mod_cast t.sum_eq
    have h1 := le_max_left (t.a : ℝ) (t.b : ℝ)
    have h2 := le_max_right (t.a : ℝ) (t.b : ℝ)
    linarith
  constructor
  · exact Real.log_le_log hm hlo
  · calc
      Real.log (t.c : ℝ) ≤ Real.log (2 * max (t.a : ℝ) (t.b : ℝ)) :=
        Real.log_le_log hc hhi
      _ = Real.log (max (t.a : ℝ) (t.b : ℝ)) + Real.log 2 := by
        rw [Real.log_mul (by norm_num) hm.ne', add_comm]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
