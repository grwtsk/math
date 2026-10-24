# Complete source: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.PrincipalRestrictions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce542af96f800144f35d767757ebdb692a4a0426` · SHA-256 `5c1559dba70214bf7143339a4cab1fa8a744e3836cd98c4818512cc775dbcfc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
Local, AI-assisted formalization of selected rational fragments of
grwtsk contributors, Sofic-boundary certificates for the Weil screw kernel,
12 October 2026, Lemma 3.2 and the unnumbered example in Section 11.1.
The PDF-to-statement relationship is authored and NOT formally verified.
This is not the complex/operator-norm lemma or any RH implication.
-/
namespace PaperWeilFinite

def pairForm (a b : Rat) : Rat := a * (a - b) + b * (-a + b)
def globalForm (a b c : Rat) : Rat :=
  a * (a - b - c) + b * (-a + b - c) + c * (-a - b + c)

theorem pair_identity (a b : Rat) : pairForm a b = (a - b) * (a - b) := by
  simp only [pairForm]
  grind

theorem pair_nonnegative (a b : Rat) : 0 ≤ pairForm a b := by
  rw [pair_identity]
  by_cases h : 0 ≤ a - b
  · exact Rat.mul_nonneg h h
  · have hn : 0 ≤ -(a - b) := by grind
    have hm := Rat.mul_nonneg hn hn
    have he : (-(a - b)) * (-(a - b)) = (a - b) * (a - b) := by grind
    rw [he] at hm
    exact hm

theorem principal_restrictions (a b : Rat) :
    globalForm a b 0 = pairForm a b ∧
    globalForm a 0 b = pairForm a b ∧
    globalForm 0 a b = pairForm a b := by
  simp only [globalForm, pairForm]
  grind

theorem global_negative : globalForm 1 1 1 = (-3 : Rat) := by
  simp only [globalForm]
  grind

theorem not_global_positive : ¬ (∀ a b c : Rat, 0 ≤ globalForm a b c) := by
  intro h
  have hn := h 1 1 1
  rw [global_negative] at hn
  grind

-- Scalar lower-bound part only: not the full complex Hermitian norm estimate.
theorem lower_bound_transfer (a b eta epsilon : Rat)
    (lower : -eta ≤ b) (error : b - a ≤ epsilon) :
    -(eta + epsilon) ≤ a := by
  grind

end PaperWeilFinite
#print axioms PaperWeilFinite.pair_identity
#print axioms PaperWeilFinite.pair_nonnegative
#print axioms PaperWeilFinite.principal_restrictions
#print axioms PaperWeilFinite.global_negative
#print axioms PaperWeilFinite.not_global_positive
#print axioms PaperWeilFinite.lower_bound_transfer
```
