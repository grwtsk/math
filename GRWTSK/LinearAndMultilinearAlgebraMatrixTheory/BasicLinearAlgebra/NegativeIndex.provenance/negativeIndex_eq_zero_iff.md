# Negative-index zero criterion and transport

Local attribution: grwtsk contributors.

## Exact maintained source

- Module: `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex`.
- Namespace: `GRWTSK.LinearAlgebra.NegativeIndex`.
- Main declaration: `negativeIndex_eq_zero_iff`.
- Source SHA-256: `478db0d5c3e0ebee22f6d3be5483b4ae8edf239138410802fc800a28dbe35fab`.
- Source Git blob: `e0b7a4a243ced641ab3961a93f749c43c5002cb0`.
- Coordination: https://github.com/grwtsk/math/issues/1808 ; research context: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/43 .

This is a direct local formalization of the elementary argument in the preceding
RP-OC-03 discussion, not an imported or adapted third-party Lean proof.

## Statement, proof and consumer

Over a specified normed field K, for a K-module V and Q:V -> R satisfying
Q(0)=0 and Q(c*x)=||c||^2 Q(x), the extended-natural negative index is zero
if and only if Q is nonnegative on all V. The index is the supremum of n for
which an injective K-linear map K^n -> V has strictly negative value on every
nonzero vector. It is not `finrank` of an arbitrary infinite-dimensional
subspace, which could misleadingly return zero. The field remains explicit;
complex dimension is never silently replaced by real dimension.

Primary argument: a negative vector gives a one-dimensional negative frame
by scalar multiplication. Norm-square homogeneity ensures negativity on every
nonzero scalar, and Q(0)=0 ensures injectivity. Conversely, a negative frame
of positive dimension contradicts pointwise nonnegativity. Taking the
extended-natural supremum gives the zero criterion.

Transport composes actual injective linear maps; a target form bounded above
by the source retains its negative directions. Applying this in both
directions to an exact linear equivalence proves congruence invariance.
Submodule inclusion proves restriction monotonicity. An exhaustive family of
actual test subspaces proves the all-local/global zero-index equivalence.
No claim is made that a finite sampled family is exhaustive.

Public helpers/companions in this source are `HasNegativeFrame`,
`negativeIndex`, `hasNegativeFrame_zero`, `natCast_le_negativeIndex`,
`hasNegativeFrame_map`, `negativeIndex_le_of_frames`,
`negativeIndex_le_of_map`, `negativeIndex_antitone`, `negativeIndex_congr`,
`negativeIndex_restrict_le`, `negativeIndex_restrict_mono`,
`negativeIndex_eq_zero_of_nonneg`, `negativeIndex_restrict_eq_zero`,
`hasNegativeFrame_one_of_neg`, and `forall_restriction_index_zero_iff`.

Mathematical consumer: local negative-index tests for the same full arithmetic
Weil form. The source has no RH/GRH predicate and no axiom asserting Weil's
criterion. Constructing the actual test modules, proving their exhaustion,
and identifying the arithmetic form and its laws remain separate suppliers.

## Source comparison and limits

Design source: grwtsk contributors, *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section
19.4, pp. 41--42; uploaded PDF SHA-256
`ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
The paper asks for localized index monotonicity and explicitly distinguishes
finite matrices, infinite completions and actual source return. No paper
bytes are copied here.

These arguments are standard linear algebra; no mathematical novelty is
asserted. Novelty assessment: UNASSESSED. Finite versus infinite global index,
closedness, completion, compact resolvent, eigenvalue multiplicity and
spectral flow are not supplied by these algebraic statements. Zero index
means nonnegativity, not strict positivity or nondegeneracy. The same
argument rendered in a second formal script would not be independent review.

## Pins and verification boundary

Inspected math baseline: `6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Toolchain: `leanprover/lean4:v4.34.1`; Mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Root imports and dependency pins are unchanged.

Lean elaboration/typechecking, fresh kernel replay, transitive axiom audit,
and independent mathematical review: **NOT_RUN**. This is a formal-source
candidate, not an accepted machine-checked theorem. The missing canonical
Noe skill at `0126ba445446dea25047a89884df1adf6b10251a` prevents dependent
proof automation; no execution was dispatched.

A separately authorized checker should build this exact module with the
pinned dependencies and inspect every exported declaration and its transitive
axioms. Execution artifacts belong in the authorized operational repository,
not in this mathematical source tree.
