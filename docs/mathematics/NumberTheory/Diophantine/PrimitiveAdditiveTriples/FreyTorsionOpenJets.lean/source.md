# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c5725845a06d37d088501206039d609ae89ed27` · SHA-256 `8cff3913de3bea8e898e9e5ed6c0adf0bc5e36f901dac88986591fe35cc2aa68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the actual localized Frey coordinate algebra and Mathlib ideal quotients.
Formalization assistance: OpenAI.

Inter-anchor ideal powers for the full two-torsion pullback. Source/target
ideals are different even though both lie in the same open coordinate ring.
All exponents are retained, including zero. No completion or line-bundle
comparison, coefficient-metric law, or global integral atlas is claimed.
Unelaborated source proof scripts. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionContact

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets

open FreyTorsionOpen
variable {R : Type*} [CommRing R]

/-- The ideal of the source anchor Ta in the actual open coordinate algebra. -/
def atA (a b : R) : Ideal (OpenCurve a b) := Ideal.span {x a b - scalar a b a, y a b}
/-- The ideal of the target anchor Tb; it is not silently identified with atA. -/
def atB (a b : R) : Ideal (OpenCurve a b) := Ideal.span {x a b + scalar a b b, y a b}

/-- Full, untruncated source/target displacement identity. -/
theorem pullback_target_displacement (a b l : R) (hl : a * b * l = 1) :
    pullback a b l hl (x a b + scalar a b b) =
      scalar a b b * invX a b * (x a b - scalar a b a) := by
  rw [map_add, pullback_x, pullback_scalar, map_mul]
  calc
    _ = scalar a b b * (x a b * invX a b) -
        scalar a b a * scalar a b b * invX a b := by rw [x_mul_invX]; ring
    _ = _ := by ring

/-- The reverse displacement identity keeps the other anchor. -/
theorem pullback_source_displacement (a b l : R) (hl : a * b * l = 1) :
    pullback a b l hl (x a b - scalar a b a) =
      -(scalar a b a) * invX a b * (x a b + scalar a b b) := by
  rw [map_sub, pullback_x, pullback_scalar, map_mul]
  calc
    _ = -(scalar a b a) * (x a b * invX a b) -
        scalar a b a * scalar a b b * invX a b := by rw [x_mul_invX]; ring
    _ = _ := by ring

/-- Pullback takes the target section ideal into the source section ideal. -/
theorem map_atB_le (a b l : R) (hl : a * b * l = 1) :
    (atB a b).map (pullback a b l hl) ≤ atA a b := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply Ideal.span_le.mpr
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl
  · change pullback a b l hl (x a b + scalar a b b) ∈ atA a b
    rw [pullback_target_displacement]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
  · change pullback a b l hl (y a b) ∈ atA a b
    rw [pullback_y]
    have h : (scalar a b (a * b) * invX a b ^ 2) * y a b ∈ atA a b :=
      Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    convert h using 1 <;> ring

theorem map_atA_le (a b l : R) (hl : a * b * l = 1) :
    (atA a b).map (pullback a b l hl) ≤ atB a b := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply Ideal.span_le.mpr
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl
  · change pullback a b l hl (x a b - scalar a b a) ∈ atB a b
    rw [pullback_source_displacement]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
  · change pullback a b l hl (y a b) ∈ atB a b
    rw [pullback_y]
    have h : (scalar a b (a * b) * invX a b ^ 2) * y a b ∈ atB a b :=
      Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp))
    convert h using 1 <;> ring

/-- Equality follows from the actual involution, without cancelling a nonunit. -/
theorem map_atB (a b l : R) (hl : a * b * l = 1) :
    (atB a b).map (pullback a b l hl) = atA a b := by
  apply le_antisymm (map_atB_le a b l hl)
  intro z hz
  have h1 := map_atA_le a b l hl (Ideal.mem_map_of_mem (pullback a b l hl) hz)
  have h2 := Ideal.mem_map_of_mem (pullback a b l hl) h1
  have hi : pullback a b l hl (pullback a b l hl z) = z :=
    DFunLike.congr_fun (pullback_comp_self a b l hl) z
  rw [hi] at h2
  exact h2

theorem map_atA (a b l : R) (hl : a * b * l = 1) :
    (atA a b).map (pullback a b l hl) = atB a b := by
  apply le_antisymm (map_atA_le a b l hl)
  intro z hz
  have h1 := map_atB_le a b l hl (Ideal.mem_map_of_mem (pullback a b l hl) hz)
  have h2 := Ideal.mem_map_of_mem (pullback a b l hl) h1
  have hi : pullback a b l hl (pullback a b l hl z) = z :=
    DFunLike.congr_fun (pullback_comp_self a b l hl) z
  rw [hi] at h2
  exact h2

/-- Prime-support language is not substituted for the full section-ideal exponent. -/
theorem map_powers (a b l : R) (hl : a * b * l = 1) (n : ℕ) :
    (atB a b ^ n).map (pullback a b l hl) = atA a b ^ n ∧
    (atA a b ^ n).map (pullback a b l hl) = atB a b ^ n := by
  constructor <;> rw [Ideal.map_pow]
  · rw [map_atB a b l hl]
  · rw [map_atA a b l hl]

abbrev JetA (a b : R) (n : ℕ) := OpenCurve a b ⧸ atA a b ^ n
abbrev JetB (a b : R) (n : ℕ) := OpenCurve a b ⧸ atB a b ^ n

/-- Contravariant pullback: target functions at Tb are read in the source Ta jet. -/
def pullbackBA (a b l : R) (hl : a * b * l = 1) (n : ℕ) : JetB a b n →+* JetA a b n :=
  Ideal.Quotient.lift _ ((Ideal.Quotient.mk (atA a b ^ n)).comp (pullback a b l hl))
    (by
      intro z hz
      apply Ideal.Quotient.eq_zero_iff_mem.mpr
      have h := Ideal.mem_map_of_mem (pullback a b l hl) hz
      rwa [(map_powers a b l hl n).1] at h)

def pullbackAB (a b l : R) (hl : a * b * l = 1) (n : ℕ) : JetA a b n →+* JetB a b n :=
  Ideal.Quotient.lift _ ((Ideal.Quotient.mk (atB a b ^ n)).comp (pullback a b l hl))
    (by
      intro z hz
      apply Ideal.Quotient.eq_zero_iff_mem.mpr
      have h := Ideal.mem_map_of_mem (pullback a b l hl) hz
      rwa [(map_powers a b l hl n).2] at h)

@[simp] theorem pullbackBA_mk (a b l : R) (hl : a * b * l = 1) (n : ℕ) (z : OpenCurve a b) :
    pullbackBA a b l hl n (Ideal.Quotient.mk (atB a b ^ n) z) =
      Ideal.Quotient.mk (atA a b ^ n) (pullback a b l hl z) := rfl
@[simp] theorem pullbackAB_mk (a b l : R) (hl : a * b * l = 1) (n : ℕ) (z : OpenCurve a b) :
    pullbackAB a b l hl n (Ideal.Quotient.mk (atA a b ^ n) z) =
      Ideal.Quotient.mk (atB a b ^ n) (pullback a b l hl z) := rfl

/-- Both inverse identities hold for every exponent, including the zero quotient. -/
def jetEquiv (a b l : R) (hl : a * b * l = 1) (n : ℕ) : JetB a b n ≃+* JetA a b n where
  toFun := pullbackBA a b l hl n
  invFun := pullbackAB a b l hl n
  left_inv u := by
    obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective u
    rw [pullbackBA_mk, pullbackAB_mk]
    exact congrArg (Ideal.Quotient.mk (atB a b ^ n))
      (DFunLike.congr_fun (pullback_comp_self a b l hl) z)
  right_inv u := by
    obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective u
    rw [pullbackAB_mk, pullbackBA_mk]
    exact congrArg (Ideal.Quotient.mk (atA a b ^ n))
      (DFunLike.congr_fun (pullback_comp_self a b l hl) z)
  map_add' := (pullbackBA a b l hl n).map_add
  map_mul' := (pullbackBA a b l hl n).map_mul

/-- All-order inter-anchor pullback commutes with actual ideal-quotient transitions. -/
theorem pullbackBA_truncate (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : JetB a b n) :
    Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn)
        (pullbackBA a b l hl n u) =
      pullbackBA a b l hl m
        (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) u) := by
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

/-- The inverse direction has the same independent truncation law. -/
theorem pullbackAB_truncate (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : JetA a b n) :
    Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn)
        (pullbackAB a b l hl n u) =
      pullbackAB a b l hl m
        (Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) u) := by
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open FreyTorsionOpen

/-- The native source supplies the coefficient-unit witness over Q. -/
theorem PrimitiveAdditiveTriple.freyOpen_ab_inverse (t : PrimitiveAdditiveTriple) :
    (t.a : ℚ) * (t.b : ℚ) * ((t.a : ℚ) * (t.b : ℚ))⁻¹ = 1 := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hb : (t.b : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  exact mul_inv_cancel₀ (mul_ne_zero ha hb)

/-- Full rational open-ring pullback attached to the same primitive triple. -/
def PrimitiveAdditiveTriple.freyT0OpenPullback (t : PrimitiveAdditiveTriple) :
    OpenCurve (t.a : ℚ) (t.b : ℚ) ≃+* OpenCurve (t.a : ℚ) (t.b : ℚ) :=
  pullbackEquiv _ _ _ t.freyOpen_ab_inverse

/-- Evaluation at the EXISTING order-two Ta jet, using its proved inverse of X. -/
def PrimitiveAdditiveTriple.freyTaOpenContactEvaluation (t : PrimitiveAdditiveTriple) :
    OpenCurve (t.a : ℚ) (t.b : ℚ) →+* FreyQuadraticJetRing :=
  evaluate _ _ freyContactScalar (t.freyQuadraticX 1) freyJetParameter
    t.freyTaContactInverseX t.freyTaContactInverseX_mul (t.freyQuadraticX_cubic 1).symm

/-- The new whole-ring map restricts to the PREVIOUS quadratic X pullback. -/
theorem PrimitiveAdditiveTriple.freyT0OpenPullback_contact_X (t : PrimitiveAdditiveTriple) :
    t.freyTaOpenContactEvaluation
      (t.freyT0OpenPullback (x (t.a : ℚ) (t.b : ℚ))) =
        t.freyT0ContactPullback (t.freyQuadraticX 2) := by
  change t.freyTaOpenContactEvaluation
    (pullback _ _ _ t.freyOpen_ab_inverse (x _ _)) = _
  rw [pullback_x]
  simp only [map_mul, map_neg, PrimitiveAdditiveTriple.freyTaOpenContactEvaluation,
    evaluate_scalar, evaluate_invX]
  simpa only [map_neg, neg_mul] using t.freyT0ContactPullback_X.symm

/-- Its Y restriction is the previous exact quadratic pullback, not an all-order linearization. -/
theorem PrimitiveAdditiveTriple.freyT0OpenPullback_contact_Y (t : PrimitiveAdditiveTriple) :
    t.freyTaOpenContactEvaluation
      (t.freyT0OpenPullback (y (t.a : ℚ) (t.b : ℚ))) =
        t.freyT0ContactPullback freyJetParameter := by
  change t.freyTaOpenContactEvaluation
    (pullback _ _ _ t.freyOpen_ab_inverse (y _ _)) = _
  rw [pullback_y]
  simp only [map_mul, map_pow, PrimitiveAdditiveTriple.freyTaOpenContactEvaluation,
    evaluate_scalar, evaluate_y, evaluate_invX]
  exact t.freyT0ContactPullback_Y.symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
