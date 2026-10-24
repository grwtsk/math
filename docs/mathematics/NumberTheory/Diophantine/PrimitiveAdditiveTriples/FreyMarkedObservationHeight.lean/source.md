# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedObservationHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b97e30744f8bdfc847fbea928d56cfa714958b4f` · SHA-256 `bdaab346b7ea9b79aef9935df221ac13e5c67520e61b8e183a1e99cfb4354607`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Source recovery from the SAME ordered ACTUAL Frey affine-point evaluation.
Normalize differences only for a nonconstant affine-linear section. The
result is independent of section translation and nonzero scale, but its
exact denominator is the primitive source c. Real boundedness is not a
height bound. Raw max(0,a,b) is max(a,b), NOT c. The recovered triple and
normalized rational observation have height c in the named affine frame.
No complete H0, unmarked moduli height, conductor or abc estimate is claimed.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Height.PrimitivePairNormalization
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedObservationHeight

open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.NumberTheory.Height.PrimitivePairNormalization
open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

/-- The map already reads xRep from the actual three marked curve points. -/
def raw (t : PrimitiveAdditiveTriple) : Fin 3 → ℚ :=
  t.freyAffinePortEval freyXRationalSection

/-- Canonical normalization by the original source c; not a new model or fitted curve. -/
def normalizedSection (t : PrimitiveAdditiveTriple) : FreyRationalSectionCoordinates :=
  ![0, 1 / (t.c : ℚ)]

def observation (t : PrimitiveAdditiveTriple) : Fin 3 → ℚ :=
  t.freyAffinePortEval (normalizedSection t)

theorem observation_eq (t : PrimitiveAdditiveTriple) :
    observation t = profile t.a t.b t.c := by
  rw [observation, t.freyAffinePortEval_eq]
  funext i
  fin_cases i <;> simp [normalizedSection, profile, div_eq_mul_inv]

/-- The relevant denominator is the marked evaluation gap, not an arbitrary return period. -/
theorem affine_gap (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates) :
    gap (t.freyAffinePortEval v) = (t.c : ℚ) * v 1 := by
  have hs : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  rw [t.freyAffinePortEval_eq]
  change (v 0 + (t.a : ℚ)*v 1) - (v 0 - (t.b : ℚ)*v 1) = _
  rw [← hs]
  ring

theorem affine_gap_ne_zero (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates)
    (hv : v 1 ≠ 0) : gap (t.freyAffinePortEval v) ≠ 0 := by
  rw [affine_gap]
  exact mul_ne_zero (Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)) hv

/-- Normalize the EXISTING evaluation itself, retaining the nonzero-slope guard. -/
def observedRatio (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates)
    (hv : v 1 ≠ 0) : Fin 3 → ℚ :=
  normalize (t.freyAffinePortEval v) (affine_gap_ne_zero t v hv)

/-- Every nonconstant selected affine expression gives the same source-identified ratio. -/
theorem observedRatio_eq (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates)
    (hv : v 1 ≠ 0) : observedRatio t v hv = observation t := by
  have hcq : (t.c : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  rw [observation_eq]
  funext i
  change (t.freyAffinePortEval v i - t.freyAffinePortEval v 0) /
    gap (t.freyAffinePortEval v) = profile t.a t.b t.c i
  rw [affine_gap]
  simp only [t.freyAffinePortEval_eq]
  fin_cases i <;> simp [profile] <;> field_simp [hcq, hv] <;> ring

/-- Constant sections do not supply a normalized marked observation. -/
theorem constant_gap_zero (t : PrimitiveAdditiveTriple) (u : ℚ) :
    gap (t.freyAffinePortEval (![u,0] : Fin 2 → ℚ)) = 0 := by rw [affine_gap]; simp

/-- The actual LCM of reduced rational denominators recovers c exactly. -/
theorem observation_denominator (t : PrimitiveAdditiveTriple) :
    denominator (observation t) = t.c := by
  rw [observation_eq]
  exact profile_denominator t.a t.b t.c (Nat.ne_of_gt t.c_pos)
    t.bezoutA t.bezoutB t.bezout_identity

theorem observation_max_le_one (t : PrimitiveAdditiveTriple) :
    maxAbs (observation t) ≤ 1 := by
  rw [observation_eq]
  exact profile_max_le_one t.a t.b t.c (Nat.ne_of_gt t.c_pos) t.a_lt_c.le t.b_lt_c.le

theorem observation_height (t : PrimitiveAdditiveTriple) :
    height (observation t) = (t.c : ℚ) := by
  rw [height, observation_denominator, max_eq_left (observation_max_le_one t), mul_one]

theorem observation_logHeight (t : PrimitiveAdditiveTriple) :
    logHeight (observation t) = Real.log (t.c : ℝ) := by
  rw [logHeight, observation_height, Rat.cast_natCast]

/-- Normalize the real size, but retain rather than discard arithmetic depth. -/
theorem observation_prime_depth (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (denominator (observation t)).factorization p = t.c.factorization p := by
  rw [observation_denominator]

/-- Extraction uses the OLD primitive-numerator construction, not new supplied source labels. -/
theorem observation_numerator (t : PrimitiveAdditiveTriple) :
    numerator (observation t) = ![0, (t.a : ℤ), -(t.b : ℤ)] := by
  rw [observation_eq]
  exact profile_numerator t.a t.b t.c (Nat.ne_of_gt t.c_pos)
    t.bezoutA t.bezoutB t.bezout_identity

/-- Recover all three original coordinates by the EXISTING integral postprocessing. -/
theorem recover_observation (t : PrimitiveAdditiveTriple) :
    recoverABCValues (numerator (observation t)) =
      ![(t.a : ℤ), (t.b : ℤ), (t.c : ℤ)] := by
  rw [observation_numerator]
  have h := t.recoverABC_threePortEval_x
  rw [t.threePortEval_x] at h
  exact h

/-- Primitivity fixes the scale which normalization would otherwise discard. -/
theorem observation_injective : Function.Injective observation := by
  intro t u h
  have hn := congrArg numerator h
  rw [observation_numerator, observation_numerator] at hn
  have ha : t.a = u.a := by
    have hh := congrFun hn (1 : Fin 3)
    simpa using hh
  have hb : t.b = u.b := by
    have hh := congrFun hn (2 : Fin 3)
    simpa using hh
  exact PrimitiveAdditiveTriple.coordinates_injective (Prod.ext ha hb)

/-- The canonical normalized section itself carries the same affine coefficient height. -/
theorem normalizedSection_height (t : PrimitiveAdditiveTriple) :
    height (normalizedSection t) = (t.c : ℚ) :=
  reciprocal_section_height t.c (Nat.ne_of_gt t.c_pos)

/-- In contrast, x has a fixed coefficient vector independent of the marked source. -/
theorem xSection_height : height freyXRationalSection = 1 := by
  have hi : freyXRationalSection = (fun i => ((![0,1] : Fin 2 → ℤ) i : ℚ)) := by
    funext i; fin_cases i <;> simp [freyXRationalSection]
  rw [hi, height_integer]
  apply max_eq_left
  apply (maxAbs_le_iff _ _).mpr
  intro i; fin_cases i <;> norm_num

/-- Correct the raw maximum: it is max(a,b), NOT a+b=c. -/
theorem raw_max (t : PrimitiveAdditiveTriple) :
    maxAbs (raw t) = max (t.a : ℚ) (t.b : ℚ) := by
  have hraw : raw t = ![0, (t.a : ℚ), -(t.b : ℚ)] := t.freyAffinePortEval_x
  apply le_antisymm
  · apply (maxAbs_le_iff _ _).mpr
    intro i
    rw [hraw]
    fin_cases i
    · simpa using (Nat.cast_nonneg t.a).trans (le_max_left (t.a : ℚ) (t.b : ℚ))
    · simpa using le_max_left (t.a : ℚ) (t.b : ℚ)
    · simpa using le_max_right (t.a : ℚ) (t.b : ℚ)
  · apply max_le
    · simpa [hraw] using entry_le (raw t) (1 : Fin 3)
    · simpa [hraw] using entry_le (raw t) (2 : Fin 3)

theorem raw_height (t : PrimitiveAdditiveTriple) :
    height (raw t) = max (t.a : ℚ) (t.b : ℚ) := by
  have hraw : raw t = (fun i => ((![0,(t.a : ℤ),-(t.b : ℤ)] : Fin 3 → ℤ) i : ℚ)) := by
    rw [raw, t.freyAffinePortEval_x]
    funext i; fin_cases i <;> simp
  have hD : denominator (raw t) = 1 := by rw [hraw]; exact denominator_int _
  have ha1 : (1 : ℚ) ≤ t.a := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt t.a_pos)
  have h1 : (1 : ℚ) ≤ max (t.a : ℚ) (t.b : ℚ) := ha1.trans (le_max_left _ _)
  rw [height, hD, raw_max, max_eq_right h1]
  simp

/-- Exact raw-to-source comparison, not a mislabeled equality. -/
theorem raw_source_comparison (t : PrimitiveAdditiveTriple) :
    height (raw t) ≤ (t.c : ℚ) ∧ (t.c : ℚ) ≤ 2 * height (raw t) := by
  rw [raw_height]
  have hs : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  constructor
  · apply max_le
    · exact_mod_cast t.a_lt_c.le
    · exact_mod_cast t.b_lt_c.le
  · have ha := le_max_left (t.a : ℚ) (t.b : ℚ)
    have hb := le_max_right (t.a : ℚ) (t.b : ℚ)
    linarith

/-- The original ordered primitive triple in the SAME affine-height convention. -/
def sourceCoordinates (t : PrimitiveAdditiveTriple) : Fin 3 → ℚ :=
  ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)]

theorem source_height (t : PrimitiveAdditiveTriple) :
    height (sourceCoordinates t) = (t.c : ℚ) := by
  have hcast : sourceCoordinates t =
      (fun i => ((![(t.a : ℤ), (t.b : ℤ), (t.c : ℤ)] : Fin 3 → ℤ) i : ℚ)) := by
    funext i; fin_cases i <;> simp [sourceCoordinates]
  have hD : denominator (sourceCoordinates t) = 1 := by
    rw [hcast]; exact denominator_int _
  have hM : maxAbs (sourceCoordinates t) = (t.c : ℚ) := by
    apply le_antisymm
    · apply (maxAbs_le_iff _ _).mpr
      intro i
      fin_cases i
      · simpa [sourceCoordinates] using (show (t.a : ℚ) ≤ t.c by exact_mod_cast t.a_lt_c.le)
      · simpa [sourceCoordinates] using (show (t.b : ℚ) ≤ t.c by exact_mod_cast t.b_lt_c.le)
      · simp [sourceCoordinates]
    · simpa [sourceCoordinates] using entry_le (sourceCoordinates t) (2 : Fin 3)
  have hc1 : (1 : ℚ) ≤ t.c := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  rw [height, hD, hM, max_eq_right hc1]
  simp

/-- An exact marked-source observation identity, not an upper bound by radical support. -/
theorem observation_source_height (t : PrimitiveAdditiveTriple) :
    height (observation t) = height (sourceCoordinates t) := by
  rw [observation_height, source_height]

/-- Explicit native primitive sources of arbitrary third coordinate >=2. -/
def unitSource (N : ℕ) (hN : 2 ≤ N) : PrimitiveAdditiveTriple where
  a := 1
  b := N - 1
  c := N
  a_pos := by decide
  b_pos := by omega
  sum_eq := by omega
  coprime_ab := by simp

/-- Source height is unbounded even though x has height one and normalized real size is bounded. -/
theorem no_uniform_height_from_real_box (B : ℕ) :
    ∃ t : PrimitiveAdditiveTriple,
      maxAbs (observation t) ≤ 1 ∧ (B : ℚ) < height (observation t) := by
  refine ⟨unitSource (B + 2) (by omega), observation_max_le_one _, ?_⟩
  rw [observation_height]
  change (B : ℚ) < ((B + 2 : ℕ) : ℚ)
  exact_mod_cast (by omega : B < B + 2)

/-- The normalized profile deliberately remembers all powers in the chosen source denominator. -/
theorem unitSource_denominator (N : ℕ) (hN : 2 ≤ N) :
    denominator (observation (unitSource N hN)) = N := observation_denominator _

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedObservationHeight
```
