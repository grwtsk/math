# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.BooleanDerivativesAndLocalQuantizer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2e73f6c89a4888f3c454d501776c03555006d1f` · SHA-256 `bc01deea072eff6419be516b4f2e70c83d8263acbfab87a7583718358df8b233`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BooleanDerivativesAndLocalQuantizer — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete finite Boolean derivatives/local Jacobian and its original Quantizer observation, no aggregate-frequency claim from one input. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

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

import GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.XorVectorAlgebra

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

/-! ## Boolean derivatives and local Jacobians -/

/-- The output difference across the input edge with displacement `δ`. -/
def derivative {n : Nat} (H : Bits n → Bits n) (δ x : Bits n) : Bits n :=
  xorBits (H x) (H (xorBits x δ))

/-- The derivative in the one-bit direction `i`. -/
def bitDerivative {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (x : Bits n) : Bits n :=
  derivative H (basisBit i) x

/-- One output coordinate of a one-bit derivative. -/
def derivativeBit {n : Nat} (H : Bits n → Bits n) (i j : Fin n)
    (x : Bits n) : Bool :=
  bitDerivative H i x j

/--
The exact local derivative matrix at one input.  Avalanche probabilities are
aggregates over all inputs and are not contained in this single Boolean matrix.
-/
def localJacobian {n : Nat} (H : Bits n → Bits n) (x : Bits n) : BitMatrix n n :=
  fun i j => derivativeBit H i j x

@[simp]
theorem derivative_shift {n : Nat} (H : Bits n → Bits n)
    (δ x : Bits n) :
    derivative H δ (xorBits x δ) = derivative H δ x := by
  simp only [derivative, xorBits_cancel_self_right]
  exact xorBits_comm _ _

@[simp]
theorem bitDerivative_flipBit {n : Nat} (H : Bits n → Bits n)
    (i : Fin n) (x : Bits n) :
    bitDerivative H i (flipBit x i) = bitDerivative H i x := by
  exact derivative_shift H (basisBit i) x

/-- Quantize each input by its one-point local derivative matrix. -/
def jacobianQuantizer {n : Nat} (H : Bits n → Bits n) :
    BitMatrix.Quantizer (Bits n) n n :=
  ⟨localJacobian H⟩

@[simp]
theorem jacobianQuantizer_encode {n : Nat} (H : Bits n → Bits n)
    (x : Bits n) :
    (jacobianQuantizer H).encode x = localJacobian H x :=
  rfl


end BitMatrix.Dynamics.Avalanche
```
