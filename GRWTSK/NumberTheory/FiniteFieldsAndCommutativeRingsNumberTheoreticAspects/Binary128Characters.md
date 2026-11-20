# Exact additive characters in the fixed binary field

Local attribution: grwtsk contributors.

## Mathematical consumer and existing field

[Binary128Characters.lean](Binary128Characters.lean) formalizes the harmonic
feature map requested for 128-bit polynomial-basis words. Its namespace is
`GRWTSK.FiniteFields.Binary128`.

It reuses [Binary128PolynomialBasis.lean](Binary128PolynomialBasis.lean) and
[Binary128WordArithmetic.lean](Binary128WordArithmetic.lean). The field is the
existing quotient by

\[
p(X)=X^{128}+X^7+X^2+X+1\quad\text{over }\mathbb F_2.
\]

No replacement modulus, independent word decoder, or duplicate multiplication
algorithm is introduced. The existing irreducibility theorem supplies the field
instance. The existing power basis supplies finite dimension and finite cardinality.

## Actual trace and character

`fieldTrace` is `Algebra.trace (ZMod 2) Field128`, the trace of multiplication
in this exact field extension. `field_finrank` proves dimension 128, and
`fieldTrace_frobenius` proves

\[
\iota(\operatorname{Tr}(x))=\sum_{i=0}^{127}x^{2^i}.
\]

Here `ι` is the prime-field embedding. This is an explicit 128-term mathematical
specification. It can support a repeated-squaring implementation without
enumerating the field.

`binarySign` sends the zero element of `ZMod 2` to `1 : ℝ` and the other element
to `−1`. The source packages

\[
\chi_a(x)=(-1)^{\operatorname{Tr}(ax)}
\]

as `character a : AddChar Field128 ℝ`. The exponent in `character_eq_pow` is
the canonical natural representative of the trace coefficient, hence either
zero or one. Both additive laws are proved:

\[
\chi_a(x+y)=\chi_a(x)\chi_a(y),\qquad
\chi_{a+b}(x)=\chi_a(x)\chi_b(x).
\]

Every value is exactly `1` or `−1`. Its real absolute value and the norm of its
complex embedding are one. These are scalar feature values; they do not equip
the binary field with an order or a real differential structure.

## Nontriviality and orthogonality

The field extension is separable. Mathlib's trace-form nondegeneracy therefore
gives, for each nonzero `a`, an `x` with `Tr(ax) ≠ 0`. The corresponding
character value is `−1`, proving that this character is nontrivial.

For a nontrivial character, translation by an element with character value
different from one permutes a finite sum and multiplies that sum by this value.
Cancellation gives zero. This yields

\[
\sum_x\chi_a(x)=\begin{cases}2^{128}&a=0,\\0&a\ne0,\end{cases}
\quad
\sum_x\chi_a(x)\chi_b(x)=
\begin{cases}2^{128}&a=b,\\0&a\ne b.\end{cases}
\]

The second statement follows from the parameter addition law and the
characteristic-two equivalence `a+b=0 ↔ a=b`. These proofs manipulate finite
sums symbolically. They do not execute or prescribe enumeration of `2^128`
elements. The cardinality comes from the already proved quotient theorem.

In Mathlib's `AddChar` type, `0` denotes the trivial character with constant
value one. Thus `character_ne_zero` proves nontriviality; it does not use a
scalar-valued zero function as a character.

## Word-level feature contract

`wordCharacter a x` applies the same character to the existing `decodeWord`
images. `wordCharacter_xor` proves

\[
\operatorname{wordCharacter}(a,x\mathbin{\mathtt{xor}}y)=
\operatorname{wordCharacter}(a,x)\operatorname{wordCharacter}(a,y).
\]

This uses the previously proved decoder/XOR refinement. It makes no claim that
integer addition, real addition, and binary-field addition are interchangeable.
The word operation is XOR; the resulting real feature combination is multiplication.

## Primary source identities and local contribution

The imported mathematical APIs are pinned to Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`:

- [Finite-field trace](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/Finite/Trace.lean):
  `FiniteField.algebraMap_trace_eq_sum_pow`, in the finite-field trace development
  initiated by Michael Stoll and maintained by Mathlib contributors.
- [Trace pairing](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Trace/Basic.lean):
  `traceForm_nondegenerate`, requiring a finite separable extension.
- [Additive characters](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/Group/AddChar.lean):
  `AddChar.map_add_eq_mul`, `AddChar.sum_eq_ite`, and
  `AddChar.sum_eq_zero_iff_ne_zero`, from the character development by Michael Stoll.

The new contribution is their concrete instantiation at the repository's proved
degree-128 quotient, the real sign character, the two-variable orthogonality
statement, and the existing word-decoder interface. This is a local formal
construction using established finite-field harmonic analysis. It is not a
claim of a new character theorem or an implementation of a Langlands correspondence.
The direct Frobenius specialization has its own
[declaration record](Binary128Characters.provenance/fieldTrace_frobenius.md).

## Evidence and remaining implementation bridge

The source elaborates without warnings under Lean `4.34.1` and the Mathlib pin
above. All 21 new theorem declarations have transitive axioms exactly
`propext`, `Classical.choice`, and `Quot.sound`; there are no placeholders or
additional mathematical axioms.

Fresh Lean kernel replay with `leanchecker --fresh` passed for this module,
including its imported constants and the existing binary-field and word-arithmetic
developments. This is a replay using Lean's own kernel. The existing endpoints
`irreducible_modulus`, `natCard_quotient`, `decodeWord_multiplyWords`, and
`checkedInverseWord_sound` also passed transitive axiom inspection with exactly
the same three foundational axioms. Their earlier targeted builds and this
fresh replay are distinct checks.

Independent external kernel checking: `NOT_RUN`. AI-assisted source review by the implementation
coordinator and a separate mathematical reviewer completed with no blocking
findings. Independent external mathematical review is `NOT_RUN`; the AI-assisted
review does not establish independence from the shared formal foundations.

The field trace and finite indexing in this source are mathematical,
noncomputable definitions. A practical encoder still needs an executable
bounded trace procedure and a proof that its output agrees with `fieldTrace`,
plus refinement of actual Rust execution. Selected characters or explicitly
small additive subspaces can be evaluated within a resource budget. Full-field
orthogonality does not require deploying all characters. Real/complex learning
tensors and certified real-number enclosures retain their separate semantics.

## Exact maintained source

The checked Lean source has SHA256
`66b2ccc7c9642155e679dafb613a714ea95f8d9adfa5870ce8e57dce35a2688d`.
