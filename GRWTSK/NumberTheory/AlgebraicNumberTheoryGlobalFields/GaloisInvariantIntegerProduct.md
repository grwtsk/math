# Integral Galois-permuted families give integer products

Local attribution: grwtsk contributors.

Maintained source: [GaloisInvariantIntegerProduct.lean](GaloisInvariantIntegerProduct.lean).
Namespace: `GRWTSK.NumberTheory.GaloisInvariantIntegerProduct`.

## The actual integer witness

Let `I` be a finite type and `f : I → ℂ`. Assume that every `f i` is
integral over `ℤ` and that, for every abstract field automorphism
`σ : ℂ ≃+* ℂ`, there is an index equivalence `u : I ≃ I` with

\[
f(u(i))=\sigma(f(i))\quad\text{for every }i.
\]

The module proves the existence of an integer `N` satisfying the exact
equality

\[
(N:\mathbf C)=\prod_{i\in I}f(i).
\]

If every factor is nonzero and `log ‖f i‖≤B i`, the same integer satisfies

\[
N\ne0,\qquad \log|(N:\mathbf R)|\le\sum_i B_i.
\]

A uniform budget gives `card(I) B`. The double-family version retains
both indexed multiplicities and gives `card(I) card(J) B`. Empty families
are allowed; their product is one, with logarithm zero.

The integer-existence statement corresponds exactly to
`UpperTheory.exists_int_eq_prod_of_galois_permuted_integral` in the
[pinned submitted source][external]. The local logarithmic refinements
reconstruct the finite-product part of
`frobenius_trace_norm_nonzero_log_bound` in its [consumer][consumer].
The local [trace-witness module](EisensteinTraceIntegerWitness.lean)
instantiates this result with the actual scaled Eisenstein trace
differences. It does not assume rationality or integer-valuedness of the
product as a premise.

## Complete descent argument

### 1. Extend a coefficient automorphism

For fields `F ⊆ L` with `L` algebraically closed, every field automorphism
`τ` of `F` extends to a field automorphism of `L`.

Choose a transcendence basis `s` of `L/F`. The generated subalgebra
`A=F[s]` is isomorphic to the multivariable polynomial ring over `F`.
Apply `τ` to coefficients while leaving the variables fixed; transport
this polynomial-ring automorphism to `A` using that existing algebra
equivalence. It extends `τ` on `F`. The field `L` is an algebraic closure
of `A` in Mathlib's domain formulation, so uniqueness of algebraic
closures extends the automorphism of `A` to one of `L`.

The Lean proof uses Mathlib's transcendence-basis classification,
`aevalEquiv`, `MvPolynomial.mapEquiv`, and
`IsAlgClosure.equivOfEquiv`. It introduces no custom alternate meaning
of the field or its algebra structure.

### 2. An algebraic fixed point is rational

Let `x : ℂ` be algebraic over `ℚ` and fixed by every abstract complex
field automorphism. Regard `x` as an element of
`A=algebraicClosure ℚ ℂ`, the subfield of complex algebraic numbers.
Every `ℚ`-automorphism of `A` extends to one of `ℂ` by step 1, so it fixes
`x`. Infinite Galois theory for the normal separable extension `A/ℚ`
identifies its full automorphism fixed field with `ℚ`. Thus `x` is the
image of a rational number.

The local theorem explicitly retains algebraicity. It does not need a
general classification of arbitrary transcendental fixed points.

### 3. An integral rational is an integer

An element integral over `ℤ` is algebraic over `ℚ`. Step 2 therefore
applies to an integral fixed point. Injectivity of `ℚ → ℂ` transfers
integrality to the resulting rational number. Since `ℤ` is integrally
closed in its fraction field `ℚ`, that rational number is the image of an
integer.

### 4. Apply this to the full indexed product

Closure of integral elements under finite products makes
`P=∏ i, f i` integral. For every `σ`,

\[
\sigma(P)=\prod_i\sigma(f(i))
=\prod_i f(u(i))=\prod_i f(i)=P.
\]

The last equality uses the index equivalence, preserving multiplicities.
Step 3 gives `N` with `(N:ℂ)=P`. If all factors are nonzero, so is `N`.
Taking the norm and logarithm of this exact product gives

\[
\log|N|=\sum_i\log|f(i)|\le\sum_i B_i.
\]

For two finite indices, the product equivalence `u × v` supplies the
required permutation on `I × J`. The cardinality is the full product
`card(I) card(J)`.

## Scope and hostile checks

The submitted descent also uses automorphism extension and fixed-field
reasoning. The local proof constructs the extension through Mathlib's
existing adjoin algebra equivalence, and only needs the algebraic fixed
point theorem. The finite-product/logarithm argument shares the same
mathematical method. This is original source reconstruction against the
root Mathlib, not a claim of a second independent route to RH or of
prior-art novelty. No submitted implementation or imports were copied.

The hypotheses have different jobs:

| Weakened hypothesis | Failure |
|---|---|
| Invariance only under complex conjugation, or only continuous complex automorphisms | The singleton family `sqrt(2)` is integral and fixed, but its product is not an integer. |
| Full automorphism invariance without integrality | The singleton `1/2` is fixed by every automorphism but is not an integer. |
| Stable support instead of an indexed permutation | The family `(sqrt(2),sqrt(2),−sqrt(2))` has invariant support but product `−2sqrt(2)`, which is not rational. |
| Allow a zero factor while claiming a nonzero witness | The product itself is zero. |

The audit checked the conjugation-only and rational-half obstructions
and the empty-family endpoint. The continuous-automorphism observation
and unequal-multiplicity example were reviewed mathematically.
The theorem does not construct the finite trace family or prove any
automorphic count, purity bound, local classification, deformation
estimate, or prime-window statement. Those remain the actual suppliers
needed by the submitted arithmetic route.

## Declaration correspondence

All suffixes are in `GRWTSK.NumberTheory.GaloisInvariantIntegerProduct`.

| Declaration | Role and correspondence |
|---|---|
| `exists_ringEquiv_extending` | Original construction from Mathlib's transcendence-basis algebra equivalence and algebraic-closure uniqueness. |
| `exists_rat_of_isAlgebraic_of_fixed` | Algebraic fixed-field descent; weaker required domain than the external general fixed-point supplier. |
| `exists_int_of_isIntegral_of_fixed` | Rational descent followed by integral closure of `ℤ` in `ℚ`. |
| `prod_fixed_of_galois_permuted` | Exact indexed-product invariance with multiplicities. |
| `exists_int_eq_prod_of_galois_permuted_integral` | Exact external integer-existence statement. |
| `exists_int_prod_ne_zero_log_le` | Nonzero witness and individual factor budgets. |
| `exists_int_prod_ne_zero_log_le_card` | Uniform full-cardinality budget. |
| `exists_int_double_prod_ne_zero_log_le` | Independently permuted orbit/trace families and their product cardinality. |

Local source is MIT licensed and attributed to `grwtsk contributors`.
Mathlib retains upstream attribution and Apache-2.0 licensing. The
external mirror at `a172c464fd4bcfc4f53e394dcba45d742b1409a6` identifies
the submitted mathematical source, not the mirror maintainer as its
author. Relevant primary Mathlib sources at the root dependency pin are
[classification][classification], [algebraic closure][closure],
[infinite Galois theory][galois], and [integral closure][integral].

## Exact-source verification

Source base: `grwtsk/math@8acc7048187539cb1bbdfd810472e3150d5d919d`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`83235351479ad6b833f4b3803f7cda7364cb9b59765a4579216081668167de57`.

- Maintained-source compilation with `--trust=0 -DwarningAsError=true`
  passed, exit `0`, no diagnostics, in 4.751 seconds.
- The imported exact-target/control/axiom audit passed with the compiler's
  ordinary/default import trust and warnings as errors in 3.709 seconds.
  All eight transitive axiom lists were exactly
  `propext`, `Classical.choice`, and `Quot.sound`. The external integer
  target, empty family, rational half, and conjugation-only obstruction
  were checked.
- Audit source SHA-256:
  `bc74c0d8aa5d55cbcc3f79811ff7edc40a650a82245a600e480649a3aa4bd71a`.
- Earlier attempts failed on a changed implicit argument, style lint,
  and a missing integral-closure instance after imports were narrowed.
  Earlier audit controls also needed explicit numeral normalization.
  These were recorded as failures and corrected before the final checks;
  no timeout occurred.
- A separate agent reviewed the complete descent and finite-product
  mathematics and found no material defect. This shares Mathlib and the
  supplied source, and does not constitute independent kernel replay.

Fresh full-dependency replay, an independently implemented kernel check,
and an external consumer build with this module substituted are
`NOT_RUN`. The original submission's full verification status is not
changed by these local checks.

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/BuildingsResidueChars/ExistsIntEqProdOfGaloisPermutedIntegral.lean
[consumer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[classification]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/IsAlgClosed/Classification.lean
[closure]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/AlgebraicClosure.lean
[galois]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/Galois/Infinite.lean
[integral]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/IntegralClosure/IntegrallyClosed.lean
