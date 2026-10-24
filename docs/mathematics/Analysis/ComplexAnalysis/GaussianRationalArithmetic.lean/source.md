# Complete source: GRWTSK.Analysis.Complex.GaussianRationalArithmetic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a107790fc7b88f039af17678aeb843736a0d427` · SHA-256 `7fd12e1c31615b61faa3351b0856cd0658e3c502c276eacd1cdb4910914256bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairRational

set_option autoImplicit false

/-!
# Exact Gaussian rational arithmetic for finite certificates

The operations are pure rational calculations. Their complex interpretations are
proved separately. The L1 bound is an upper bound for the Euclidean norm, not an
equality. No field or ring instance is installed on the existing data structure.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.SymmetricPair.Rational.Gaussian
open _root_.Complex Finset

def ofRat (r : ℚ) : Gaussian := ⟨r,0⟩
def qadd (a b : Gaussian) : Gaussian := ⟨a.re+b.re,a.im+b.im⟩
def qsub (a b : Gaussian) : Gaussian := ⟨a.re-b.re,a.im-b.im⟩
def qmul (a b : Gaussian) : Gaussian := ⟨a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re⟩
def qscale (r : ℚ) (a : Gaussian) : Gaussian := ⟨r*a.re,r*a.im⟩
def qpow (a : Gaussian) : ℕ → Gaussian
  | 0 => ofRat 1
  | n+1 => qmul (qpow a n) a

def qsum {α : Type*} (S : Finset α) (f : α → Gaussian) : Gaussian :=
  ⟨∑ i ∈ S, (f i).re, ∑ i ∈ S, (f i).im⟩

def l1 (a : Gaussian) : ℚ := |a.re|+|a.im|

@[simp] theorem value_ofRat (r : ℚ) : (ofRat r).value = (r : ℂ) := by
  apply Complex.ext <;> simp [ofRat,value]
@[simp] theorem value_qadd (a b : Gaussian) : (qadd a b).value = a.value+b.value := by
  apply Complex.ext <;> simp [qadd,value]
@[simp] theorem value_qsub (a b : Gaussian) : (qsub a b).value = a.value-b.value := by
  apply Complex.ext <;> simp [qsub,value]
@[simp] theorem value_qmul (a b : Gaussian) : (qmul a b).value = a.value*b.value := by
  apply Complex.ext <;> simp [qmul,value] <;> push_cast <;> ring
@[simp] theorem value_qscale (r : ℚ) (a : Gaussian) :
    (qscale r a).value = (r : ℂ)*a.value := by
  apply Complex.ext <;> simp [qscale,value] <;> push_cast <;> ring
@[simp] theorem value_qpow (a : Gaussian) (n : ℕ) : (qpow a n).value = a.value^n := by
  induction n with
  | zero => simp [qpow]
  | succ n ih => simp [qpow,ih,pow_succ]
@[simp] theorem value_qsum {α : Type*} (S : Finset α) (f : α → Gaussian) :
    (qsum S f).value = ∑ i ∈ S, (f i).value := by
  apply Complex.ext <;> simp [qsum,value]

lemma l1_nonneg (a : Gaussian) : 0 ≤ a.l1 := add_nonneg (abs_nonneg _) (abs_nonneg _)

lemma norm_value_le_l1 (a : Gaussian) : ‖a.value‖ ≤ (a.l1 : ℝ) := by
  have h := Complex.norm_le_abs_re_add_abs_im a.value
  simpa [value,l1] using h

/-- The sum starts at zero and has n terms, matching the upstream convention. -/
def expTaylor (n : ℕ) (a : Gaussian) : Gaussian :=
  qsum (Finset.range n) (fun j => qscale (1/(j.factorial : ℚ)) (qpow a j))

lemma expTaylor_value (n : ℕ) (a : Gaussian) :
    (expTaylor n a).value = ∑ j ∈ Finset.range n, a.value^j/(j.factorial : ℂ) := by
  simp only [expTaylor,value_qsum,value_qscale,value_qpow]
  apply Finset.sum_congr rfl
  intro j hj
  push_cast
  ring

/-- A computed rounding charge; arbitrary proposed centers cannot erase it. -/
lemma recenter_bound {z : ℂ} {a b : Gaussian} {e : ℚ}
    (h : ‖z-a.value‖ ≤ (e : ℝ)) :
    ‖z-b.value‖ ≤ ((e+(qsub a b).l1 : ℚ) : ℝ) := by
  have ht : ‖z-b.value‖ ≤ ‖z-a.value‖+‖a.value-b.value‖ := by
    convert norm_add_le (z-a.value) (a.value-b.value) using 1 <;> ring
  have hr := norm_value_le_l1 (qsub a b)
  rw [value_qsub] at hr
  have he := add_le_add h hr
  exact ht.trans (by simpa only [Rat.cast_add] using he)

end GRWTSK.Analysis.Complex.SymmetricPair.Rational.Gaussian
```
