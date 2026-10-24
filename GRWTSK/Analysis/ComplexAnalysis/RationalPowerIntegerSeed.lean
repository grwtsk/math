/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IntegerTaylorPolynomial
import GRWTSK.Analysis.ComplexAnalysis.RationalPowerTrace

set_option autoImplicit false

/-!
# Reusable source-bound integer seed certificates

One encoding supplies the exact argument, radius and logarithm displacement.
Binding proves their equality with the ORIGINAL fixed source and schedule.
The complete seed error is derived generically, not supplied as an oracle.
Integer windows reconstruct exactly the original initialized state. Endpoint
admissibility, every later step and full output identity remain independent.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalPowerIntegerSeed

open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial

/-- Untrusted integer data. The common denominator need not be reduced. -/
structure Encoding where
  argumentDen : ℤ
  argumentNum : Gaussian
  radiusNum : ℤ
  radiusDen : ℤ
  displacementNum : ℤ
  displacementDen : ℤ
  deriving DecidableEq, Repr

/-- Sign evidence, separate from source identity and integer-window acceptance. -/
structure Valid (a : Encoding) : Prop where
  argumentDen_pos : 0 < a.argumentDen
  radiusNum_nonneg : 0 ≤ a.radiusNum
  radiusDen_pos : 0 < a.radiusDen
  displacementNum_nonneg : 0 ≤ a.displacementNum
  displacementDen_pos : 0 < a.displacementDen

/-- Every identity is against the same original base, exponent and schedule.
There is no assumed seed, seed-error or endpoint equality in this structure. -/
structure Binding (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (j : ℕ) (a : Encoding) : Prop where
  degree_eq : p.degree = j + 1
  argument_eq : RationalPowerEvaluation.argument q z p = argumentQ a.argumentDen a.argumentNum
  radius_eq : RationalPowerEvaluation.radius q z p = (a.radiusNum : ℚ) / a.radiusDen
  displacement_eq : RationalPowerEvaluation.displacement q z p =
    (a.displacementNum : ℚ) / a.displacementDen

def seedNum (a : Encoding) (j : ℕ) : Gaussian := numeratorZ a.argumentDen a.argumentNum j
def seedDen (a : Encoding) (j : ℕ) : ℤ := denominatorZ a.argumentDen j

def taylorNum (a : Encoding) (j : ℕ) : ℤ := 2 * a.radiusNum ^ (j + 1)
def taylorDen (a : Encoding) (j : ℕ) : ℤ :=
  a.radiusDen ^ (j + 1) * ((j + 1).factorial : ℤ)

/-- The SAME t + 2*(rect(seed)+t)*displacement, not a new majorant. -/
def errorNum (a : Encoding) (j : ℕ) : ℤ :=
  taylorNum a j * seedDen a j * a.displacementDen +
    2 * ((| (seedNum a j).1 | + | (seedNum a j).2 |) * taylorDen a j +
      taylorNum a j * seedDen a j) * a.displacementNum

def errorDen (a : Encoding) (j : ℕ) : ℤ :=
  taylorDen a j * seedDen a j * a.displacementDen

theorem seedDen_pos (a : Encoding) (h : Valid a) (j : ℕ) : 0 < seedDen a j :=
  denominator_pos a.argumentDen h.argumentDen_pos j

theorem taylorDen_pos (a : Encoding) (h : Valid a) (j : ℕ) : 0 < taylorDen a j := by
  unfold taylorDen
  exact mul_pos (pow_pos h.radiusDen_pos _) (by exact_mod_cast Nat.factorial_pos (j + 1))

theorem errorDen_pos (a : Encoding) (h : Valid a) (j : ℕ) : 0 < errorDen a j :=
  mul_pos (mul_pos (taylorDen_pos a h j) (seedDen_pos a h j)) h.displacementDen_pos

theorem errorNum_nonneg (a : Encoding) (h : Valid a) (j : ℕ) : 0 ≤ errorNum a j := by
  have ht : 0 ≤ taylorNum a j := mul_nonneg (by norm_num) (pow_nonneg h.radiusNum_nonneg _)
  have hc := (seedDen_pos a h j).le
  have hd := (taylorDen_pos a h j).le
  have hf := h.displacementDen_pos.le
  have he := h.displacementNum_nonneg
  unfold errorNum
  positivity

/-- Stage j means j+1 terms, fixed by Binding.degree_eq. -/
theorem seed_identity (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (j : ℕ) (a : Encoding) (ha : Valid a) (h : Binding q z p j a) :
    RationalPowerEvaluation.seed q z p = decodeQ (seedDen a j) (seedNum a j) := by
  unfold RationalPowerEvaluation.seed
  rw [h.argument_eq, h.degree_eq]
  exact polynomial_eq_decode a.argumentDen ha.argumentDen_pos a.argumentNum j

/-- Universal rational algebra; concrete endpoints no longer repeat this proof. -/
theorem seed_error_identity (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (j : ℕ) (a : Encoding) (ha : Valid a) (h : Binding q z p j a) :
    RationalPowerEvaluation.seedError q z p = (errorNum a j : ℚ) / errorDen a j := by
  have hC : (seedDen a j : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (seedDen_pos a ha j))
  have hR : (a.radiusDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt ha.radiusDen_pos)
  have hD : (a.displacementDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt ha.displacementDen_pos)
  have hF : ((j + 1).factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero (j + 1)
  simp only [RationalPowerEvaluation.seedError, h.radius_eq, h.displacement_eq,
    h.degree_eq, seed_identity q z p j a ha h]
  rw [rect_decode (seedDen a j) (seedDen_pos a ha j)]
  simp only [errorNum, errorDen, taylorNum, taylorDen, Int.cast_add, Int.cast_mul,
    Int.cast_pow, Int.cast_ofNat, Int.cast_natCast]
  field_simp [hC, hR, hD, hF] <;> ring

/-- No rational division inside these concrete integer-window predicates. -/
def Windows (bits : ℕ) (a : Encoding) (j : ℕ) (out : GridState) : Prop :=
  0 ≤ out.errorPart ∧
  FloorWindow (seedDen a j) (scaleZ bits * (seedNum a j).1) out.realPart ∧
  FloorWindow (seedDen a j) (scaleZ bits * (seedNum a j).2) out.imagPart ∧
  CeilingWindow (errorDen a j)
    (scaleZ bits * errorNum a j + 2 * errorDen a j) out.errorPart

/-- The original SeedValid is reconstructed, with its complete error. -/
theorem seed_valid (q : ℚ) (z : QComplex) (p : RationalPowerEvaluation.Schedule)
    (j : ℕ) (a : Encoding) (ha : Valid a) (h : Binding q z p j a)
    (out : GridState) (hw : Windows p.bits a j out) :
    SeedValid p.bits (RationalPowerEvaluation.seed q z p)
      (RationalPowerEvaluation.seedError q z p) out := by
  rw [seed_identity q z p j a ha h, seed_error_identity q z p j a ha h]
  have hE : (0 : ℚ) ≤ (errorNum a j : ℚ) / errorDen a j :=
    div_nonneg (by exact_mod_cast errorNum_nonneg a ha j)
      (by exact_mod_cast (errorDen_pos a ha j).le)
  have hr := floor_window_scaled (seedDen a j) (scaleZ p.bits) (seedNum a j).1
    out.realPart (seedDen_pos a ha j) hw.2.1
  have hi := floor_window_scaled (seedDen a j) (scaleZ p.bits) (seedNum a j).2
    out.imagPart (seedDen_pos a ha j) hw.2.2.1
  have he := error_window_scaled (errorDen a j) (scaleZ p.bits) (errorNum a j)
    out.errorPart (errorDen_pos a ha j) hw.2.2.2
  simp only [cast_scaleZ] at hr hi he
  have hG : scaleQ p.bits ≠ 0 := ne_of_gt (scaleQ_pos p.bits)
  have herr : scaleQ p.bits * ((errorNum a j : ℚ) / errorDen a j + roundoffQ p.bits) =
      scaleQ p.bits * ((errorNum a j : ℚ) / errorDen a j) + 2 := by
    unfold roundoffQ
    field_simp [hG] <;> ring
  exact ⟨hE, hw.1, hr, hi, by simpa only [herr] using he⟩

/-- Admissibility is not inferred from equal rounded states. Every transition
and the complete decoded output are also checked by their own premises. -/
theorem endpoint_eq_of_windows (q : ℚ) (z : QComplex)
    (p : RationalPowerEvaluation.Schedule) (j : ℕ) (a : Encoding)
    (ha : Valid a) (h : Binding q z p j a)
    (hg : RationalPowerEvaluation.Admissible q z p)
    (t : Fin (p.squarings + 1) → GridState) (out : State)
    (hw : Windows p.bits a j (t 0))
    (hs : ∀ i : Fin p.squarings, StepValid p.bits (t i.castSucc) (t i.succ))
    (ho : decode p.bits (t (Fin.last p.squarings)) = out) :
    RationalPowerEvaluation.Admissible q z p ∧ RationalPowerEvaluation.compute q z p = out := by
  have ht : TraceValid p.bits (RationalPowerEvaluation.seed q z p)
      (RationalPowerEvaluation.seedError q z p) p.squarings t :=
    ⟨seed_valid q z p j a ha h (t 0) hw, hs⟩
  exact ⟨hg, (trace_refines p.bits _ _ p.squarings t ht).trans ho⟩

end GRWTSK.Analysis.ComplexAnalysis.RationalPowerIntegerSeed
