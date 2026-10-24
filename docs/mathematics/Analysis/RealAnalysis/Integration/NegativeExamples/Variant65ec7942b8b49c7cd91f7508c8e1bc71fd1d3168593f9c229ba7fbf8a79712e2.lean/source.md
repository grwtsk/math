# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.NegativeExamples.Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b6d70883f2e306bb04be68c91e9163ec93fdd2a` · SHA-256 `65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.WorldModelPrototype.ExactPermutationMatrix
import DAF.Integration.WorldModelPrototype.SupportGraphAbstraction
import BitMatrix.Dynamics.DynamicalZeta
import Mathlib.GroupTheory.Perm.Sign

/-!
# Machine-queryable finite negative examples

These examples prevent the five-model prototype from strengthening a relation
merely because two representations share a finite invariant.  Concrete finite
computation is used only to discharge the displayed examples; no general
theorem is replaced by `native_decide`.
-/

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Dynamics.DynamicalZeta

namespace DAF.Integration.WorldModelPrototype

/-- Little-endian three-bit encoding used only by the concrete examples. -/
def bitsOfNat3 (value : Nat) : Bits 3 :=
  fun i => decide ((value / (2 ^ i.val)) % 2 = 1)

/-- A transposition of the states encoded by six and seven. -/
def stateSwap67 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 6) (bitsOfNat3 7)

/-- A transposition of the states encoded by five and six. -/
def stateSwap56 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 5) (bitsOfNat3 6)

/-- The two state permutations have identical primitive cycle data. -/
theorem stateSwaps_same_cycle_data :
    cycleEulerFactorData stateSwap67 =
      cycleEulerFactorData stateSwap56 := by
  native_decide

/-- Their SAC statistics nevertheless differ. -/
theorem stateSwaps_different_sac :
    sacScore stateSwap67 ≠ sacScore stateSwap56 := by
  native_decide

/-- Same complete cycle data does not determine avalanche behavior. -/
theorem cycle_data_does_not_determine_sac :
    ∃ left right : BitPerm 3,
      cycleEulerFactorData left = cycleEulerFactorData right ∧
      sacScore left ≠ sacScore right :=
  ⟨stateSwap67, stateSwap56,
    stateSwaps_same_cycle_data,
    stateSwaps_different_sac⟩

/-- The identity permutation on two coordinates. -/
def identityFin2 : Equiv.Perm (Fin 2) :=
  1

/-- The odd coordinate transposition on two coordinates. -/
def swapFin2 : Equiv.Perm (Fin 2) :=
  Equiv.swap 0 1

/-- Reduction modulo two makes the two permutation determinants equal. -/
theorem zmod2_determinants_equal :
    (permutationMatrix identityFin2).det =
      (permutationMatrix swapFin2).det := by
  native_decide

/-- Their integral permutation signs are different. -/
theorem integral_signs_different :
    identityFin2.sign ≠ swapFin2.sign := by
  native_decide

/-- A `ZMod 2` determinant cannot recover integral permutation parity. -/
theorem zmod2_determinant_does_not_determine_integral_parity :
    ∃ even odd : Equiv.Perm (Fin 2),
      (permutationMatrix even).det = (permutationMatrix odd).det ∧
      even.sign ≠ odd.sign :=
  ⟨identityFin2, swapFin2,
    zmod2_determinants_equal,
    integral_signs_different⟩

end DAF.Integration.WorldModelPrototype
```
