# Ordinary and parity-twisted Hermitian forms

Authored by grwtsk contributors.

## Maintained mathematical consumer

The declarations in `WeilParityDecomposition.lean`, under
`GRWTSK.FunctionalAnalysis.WeilParityDecomposition`, provide the algebraic parity
and coordinate conventions for a future full Weil-form realization, finite Gram
matrices, and parity-aware trial functions. They correct a distinction that must
be retained by any numerical or learned consumer: ordinary Weil nonnegativity
and the sign of a deliberately parity-twisted observable are different assertions.

This is a local algebraic development, not an adaptation of a claimed new
analytic theorem. No novelty or independent analytic proof is claimed. The
Mathlib declarations used here retain their upstream attribution and license.

## Objects, hypotheses, and complete argument

`Form V` is the existing Mathlib type of complex sesquilinear maps, linear in the
first argument and conjugate-linear in the second. It is not an unconstrained
function with its desired conclusions inserted as fields. `IsHermitian`,
`IsNonnegative`, and `IsParityInvariant` keep the three distinct properties
explicit. `hermitian_diagonal_im_zero` verifies that Hermitian diagonals are real.

For a complex-linear map P satisfying P(Pf)=f, `evenPart` and `oddPart` are the
actual linear maps (I+P)/2 and (I-P)/2. The file proves their sum is the identity,
that their images have eigenvalues +1 and -1, that they fix the appropriate
sector and annihilate the other, and that each is idempotent. `reflection` is the
concrete map f(x) ↦ f(-x) on logarithmic test functions and is proved involutive.
These function-space identities need no integrability hypothesis.

If Q(Pf,Ph)=Q(f,h), opposite eigenvectors satisfy Q(f,h)=-Q(f,h), hence their
pairing vanishes in characteristic zero. Expanding Q on the two proven
projectors gives `ordinary_decomposition`, with a **sum** of the even and odd
terms. `nonnegative_iff_sectors` proves that universal nonnegativity is equivalent
to nonnegativity on both complete sectors. Checking a finite list of trial
vectors does not meet those quantified premises.

`parityTwist` is the bundled sesquilinear map Q(f,Ph). Involutivity and invariance
allow parity to move between arguments; Hermitian symmetry then passes to the
twist. Its decomposition has a **difference** of the sector diagonals because
P acts as -1 in the odd sector. Twisting twice returns Q. Ordinary nonnegativity
therefore implies nonnegative even and nonpositive odd diagonals for the twisted
form. It does not imply strict definiteness: the zero form is an immediate
counterexample to that stronger statement. For another hostile check, take the
ordinary scalar form Q(z,w)=z conjugate(w) and P=-I: ordinary nonzero diagonal
values remain positive although every vector is odd, while the twisted diagonal
is negative. Thus spatial oddness cannot itself contradict ordinary positivity.

`finite_gram_expansion` expands the actual finite combination
f=∑ c_j phi_j and proves Q(f,f)=∑_i∑_j conjugate(c_i) Q(phi_j,phi_i)c_j. A matrix
consumer must therefore set H_ij=Q(phi_j,phi_i) for the expression c*Hc under this
linear-first convention. The existing repository `WeilMirroredHermitian.lean`
uses the opposite, conjugate-linear-first convention for its complexification;
that source cannot be silently identified with this form orientation.

Finally `reflectedPairEnergy_difference_of_squares` follows by expanding the two
complex norm squares. `reflectedPairEnergy_same`, `reflectedPairEnergy_opposite`,
and `reflectedPairEnergy_both_signs` exhibit both signs for positive multiplicity
on the unrestricted two-coordinate space. The coordinates represent values at
a reflected pair of transform arguments. Their sum/difference are not asserted
to be spatial even/odd components of an admissible test function.

## Unresolved analytic return

To apply these results to zeta or an L-function, a consumer must separately
construct the admissible test space, convergent full zero pairing with
multiplicities, arithmetic explicit-formula identity including poles and
archimedean terms, and the specified parity invariance. A reflection can exchange
a nonreal Dirichlet character with its dual. An arbitrary parity-invariant form
is not a Weil form. A negative unrestricted coordinate pair is not a produced
negative test for the complete Weil form; interpolation and remainder control
are missing. No RH, GRH, spectral completeness, no-radical, or operator-domain
claim is made here.

## Source and formal evidence

Developed against repository base
`9f997b28e66f1997c9c7c6e1318b08081e2bfd90`, Lean `v4.34.1`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The motivating local specification is
`rust_neural_architecture_specification.md`, sections 20.2 and 20.5, SHA256
`d4d153db89e3505e17dcb002053f13f7bb8e53b80eb4f200f8fe328e27300dea`.

For source SHA256
`250d6df5d00a306655272187340d35928b937a8f791f9824801e66ce379c4214`:

- Lean source elaboration/typechecking: PASS; the source was replayed in fresh processes.
- Separate `leanchecker GRWTSK.FunctionalAnalysis.WeilParityDecomposition`: PASS (exit 0).
- Transitive axiom audit of all 31 authored theorems: only `propext`,
  `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Checker implemented independently of the Lean toolchain: NOT_RUN.
- Independent analytic source-realization review: NOT_RUN. No source realization is claimed.

The separate checker is from the pinned Lean distribution; it is not an
independent foundational implementation. The checks cover the stated algebraic
declarations and do not discharge the analytic return obligations above.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
