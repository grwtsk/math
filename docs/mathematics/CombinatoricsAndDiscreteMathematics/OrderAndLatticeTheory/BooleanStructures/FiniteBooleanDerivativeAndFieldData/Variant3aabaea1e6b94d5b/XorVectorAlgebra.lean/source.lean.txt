/-
XorVectorAlgebra — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.7.070.030 boolean structures (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- XOR vectors and coordinate flips form a complete component. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact finite avalanche semantics

This module studies Boolean derivatives of fixed-width transformations using
`BitMatrix.Reduction.SAT.Bits`; no second bit-vector representation is introduced.

For a transformation `H` and input `x`, `localJacobian H x` is one exact
Boolean matrix.  Its `(i,j)` entry records whether output bit `j` changes when
input bit `i` is flipped at that particular input.  SAC entries are different:
they aggregate those local observations over the entire finite input domain.

Derivative values are constant on the two endpoints of every input-difference
edge.  A nonzero difference acts without fixed points, so every differential
fiber, and in particular every one-bit SAC count, is paired and therefore
even.  Injectivity rules out only the zero output difference; it does not force
the remaining differences to be balanced.  The identity permutation below is
the canonical counterexample to any claim that bijectivity alone supplies
avalanche diffusion.

The random-function weight law is binomial.  For a random permutation, the
two distinct endpoints of a fixed input edge must have distinct outputs, so
the corresponding law is the binomial law conditioned on a nonzero output
difference.  These are fixed-edge distributions (equivalently, ensemble
expectations of empirical edge histograms), not independence assertions about
all edges in one sampled function or permutation.

Finally, SAC scores measure marginal balance only.  Even perfect one-bit
marginals need not make different output-flip bits independent; the concrete
three-bit permutation in `BitMatrix.Tests.Avalanche` witnesses this with a
nonzero pair correlation.
-/

namespace BitMatrix.Dynamics.Avalanche

open BitMatrix.Reduction.SAT
open scoped BigOperators

/-! ## Bit-vector algebra -/

/-- The all-zero bit vector. -/
def zeroBits (n : Nat) : Bits n :=
  fun _ => false

/-- Pointwise Boolean exclusive-or. -/
def xorBits {n : Nat} (x y : Bits n) : Bits n :=
  fun j => x j != y j

/-- The bit vector supported at exactly one coordinate. -/
def basisBit {n : Nat} (i : Fin n) : Bits n :=
  fun j => decide (j = i)

/-- Flip coordinate `i` of `x`. -/
def flipBit {n : Nat} (x : Bits n) (i : Fin n) : Bits n :=
  xorBits x (basisBit i)

@[simp]
theorem xorBits_zero_right {n : Nat} (x : Bits n) :
    xorBits x (zeroBits n) = x := by
  funext j
  cases h : x j <;> simp [xorBits, zeroBits, h]

@[simp]
theorem xorBits_zero_left {n : Nat} (x : Bits n) :
    xorBits (zeroBits n) x = x := by
  funext j
  cases h : x j <;> simp [xorBits, zeroBits, h]

@[simp]
theorem xorBits_self {n : Nat} (x : Bits n) :
    xorBits x x = zeroBits n := by
  funext j
  cases x j <;> simp [xorBits, zeroBits]

theorem xorBits_comm {n : Nat} (x y : Bits n) :
    xorBits x y = xorBits y x := by
  funext j
  cases hx : x j <;> cases hy : y j <;> simp [xorBits, hx, hy]

theorem xorBits_assoc {n : Nat} (x y z : Bits n) :
    xorBits (xorBits x y) z = xorBits x (xorBits y z) := by
  funext j
  cases hx : x j <;> cases hy : y j <;> cases hz : z j <;>
    simp [xorBits, hx, hy, hz]

theorem xorBits_cancel_right {n : Nat} (x y z : Bits n) :
    xorBits x z = xorBits y z ↔ x = y := by
  constructor
  · intro h
    have := congrArg (fun w => xorBits w z) h
    simpa [xorBits_assoc] using this
  · exact fun h => h ▸ rfl

theorem xorBits_eq_zero_iff {n : Nat} (x y : Bits n) :
    xorBits x y = zeroBits n ↔ x = y := by
  rw [← xorBits_self y, xorBits_cancel_right]

@[simp]
theorem xorBits_cancel_self_right {n : Nat} (x y : Bits n) :
    xorBits (xorBits x y) y = x := by
  rw [xorBits_assoc, xorBits_self, xorBits_zero_right]

@[simp]
theorem flipBit_apply_same {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit x i i = !x i := by
  simp [flipBit, xorBits, basisBit]

theorem flipBit_apply_ne {n : Nat} (x : Bits n) {i j : Fin n}
    (hij : j ≠ i) :
    flipBit x i j = x j := by
  simp [flipBit, xorBits, basisBit, hij]

@[simp]
theorem flipBit_involutive {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit (flipBit x i) i = x := by
  exact xorBits_cancel_self_right x (basisBit i)

theorem basisBit_ne_zero {n : Nat} (i : Fin n) :
    basisBit i ≠ zeroBits n := by
  intro h
  have := congrFun h i
  simp [basisBit, zeroBits] at this

theorem xorBits_ne_self_of_ne_zero {n : Nat} (x δ : Bits n)
    (hδ : δ ≠ zeroBits n) :
    xorBits x δ ≠ x := by
  intro h
  have h' := congrArg (fun y => xorBits x y) h
  rw [xorBits_self, ← xorBits_assoc, xorBits_self, xorBits_zero_left] at h'
  exact hδ h'

theorem flipBit_ne {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit x i ≠ x :=
  xorBits_ne_self_of_ne_zero x (basisBit i) (basisBit_ne_zero i)


end BitMatrix.Dynamics.Avalanche
