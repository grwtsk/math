# Gaussian, modular and Dirichlet certificates on Farey walks

**Source status (2026-10-23): SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**
The checked identity of this note is a *source declaration*, not an accepted
Lean theorem: no pinned compilation, fresh kernel replay, transitive axiom
inspection or executable negative control has been returned.

## Source and graph

- New direct main-branch source: [GaussianModularDirichletWalk.lean](../../../../GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean), introduction commit
  [4ca07594f5c944ba36cd1b14e44f4482cc5d94e8](https://github.com/grwtsk/math/commit/4ca07594f5c944ba36cd1b14e44f4482cc5d94e8),
  blob `54583ff703940dc4fe3fe72b981fdd4cb898cea5`.
- Direct imported repository modules:
  `GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge` and
  `GRWTSK.NumberTheory.Farey.GroupSuperwalk`.
- Their underlying actual suppliers include
  `ResolvableQuintic.Cell`, `ResolvableEye`,
  `QuadraticGaussianLine.gaussian_product_im`,
  `FiniteAdditiveProjector.characterAverage_eq_indicator`,
  `DirichletNonunitResidueObstruction.dirichletCharacter_mod_four_two_eq_zero`,
  `GroupSuperwalk.frame_walk` and
  `GroupSuperwalk.quintic_eye_on_walk_iff_of_endpoint_pos`.
  These are *repository source candidates*, not silently independent verified axioms.
- Pinned ecosystem: Lean `leanprover/lean4:v4.33.0`,
  Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
  The root file `GRWTSK.lean` is intentionally not updated before validation.

## Exact finite bridge

For `I : Farey.Cell`, its natural-number endpoints `a/b < c/d` have
`b > 0`, `d > 0` and the *exact* determinant constraint
`bc = ad + 1`. Its associated Gaussian integers are
`a + ib` and `c - id`. Their product has imaginary part
`bc - ad = 1`, which agrees with the determinant of the
orientation-correct integer matrix
`[[c,a],[d,b]]`. For a chronological finite word `w` of Farey mediant
turns, the repository's actual matrix word is `wordUnit w`; the identity
`frame (walk I w) = frame I * wordUnit w` transports *this same* determinant,
without reversing multiplication order.

The modular determinant equals `1 : ZMod q` for **every** `q : ℕ`
(including zero, where the type is not finite). The full additive-frequency
mediant projector requires **[NeZero q]** and selects the numerator and
denominator sums *modulo q*. This is not equality of unbounded integers.
The no-wrap lemmas of `FiniteAdditiveProjector` are separate.

The predicate `GaussianModularEye p q J` is exactly equivalent to
`ResolvableEye p J`: a real polynomial sign condition at the two
*rational endpoints* of an actual Farey cell, decorated with arithmetic
identities already forced by the cell. In a word-reached cell, multiplying
the polynomial by an extra factor preserves that predicate when the extra
factor is **strictly positive at both reached endpoints**, not by merely
having quadratic degree. Neither premise asserts a rational zero.

## The nonunit obstruction is conditional and scoped

Let `J = walk I w`. The `hNonunit` premise is
`¬ IsUnit ((J.rightNum : ℕ) : ZMod q)`, at the **reached** cell.
It is not claimed to hold at the start of every walk or to be preserved
by a left or right turn. Under this premise, every ordinary multiplicative
`DirichletCharacter ℂ q` vanishes at that residue, and so does **every
finite linear combination of such characters**, regardless of coefficients.
However the normalized finite additive average at the difference between
that residue and itself is exactly one. Thus **no pure finite
multiplicative-character sum** represents the delta selector at that
nonunit. The repository's actual cell `1/2 < 2/3`, modulus four,
instantiates the result; the original modulus-four and Möbius source
witnesses remain independently recorded.

The combined interface
`GRWTSK.NumberTheory.Farey.gaussianModularEye_nonunit_obstruction_on_walk`
retains **both** explicit inputs:
`hEye : ResolvableEye p (walk I w)` and `hNonunit` at the reached right
numerator. The conclusion packages the Gaussian word-frame identity,
the modular eye, additive detection, and the precise no-pure-Dirichlet
obstruction. It **does not** exclude gcd-stratified repairs, Dirichlet
L-functions, modular-form comparisons, enlarged spectral channels, or
analytic approaches; it proves no spectral gap, logarithmic spiral,
Farey completeness, rational-root existence, RH, or elliptic rank.

## Source and bibliographic provenance

This is a *repository-derived composition* of prior exact algebraic
definitions and classical finite character facts, **not a formalization
of an independently identified paper theorem**. No publication title,
authors, date, theorem number or historical priority are invented for it.
Mathlib implementation dependencies are code sources, pinned by the
Mathlib revision above; their repository import paths are present in the
direct or transitive supplier files. The provenance record is in
[paper-to-formalization-references.md](../../../reference/literature/reading-background/paper-to-formalization-references.md)
and must not be upgraded by a source merge.

**Commit-bound validation queue:** [grwtsk/math #1096](https://github.com/grwtsk/math/issues/1096)
(pinned to `ecfda6e1b7ea98925de3cbbf8e86bf258b8b8e9c`, no executor
result). Parent module checks are tracked separately in #1093 and #1094.

## Required validation (pending)

On a host with actual Lean/Lake and authorized repository checkout:

1. Checkout the **exact latest main commit** and record `git rev-parse HEAD`.
2. Build the two new direct dependencies and their complete transitive
   closure using the repository-pinned Lean/Mathlib:
   `lake build --wfail GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge`;
   `lake build --wfail GRWTSK.NumberTheory.Farey.GroupSuperwalk`.
3. Build the new module:
   `lake build --wfail GRWTSK.NumberTheory.Farey.GaussianModularDirichletWalk`
   and `lake env lean GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean`.
4. Independently replay through the fresh kernel (`--trust=0`, or a
   pinned `leanchecker` if available), inspect `#print axioms` for *all*
   direct and imported key declarations, and audit transitive, private,
   generated, native and unsafe declarations. Capture each exit status
   and full stdout/stderr; reject `sorryAx`.
5. Test hostile controls: reversed frame orientation; swapped word order;
   generic coordinate unit from determinant one; arbitrary nonunit status
   without `hNonunit`; modular-to-integer inference without no-wrap;
   root existence from signs; pure Dirichlet restoration of a nonunit
   delta function; spectral or analytic promotion from the finite identity.

If a proof fails, preserve exact hypotheses and make a normal non-force
corrective commit on current main before claiming acceptance. A GitHub
readback, source scan or issue queue is not executable verification.
