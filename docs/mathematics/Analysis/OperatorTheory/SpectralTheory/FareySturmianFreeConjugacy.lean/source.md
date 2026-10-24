# Complete source: GRWTSK.Spectral.FareySturmianFreeConjugacy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68c954fa4075509ebd0a1504ca91442405309355` · SHA-256 `8889808b7a2ef97247a6651ad20134ae64c4ef5c43b95d13995c466ffb96c0bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. Imported authorship retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this standalone bridge into the public root without exact-commit
Lean elaboration, fresh kernel replay, and a transitive axiom audit.
-/
import GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
import GRWTSK.LinearAlgebra.Sturmian
import Mathlib.Tactic

/-!
# Source-bound Farey return versus the free Sturmian transfer at E=3

The actual chronological Farey word left,right produces H=[[1,1],[1,2]].
The actual zero-coupling Sturmian transfer, in state coordinates
(current,previous), is T_0(3)=[[3,-1],[1,0]]. These are NOT equal.
There is, however, a single explicitly invertible coordinate matrix
C=[[1,-2],[0,1]] satisfying H*C=C*T_0(3).

The identity holds at every step of the free transfer, irrespective of
the formally irrelevant rotation frequency alpha and phase xi, because
the coupling is exactly zero. Powers are intertwined without an
unrestricted step-dependent gauge.

Energy 3 fails the source's free elliptic trace bound |trace|<=2.
No nonzero-coupling Sturmian cocycle, irrational-limit spectral gap,
Dry Ten Martini theorem, or analyticity claim is imported or proved here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Spectral.FareySturmianFreeConjugacy

open Matrix
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
open GRWTSK.LinearAlgebra.SchrodingerTransfer

/-- A single fixed, rational-entry coordinate change in the real two-plane. -/
def frameChange : MatR := !![1, -2; 0, 1]

def frameChangeInverse : MatR := !![1, 2; 0, 1]

/-- Invertibility is witnessed by actual two-sided matrix identities. -/
theorem frameChange_mul_inverse :
    frameChange * frameChangeInverse = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [frameChange, frameChangeInverse, Matrix.mul_apply, Fin.sum_univ_two]

theorem frameChange_inverse_mul :
    frameChangeInverse * frameChange = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [frameChange, frameChangeInverse, Matrix.mul_apply, Fin.sum_univ_two]

/-- The actual free Schrödinger transfer, not a chosen isospectral label. -/
def freeTransfer : MatR := schrodingerTransfer (3 : ℝ) 0

/-- The state normalization is not equal to the Farey return itself. -/
theorem freeTransfer_ne_returnMatrix : freeTransfer ≠ returnMatrix := by
  intro h
  have he := congrArg (fun A : MatR => A 1 1) h
  norm_num [freeTransfer, schrodingerTransfer, returnMatrix_eq] at he

/-- Exact fixed similarity from the selected Farey return to the genuine
Schrödinger transfer, with the (current,previous) state convention retained. -/
theorem farey_free_intertwines :
    returnMatrix * frameChange = frameChange * freeTransfer := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [returnMatrix_eq, frameChange, freeTransfer,
      schrodingerTransfer, Matrix.mul_apply, Fin.sum_univ_two]

/-- The fixed inverse makes this a genuine matrix similarity,
not an unrestricted sequence-dependent gauge. -/
theorem farey_free_conjugate :
    returnMatrix =
      frameChange * freeTransfer * frameChangeInverse := by
  calc
    returnMatrix =
        returnMatrix * (frameChange * frameChangeInverse) := by
          rw [frameChange_mul_inverse, mul_one]
    _ = (returnMatrix * frameChange) * frameChangeInverse := by
          rw [Matrix.mul_assoc]
    _ = (frameChange * freeTransfer) * frameChangeInverse := by
          rw [farey_free_intertwines]

/-- Same fixed coordinate change intertwines EVERY repeated Farey return
with the correct ordered free Schrödinger transfer power. -/
theorem farey_free_power_intertwines (n : ℕ) :
    returnMatrix ^ n * frameChange =
      frameChange * freeTransfer ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        returnMatrix ^ (n + 1) * frameChange =
            returnMatrix ^ n * (returnMatrix * frameChange) := by
              rw [pow_succ, Matrix.mul_assoc]
        _ = returnMatrix ^ n * (frameChange * freeTransfer) := by
              rw [farey_free_intertwines]
        _ = (returnMatrix ^ n * frameChange) * freeTransfer := by
              rw [Matrix.mul_assoc]
        _ = (frameChange * freeTransfer ^ n) * freeTransfer := by
              rw [ih]
        _ = frameChange * freeTransfer ^ (n + 1) := by
              rw [pow_succ, Matrix.mul_assoc]

/-- The input transfer at ZERO coupling is source-identical for every
rotation and lattice site; no irrational-frequency claim is used. -/
theorem sturmian_free_intertwines
    (alpha xi : ℝ) (site : ℤ) :
    returnMatrix * frameChange =
      frameChange * GRWTSK.LinearAlgebra.Sturmian.transfer
        3 alpha 0 xi site := by
  rw [GRWTSK.LinearAlgebra.Sturmian.zero_coupling_transfer]
  exact farey_free_intertwines

theorem sturmian_free_power_intertwines
    (alpha xi : ℝ) (site : ℤ) (n : ℕ) :
    returnMatrix ^ n * frameChange =
      frameChange *
        (GRWTSK.LinearAlgebra.Sturmian.transfer
          3 alpha 0 xi site) ^ n := by
  rw [GRWTSK.LinearAlgebra.Sturmian.zero_coupling_transfer]
  exact farey_free_power_intertwines n

/-- The energy-3 free transfer lies OUTSIDE the source's elliptic
trace window. No infinite-volume spectral theorem is inferred from it. -/
theorem free_energy_three_not_elliptic
    (alpha xi : ℝ) (site : ℤ) :
    ¬ |Matrix.trace
        (GRWTSK.LinearAlgebra.Sturmian.transfer 3 alpha 0 xi site)| ≤ 2 := by
  rw [GRWTSK.LinearAlgebra.Sturmian.zero_coupling_trace_iff]
  norm_num

end GRWTSK.Spectral.FareySturmianFreeConjugacy
```
