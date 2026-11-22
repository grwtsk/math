# Quadrupolar tensors: algebra, director constraints, and coordinate metric

Local attribution: grwtsk contributors.

## Mathematical consumer

[QuadrupolarTensors.lean](QuadrupolarTensors.lean) supplies exact real-algebra
contracts for director-derived tensor features and five-coordinate tensor storage.
All declarations are in `GRWTSK.QuadrupolarTensors`. The representation axes have
size three; no lattice, batch, or spatial dimension is identified with them.

For a vector `n : Fin 3 → ℝ`, the source defines

\[
Q(n)=nn^{\mathsf T}-\tfrac13I,
\qquad \operatorname{IsUnit}(n)\iff n\mathbin{\cdot}n=1.
\]

The exact input and output are real vectors and matrices. Floating-point code,
normalization tolerances, and runtime layout refinement require separate proofs
or bounded-error certificates.

## Proved statements and hypotheses

| Declarations | Content and required hypotheses |
| --- | --- |
| `quadrupole_neg`, `quadrupole_transpose` | `Q(-n)=Q(n)` and transpose symmetry, for every real vector. |
| `trace_quadrupole`, `quadrupole_symmetricTraceless` | `tr Q(n)=n·n−1`; unit length gives trace zero. |
| `trace_rankOne_mul`, `trace_quadrupole_mul_general` | Rank-one contraction and the full formula before normalization. |
| `trace_quadrupole_mul` | For two unit vectors, `tr(Q(n)Q(m))=(n·m)²−1/3`. |
| `trace_quadrupole_sq`, `rankOne_sq`, `quadrupole_sq` | For a unit vector, `tr(Q²)=2/3`, `(nnᵀ)²=nnᵀ`, and `Q²=Q/3+2I/9`. |
| `quadrupole_equivariant` | `Q(Un)=UQ(n)Uᵀ`, assuming `UUᵀ=I`. |
| `isUnit_mulVec` | Unit length is preserved assuming `UᵀU=I`. |
| `quadrupole_mulVec`, `quadrupole_mulVec_director`, `quadrupole_mulVec_perpendicular` | The action is `(n·v)n−v/3`. Unit directors have eigenvalue `2/3`; perpendicular vectors have eigenvalue `−1/3`. |
| `unpack_pack`, `pack_symmetricTraceless`, `pack_unpack` | Exact five-coordinate packing and its inverse on symmetric traceless matrices. |
| `trace_pack_mul`, `packedContraction_self`, `packedContraction_nonneg`, `packedContraction_eq_zero_iff` | The packing metric equals matrix contraction and is positive definite. |
| `packed_quadrupole_contraction` | The packed metric returns the same director observable. |
| `zero_not_quadrupole` | The zero symmetric traceless matrix cannot be a unit-director quadrupole. |

The ordinary five coordinates are

\[
a=(A_{00},A_{11},A_{01},A_{02},A_{12}),\quad
A=\begin{pmatrix}a_0&a_2&a_3\\a_2&a_1&a_4\\a_3&a_4&-a_0-a_1\end{pmatrix}.
\]

Their contraction is

\[
2a_0b_0+2a_1b_1+a_0b_1+a_1b_0+
2(a_2b_2+a_3b_3+a_4b_4).
\]

The diagonal block contributes `a₀²+a₁²+(a₀+a₁)²`, and each off-diagonal
coordinate contributes twice its square. Thus this raw packing has the exact
weighted metric above. In particular, an unweighted five-coordinate dot product
does not compute the same observable.

## Source correspondence and argument comparison

The mathematical normalization and unit-director contraction are recorded in
the author-maintained repository
[masakioshikawa/rp2-rp3-lean, `RP2/Model.lean`](https://github.com/masakioshikawa/rp2-rp3-lean/blob/ab120db3ae50756b2f640400aeca757a0ff9dbb5/RP2/Model.lean),
commit `ab120db3ae50756b2f640400aeca757a0ff9dbb5`, blob
`45550288529bcce25e9c16d4666fd72d050fadb7`. The exact locators are `RP2.Q`,
`RP2.qPair`, `RP2.spin_squares`, and `RP2.trace_Q_mul`.

The upstream statement uses `EuclideanSpace ℝ (Fin 3)` and its unit sphere.
The local statement uses coordinate functions with the explicit condition
`n ⬝ᵥ n = 1`, and introduces no Gibbs-measure or decay assumptions. The
[declaration-specific record](QuadrupolarTensors.provenance/trace_quadrupole_mul.md)
preserves this correspondence.

The local argument first proves

\[
\operatorname{tr}\big((nn^{\mathsf T})(mm^{\mathsf T})\big)=(n\cdot m)^2,
\]

using Mathlib's rank-one matrix product and trace lemmas. Expanding only the
two scalar-identity corrections yields

\[
\operatorname{tr}(Q(n)Q(m))=(n\cdot m)^2-\tfrac13(n\cdot n)
 -\tfrac13(m\cdot m)+\tfrac13.
\]

Substitution of the two unit equations gives the normalized result. The upstream
proof expands all three coordinates and uses its sphere equations. These are
distinct formal derivations of the same elementary identity; no independent
proof of the upstream lattice-decay theorem follows from either derivation.
The remaining packing, eigenvector, and image-constraint lemmas are local
algebraic consequences. No claim of mathematical novelty is made.

The hypotheses are necessary. With `n=0`, the tensor is `−I/3` and has trace
`−1`. Conversely, the zero matrix has symmetry and trace zero but fails the
unit-director square norm; `zero_not_quadrupole` formalizes that obstruction.
No assertion equates all five-dimensional tensors with the two-dimensional
director family.

## Evidence and remaining bridges

The source was elaborated with Lean `4.34.1` (compiler commit
`5045d0056413266e57c625dcd7c365b10e377c52`) and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. All 24 theorem declarations passed
transitive `#print axioms` inspection with exactly `propext`, `Classical.choice`,
and `Quot.sound`; there are no proof placeholders or new mathematical axioms.

Fresh Lean kernel replay with `leanchecker --fresh` passed for
`GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.QuadrupolarTensors`, including
imported constants. This uses Lean's own kernel; independent external kernel
checking is `NOT_RUN`. A separate AI-assisted mathematical review checked the
unit hypotheses, contraction normalization, five-coordinate metric, image
constraint, and pinned upstream statement, finding no blocking issue.
These evidence fields do not establish Rust execution equivalence,
paper-wide formalization, or a lattice correlation bound.

Remaining mathematical consumers include a sign-quotient API for directors,
certified floating-point normalization and packing, and any explicitly stated
analytic bridge from a particular finite-volume RP² model to a decay estimate.
The upstream analytic theorem is neither imported nor assumed here.

## Exact maintained source

The checked Lean source has SHA256
`02671671e5f3c36778f7ca453645c5f65243fc80de2b06ea42e0154748c88341`. The checks above and the final issue record refer to these
bytes; later source edits require their own evidence.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
