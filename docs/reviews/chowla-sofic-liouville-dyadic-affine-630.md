# Liouville dyadic affine reindexing: arithmetic obstruction and conditional binary Chowla return

Research date: 2026-10-22  
Owner: math #630; arithmetic scope #441; square-modulus fixed-affine boundary #571.  
Parent source head inspected: `8e5293cde7d1ff8bc0f588a31ba600b6b81b1691`.  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO_ANALYTIC_ESTIMATE_ADMITTED**.

## 1. Why this is arithmetic, not another finite Walsh wrapper

The earlier seven- and eight-module probability packet proves only **conditional**
finite sign-pattern estimates. The missing analytic input is quantitative
ordinary Liouville/Chowla correlation cancellation. This new source leaf
inspects Mathlib's **actual arithmetic function** rather than inventing an
unspecified sign sequence or admitting a published estimate as a Lean axiom.

Source: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean`, blob
`64cc286852eb05408ef337b6e86c3ce6f405d188`.

Its ONLY direct imports are:

- `Mathlib.NumberTheory.ArithmeticFunction.Liouville`;
- `Mathlib.Tactic`.

The upstream Mathlib Liouville definition and complete-multiplicativity
lemma are by Thomas Browning and other Mathlib contributors (Apache-2.0).
We inspected pinned Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`.
No new Liouville definitions are attributed to this project.

## 2. Unconditional proportional-affine obstruction

For every positive integer `n`, Mathlib's
`ArithmeticFunction.liouville` satisfies

```text
lambda(2) = -1;
lambda(2*n) = -lambda(n);
lambda(n)^2 = 1       (n>0).
```

Therefore

```text
lambda(n)*lambda(2*n) = -1  (n>0).
```

For every `M>0`,

```text
(1/M) * sum_(n=0)^(M-1)
     lambda(n+1)*lambda(2*(n+1)) = -1.
```

This is a **refutation at the proportional-form scope** of the
claim that all pairs of distinct affine forms have cancelling ordinary
Liouville correlations. Distinct functions are NOT the correct
criterion: the pair `n` and `2n` is proportional, with determinant
zero. In particular no error budget `epsilon<1` can bound the
absolute value of this normalized correlation.

This does NOT refute the ordinary binary Chowla theorem for
fixed **nonproportional** affine forms, and does NOT establish a
counterexample for distinct ADDITIVE shifts `n+h_1,n+h_2`.
The source excludes `n=0` when using the ±1 sign law because
Mathlib defines `lambda(0)=0`.

## 3. A positive exact dyadic reindexing for adjacent additive shifts

Define the genuine adjacent additive correlation

```text
A(2M) = sum_(n=0)^(2M-1) lambda(n+1)*lambda(n+2).
```

Group its terms into positions `2m,2m+1`. Since
`lambda(2(m+1))=-lambda(m+1)`,

```text
lambda(2m+1)*lambda(2m+2)
 + lambda(2m+2)*lambda(2m+3)

   = -lambda(m+1) *
       (lambda(2m+1)+lambda(2m+3)).
```

Consequently the exact ordinary finite identity is

```text
A(2M) = - L(M) - R(M)

L(M) = sum_(m=0)^(M-1) lambda(m+1)*lambda(2m+1)
R(M) = sum_(m=0)^(M-1) lambda(m+1)*lambda(2m+3).
```

Both resulting pairs are fixed **nonproportional** affine forms:

```text
L: (m+1,2m+1) determinant 1*1-2*1 = -1
R: (m+1,2m+3) determinant 1*3-2*1 = +1.
```

Thus, for ANY independently proved bounds `|L(M)|≤B_L(M)` and
`|R(M)|≤B_R(M)`,

```text
|A(2M)| ≤ B_L(M) + B_R(M).
```

The exact **even cutoff** `2M` is essential. An all-horizon result
requires an extra endpoint lemma for odd cutoffs. No absolute value is
inserted into the signed affine sums before summation.

This is a concrete arithmetic path to the *binary additive* correlation
of the Liouville source in the Walsh packet. It is NOT the all-order
growing-shift energy bound. In particular, one adjacent correlation
does not control all nonempty subsets of larger shift sets.

## 4. How far the external Result 007 reaches

OpenAI, *Ordinary two-point correlations of multiplicative functions*
(September 24, 2026), and the accompanying Lean scope note report a
power-of-log saving for Liouville along every **fixed pair of
nonproportional affine forms**, with a universal positive exponent but
constants depending on the forms:

- Source preprint: https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/README.md
- Source scope note: https://github.com/openai/math/blob/main/lean/docs/007.md
- Inspected source revision: `openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`.

The two dyadic affine sums are at fixed admissible form pairs.
**If** a suitably normalized theorem with this exact fixed-form scope
is imported and independently checked, it can supply bounds on
`L(M)` and `R(M)` and hence on the adjacent Liouville binary
correlation at even cutoffs. This conditional inference is not
locally instantiated by a proof term.

No theorem from that source is imported into this module; citation,
Lean scope metadata, or comparator challenge files are not a kernel
receipt for `grwtsk/math`.

The forms `(m+1,2m+1)` and `(m+1,2m+3)` remain fixed as `M`
grows. Nothing here supplies a common implied constant uniform over
a family of forms whose coefficients/shifts grow with `M`, or
higher-order products, twisted square-modulus progressions, maximal
dyadic source windows, or the RH-facing supplier in #571.

## 5. Source inventory and hostile controls

Fourteen proposed theorem heads:

```text
liouville_at_two
liouville_twice
liouville_positive_square
liouville_proportional_product
liouville_proportional_pair_term
liouville_proportional_prefix
proportionalLiouvilleMean_eq_neg_one
proportional_bound_below_one_impossible
adjacentLiouville_pair_dyadic
sum_even_odd_reindex
adjacentLiouville_prefix_dyadic
adjacentLiouville_prefix_affine
adjacentLiouville_abs_le_of_affine_bounds
dyadicAffine_determinant_controls
```

Five source definitions:

```text
proportionalLiouvilleMean
adjacentLiouvilleTerm
dyadicAffineTerm
leftDyadicAffineSum
rightDyadicAffineSum
```

The **independent**, passive target is
`docs/verification/_unscoped/liouville-dyadic-affine-630-v0.1.toml`.
It is intentionally not added as a dependency of the still-uncompiled
eight-module generic Walsh packet. This arithmetic module should be
built and checked as its own isolated theorem leaf.

Reject:

- ignoring `lambda(0)=0` or erasing the `n>0` hypothesis;
- conflating nonidentical and nonproportional affine forms;
- interpreting a cancellation theorem for nonproportional forms as
  a result about the proportional pair `n,2n`;
- altering the signed dyadic reindexing or the exact `2M` endpoint;
- accepting fixed two-point cancellation as the complete all-order
  ordinary Chowla envelope;
- filling a supposed Lean adapter with paper citation metadata;
- promoting arithmetic identities or finite checks to RH or GUE.

## 6. Finite checks and independent acceptance

An independent integer implementation of `lambda(n)=(-1)^Omega(n)`
checked:

- `lambda(n)^2=1` and `lambda(n)*lambda(2n)=-1` for
  **20,000** positive integers;
- the exact paired dyadic identity for `m=0,...,1000`;
- the full even-prefix equality and resulting affine absolute bound
  for `M=0,...,512`.

No discrepancies were found. These computations are NOT Lean
elaboration, kernel checking, theorem-type inspection, trust audit
or external replay.

Source presence and source-level theorem heads do not establish
successful compilation. An authorized, independently bound clean
Lean 4.33.0 / pinned Mathlib build, exact theorem-type and
transitive-axiom audit, and replay receipt are required before
accepting or importing this arithmetic leaf.

**Evidence state:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_FIXED_FORM_ADAPTER_OPEN / ALL_ORDER_CHOWLA_OPEN /
GROWING_SHIFT_UNIFORMITY_OPEN / RH_NONCLAIM`.
