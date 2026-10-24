# Complete source: GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdf89eca42bf2fa5fd52f9e81a5665905418649e` · SHA-256 `42aa211150fc651d37ffd5c4bc52a4c1f9051f5968828bf6337774db1345cd1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout
import Mathlib.Tactic.NormNum

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Rational complex disks and finite readout enclosures

The data operations below use rational arithmetic only: addition, negation,
conjugation, multiplication and finite sums. Complex numbers occur in the
semantic containment predicate and soundness proofs, not in the disk algorithm.
The product radius retains the product of the input radii. Center moduli are
bounded by |re|+|im|, so no square root or floating-point rounding is required.
This bound is conservative; it is NOT a same-rate replacement in the earlier
complex-modulus contraction theorem.

`readoutDisk` encloses the SAME complete complexReadout used by the Gram stack.
Repeated occurrences of an input need no independence assumption, but correlation
is not exploited and the resulting interval need not be sharp. Missing matrix
entries, source tails, model-update defects and adjoint corrections are not
filled in by this algorithm. In particular, all input containment premises
remain independently required, including their arithmetic/source identification.

`lowerClears` checks only a rational radius and strict endpoint inequality.
It does not check that supplied data enclose an actual source. Soundness needs
that separate premise; a Boolean success is not an arithmetic certificate.
No input-enclosure supplier, actual Weil window or RH theorem is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported axiom closure unaudited.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout

/-- Pure rational data. Negative radii are representable but cannot contain a value. -/
structure Disk where
  re : ℚ
  im : ℚ
  radius : ℚ
  deriving DecidableEq, Repr

def point (re im : ℚ) : Disk := ⟨re, im, 0⟩

def diskAdd (d e : Disk) : Disk := ⟨d.re + e.re, d.im + e.im, d.radius + e.radius⟩

def diskNeg (d : Disk) : Disk := ⟨-d.re, -d.im, d.radius⟩

def diskSub (d e : Disk) : Disk := diskAdd d (diskNeg e)

def diskConj (d : Disk) : Disk := ⟨d.re, -d.im, d.radius⟩

/-- A rational upper bound on the center modulus, not an equality with that modulus. -/
def centerSize (d : Disk) : ℚ := |d.re| + |d.im|

/-- Both linear radius terms and the radius product are retained. -/
def diskMul (d e : Disk) : Disk :=
  ⟨d.re * e.re - d.im * e.im, d.re * e.im + d.im * e.re,
    centerSize d * e.radius + centerSize e * d.radius + d.radius * e.radius⟩

def diskSum {ι : Type*} [Fintype ι] (d : ι → Disk) : Disk :=
  ⟨∑ i, (d i).re, ∑ i, (d i).im, ∑ i, (d i).radius⟩

/-- The ordered-pair formula is exactly the existing complex quadratic readout. -/
def readoutDisk {ι : Type*} [Fintype ι] (test : ι → Disk) (H : ι × ι → Disk) : Disk :=
  diskSum fun p => diskMul (diskMul (diskConj (test p.1)) (H p)) (test p.2)

def lower (d : Disk) : ℚ := d.re - d.radius

def upper (d : Disk) : ℚ := d.re + d.radius

/-- An arithmetic endpoint check only; source containment is NOT tested by this Boolean. -/
def lowerClears (d : Disk) (threshold : ℚ) : Bool :=
  decide (0 ≤ d.radius ∧ threshold < lower d)

noncomputable section

/-- Interpretation of a rational center in the existing complex field. -/
def center (d : Disk) : ℂ := ⟨(d.re : ℝ), (d.im : ℝ)⟩

/-- The semantic obligation linking rational data to a specified actual value. -/
def Contains (d : Disk) (z : ℂ) : Prop := ‖z - center d‖ ≤ (d.radius : ℝ)

theorem center_add (d e : Disk) : center (diskAdd d e) = center d + center e := by
  apply Complex.ext <;> simp [center, diskAdd]

theorem center_neg (d : Disk) : center (diskNeg d) = -center d := by
  apply Complex.ext <;> simp [center, diskNeg]

theorem center_conj (d : Disk) : center (diskConj d) = conj (center d) := by
  apply Complex.ext <;> simp [center, diskConj]

theorem center_mul (d e : Disk) : center (diskMul d e) = center d * center e := by
  apply Complex.ext <;> simp [center, diskMul, Complex.mul_re, Complex.mul_im]

theorem center_sum {ι : Type*} [Fintype ι] (d : ι → Disk) :
    center (diskSum d) = ∑ i, center (d i) := by
  apply Complex.ext <;> simp [center, diskSum]

theorem centerSize_nonnegative (d : Disk) : 0 ≤ centerSize d :=
  add_nonneg (abs_nonneg _) (abs_nonneg _)

/-- Only a center upper bound is used in disk multiplication. -/
theorem center_norm_le (d : Disk) : ‖center d‖ ≤ (centerSize d : ℝ) := by
  calc
    _ ≤ |(center d).re| + |(center d).im| := Complex.norm_le_abs_re_add_abs_im _
    _ = _ := by simp [center, centerSize]

theorem contains_radius_nonnegative {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    0 ≤ d.radius := by
  have h : (0 : ℝ) ≤ (d.radius : ℝ) := (norm_nonneg _).trans enclosed
  exact_mod_cast h

theorem contains_point (re im : ℚ) : Contains (point re im) (center (point re im)) := by
  simp [Contains, point]

theorem contains_add {d e : Disk} {z w : ℂ}
    (left : Contains d z) (right : Contains e w) : Contains (diskAdd d e) (z + w) := by
  change ‖z + w - center (diskAdd d e)‖ ≤ ((diskAdd d e).radius : ℝ)
  rw [center_add]
  calc
    _ = ‖(z - center d) + (w - center e)‖ := by congr 1; ring
    _ ≤ ‖z - center d‖ + ‖w - center e‖ := norm_add_le _ _
    _ ≤ (d.radius : ℝ) + (e.radius : ℝ) := add_le_add left right
    _ = _ := by simp [diskAdd]

theorem contains_neg {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    Contains (diskNeg d) (-z) := by
  change ‖-z - center (diskNeg d)‖ ≤ (d.radius : ℝ)
  rw [center_neg]
  calc
    _ = ‖-(z - center d)‖ := by congr 1; ring
    _ = ‖z - center d‖ := norm_neg _
    _ ≤ _ := enclosed

theorem contains_sub {d e : Disk} {z w : ℂ}
    (left : Contains d z) (right : Contains e w) : Contains (diskSub d e) (z - w) := by
  simpa only [diskSub, sub_eq_add_neg] using contains_add left (contains_neg right)

theorem contains_conj {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    Contains (diskConj d) (conj z) := by
  change ‖conj z - center (diskConj d)‖ ≤ (d.radius : ℝ)
  rw [center_conj, ← map_sub, Complex.norm_conj]
  exact enclosed

/-- Multiplication is sound for every pair of enclosed values, including correlated inputs. -/
theorem contains_mul {d e : Disk} {z w : ℂ}
    (left : Contains d z) (right : Contains e w) : Contains (diskMul d e) (z * w) := by
  have dNonnegative : (0 : ℝ) ≤ (d.radius : ℝ) := (norm_nonneg _).trans left
  have dSize : (0 : ℝ) ≤ (centerSize d : ℝ) := by exact_mod_cast centerSize_nonnegative d
  have eSize : (0 : ℝ) ≤ (centerSize e : ℝ) := by exact_mod_cast centerSize_nonnegative e
  change ‖z * w - center (diskMul d e)‖ ≤ ((diskMul d e).radius : ℝ)
  rw [center_mul]
  calc
    _ = ‖center d * (w - center e) + center e * (z - center d) +
        (z - center d) * (w - center e)‖ := by congr 1; ring
    _ ≤ (‖center d * (w - center e)‖ + ‖center e * (z - center d)‖) +
        ‖(z - center d) * (w - center e)‖ :=
      (norm_add_le _ _).trans (add_le_add_left (norm_add_le _ _) _)
    _ = (‖center d‖ * ‖w - center e‖ + ‖center e‖ * ‖z - center d‖) +
        ‖z - center d‖ * ‖w - center e‖ := by simp only [norm_mul]
    _ ≤ ((centerSize d : ℝ) * (e.radius : ℝ) +
        (centerSize e : ℝ) * (d.radius : ℝ)) + (d.radius : ℝ) * (e.radius : ℝ) :=
      add_le_add
        (add_le_add (mul_le_mul (center_norm_le d) right (norm_nonneg _) dSize)
          (mul_le_mul (center_norm_le e) left (norm_nonneg _) eSize))
        (mul_le_mul left right (norm_nonneg _) dNonnegative)
    _ = _ := by simp [diskMul]

theorem contains_sum {ι : Type*} [Fintype ι] (d : ι → Disk) (value : ι → ℂ)
    (enclosed : ∀ i, Contains (d i) (value i)) :
    Contains (diskSum d) (∑ i, value i) := by
  change ‖(∑ i, value i) - center (diskSum d)‖ ≤ ((diskSum d).radius : ℝ)
  rw [center_sum, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i, ‖value i - center (d i)‖ := norm_sum_le _ _
    _ ≤ ∑ i, ((d i).radius : ℝ) := Finset.sum_le_sum fun i _ => enclosed i
    _ = _ := by simp [diskSum]

/-- The finite rational output encloses the original full complexReadout, not a surrogate. -/
theorem readoutDisk_contains {ι : Type*} [Fintype ι]
    (testDisk : ι → Disk) (matrixDisk : ι × ι → Disk)
    (test : ι → ℂ) (H : ι × ι → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (matrixEnclosure : ∀ p, Contains (matrixDisk p) (H p)) :
    Contains (readoutDisk testDisk matrixDisk) (complexReadout test H) := by
  unfold readoutDisk complexReadout
  apply contains_sum
  intro p
  exact contains_mul
    (contains_mul (contains_conj (testEnclosure p.1)) (matrixEnclosure p)) (testEnclosure p.2)

/-- Directly matches the scalar enclosure premise of EnclosedGramReadout. -/
theorem contains_real_error {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    |z.re - (d.re : ℝ)| ≤ (d.radius : ℝ) := by
  simpa only [Complex.sub_re, center] using
    (Complex.abs_re_le_norm (z - center d)).trans enclosed

/-- Reuse the prior scalar interval theorem; rational center evaluation has no rounding cost. -/
theorem contains_real_interval {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    (lower d : ℝ) ≤ z.re ∧ z.re ≤ (upper d : ℝ) := by
  have h := evaluated_readout_interval z (center d) (d.re : ℝ) (d.radius : ℝ) 0
    enclosed (by simp [center])
  simpa [lower, upper] using h

theorem readoutDisk_real_error {ι : Type*} [Fintype ι]
    (testDisk : ι → Disk) (matrixDisk : ι × ι → Disk)
    (test : ι → ℂ) (H : ι × ι → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (matrixEnclosure : ∀ p, Contains (matrixDisk p) (H p)) :
    |(complexReadout test H).re - ((readoutDisk testDisk matrixDisk).re : ℝ)| ≤
      ((readoutDisk testDisk matrixDisk).radius : ℝ) :=
  contains_real_error (readoutDisk_contains testDisk matrixDisk test H testEnclosure matrixEnclosure)

/-- A true endpoint check transfers only when semantic containment is independently supplied. -/
theorem lowerClears_sound {d : Disk} {z : ℂ} (threshold : ℚ)
    (accepted : lowerClears d threshold = true) (enclosed : Contains d z) :
    (threshold : ℝ) < z.re := by
  have criteria : 0 ≤ d.radius ∧ threshold < lower d := by
    simpa only [lowerClears, decide_eq_true_eq] using accepted
  have strict : (threshold : ℝ) < (lower d : ℝ) := by exact_mod_cast criteria.2
  exact strict.trans_le (contains_real_interval enclosed).1

theorem lowerClears_rejects_negative_radius (d : Disk) (threshold : ℚ)
    (negative : d.radius < 0) : lowerClears d threshold = false := by
  simp [lowerClears, not_le.mpr negative]

theorem lowerClears_rejects_equality (d : Disk) : lowerClears d (lower d) = false := by
  simp [lowerClears]

/-- Both zero-centered unit disks need the radius product to contain their product. -/
theorem radius_product_required_fixture :
    (diskMul ⟨0, 0, 1⟩ ⟨0, 0, 1⟩).radius = 1 ∧
      centerSize (⟨0, 0, 1⟩ : Disk) = 0 := by
  norm_num [diskMul, centerSize]

/-- The scalar joint-uncertainty example is produced by rational operations alone. -/
theorem rational_readout_radius_fixture :
    (readoutDisk (fun _ : Unit => (⟨1, 0, 1 / 2⟩ : Disk))
      (fun _ : Unit × Unit => (⟨2, 0, 1 / 4⟩ : Disk))).re = 2 ∧
    (readoutDisk (fun _ : Unit => (⟨1, 0, 1 / 2⟩ : Disk))
      (fun _ : Unit × Unit => (⟨2, 0, 1 / 4⟩ : Disk))).radius = 49 / 16 := by
  norm_num [readoutDisk, diskSum, diskMul, diskConj, centerSize]

/-- Exact disks for the retained imaginary Hermitian block. -/
def imaginaryMatrixDisk (p : Fin 2 × Fin 2) : Disk :=
  if p.1 = 0 then (if p.2 = 0 then point 0 0 else point 0 1)
  else (if p.2 = 0 then point 0 (-1) else point 0 0)

def imaginaryTestDisk (i : Fin 2) : Disk := if i = 0 then point 1 0 else point 0 1

/-- Imaginary off-diagonal information survives the rational evaluator with zero radius. -/
theorem imaginary_readout_disk_fixture :
    lower (readoutDisk imaginaryTestDisk imaginaryMatrixDisk) = -2 ∧
      upper (readoutDisk imaginaryTestDisk imaginaryMatrixDisk) = -2 := by
  norm_num [lower, upper, readoutDisk, diskSum, diskMul, diskConj, centerSize,
    imaginaryTestDisk, imaginaryMatrixDisk, point, Fintype.sum_prod_type, Fin.sum_univ_two]

/-- The Boolean is not always-rejecting, but a strict threshold is still required. -/
theorem strict_threshold_fixture :
    lowerClears (point (-1) 0) (-2) = true ∧ lowerClears (point (-1) 0) (-1) = false := by
  norm_num [lowerClears, lower, point]

end

end GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
```
