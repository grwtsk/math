# Fixed positive-shift Liouville correlations through exact affine forms

Research date: 2026-10-22  
Owners: grwtsk/math #630 (Chowla–sofic finite pattern interface), #441
(arithmetic quantifiers), and #571 (fixed-form/growing AP boundary).  
Inspected parent head: `2857898617903e29d46baca3c25016a23acdee13`.  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO_EXTERNAL_ESTIMATE_IMPORTED**.

## 1. Exact dependency path

The prior arithmetic leaf `LiouvilleDyadicAffineBridge.lean` isolated a
non-cancellation obstruction for proportional forms and a reindexing of the
adjacent additive pair `(n+1,n+2)`. This increment extends the positive
arithmetic reduction to **every fixed positive additive shift**
`h ` without asserting an analytic cancellation estimate.

New source:
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean`.

It imports only the earlier arithmetical module and pinned Mathlib.
No source imports any of the still-uncompiled eight-module Walsh packet,
nor the external OpenAI result as a proof.

Define the exact zero-based ordinary correlation

```text
A_h(2M) = sum_(n=0)^(2M-1) lambda(n+1)*lambda(n+1+h).
```

All Liouville inputs are positive. In this note lambda means the
Mathlib arithmetic function, with `lambda(2u)=-lambda(u)` for
`u≥0`, and `lambda(u)^2=1` for `u>0`.

## 2. Odd positive shifts: one even factor in each pair

Let `h=2j+1` with `j≥0`. Splitting `n` as `2m` and
`2m+1` gives

```text
lambda(2m+1)*lambda(2m+2j+2)
  = -lambda(2m+1)*lambda(m+j+1),

lambda(2m+2)*lambda(2m+2j+3)
  = -lambda(m+1)*lambda(2m+2j+3).
```

Hence

```text
A_(2j+1)(2M) = -L_odd(j,M)-R_odd(j,M),

L_odd(j,M) = sum_(m=0)^(M-1) lambda(2m+1)*lambda(m+j+1),
R_odd(j,M) = sum_(m=0)^(M-1) lambda(m+1)*lambda(2m+2j+3).
```

Both affine pairs satisfy the determinant test

```text
(2m+1, m+j+1):   2*(j+1)-1 = 2j+1 = h != 0,
(m+1, 2m+2j+3):   (2j+3)-2 = 2j+1 = h != 0.
```

The signs are negative. Replacing them by a positive pair-decomposition
would corrupt the signed arithmetic identity even though an
absolute-value upper bound might mask the error.

## 3. Even positive shifts: two even factors or no even factors

Let `h=2j` with `j≥1`. The even-root summand is the product of
two odd arguments. At the odd root, BOTH arguments are even and two
negative Liouville factors cancel:

```text
lambda(2m+1)*lambda(2m+2j+1)
   stays unchanged,

lambda(2m+2)*lambda(2m+2j+2)
   = +lambda(m+1)*lambda(m+j+1).
```

Therefore

```text
A_(2j)(2M) = +L_even(j,M)+R_even(j,M),

L_even(j,M) = sum_(m=0)^(M-1) lambda(2m+1)*lambda(2m+2j+1),
R_even(j,M) = sum_(m=0)^(M-1) lambda(m+1)*lambda(m+j+1).
```

The determinants are respectively

```text
2*(2j+1)-2*1 = 4j != 0;
1*(j+1)-1*1 = j != 0.
```

By contrast, `h=0` is a hostile endpoint:
`lambda(n+1)*lambda(n+1)=1` and `A_0(N)=N` exactly.
The fixed-nonproportional theorem cannot be invoked at shift zero.

## 4. Exact compatibility with the external positive-index comparator

The inspected public OpenAI solution uses

```text
affineSum f g a1 a2 b1 b2 N
   := sum_(m in Finset.Icc 1 N) f(a1*m+b1)*g(a2*m+b2)
```

over **positive indices**. The dyadic finite identity uses
`m=0,...,M`, so the exact index repair is

```text
sum_(m=0)^M F(m)
  = F(0) + sum_(m=1)^M F(m).
```

The new Lean source drafts this as `range_head_add_Icc`
and specializes it to BOTH odd and even shifts at exact endpoint
`2*(M+1)`. The two zero-indexed affine summands are explicitly
retained. They each have absolute value 1, so they cost **at most 2**
in the combined paper bound. A single odd terminal original-root
sample, if present, costs at most one more:

```text
|A_h(2*(M+1))| <= 2
  + |sum_(m=1)^M F_h(m)|
  + |sum_(m=1)^M G_h(m)|,

|A_h(2*(M+1)+1)| <= 3
  + |sum_(m=1)^M F_h(m)|
  + |sum_(m=1)^M G_h(m)|.
```

The source drafts the exact indexed identities, two absolute-value
triangles **with the zero-index terms still visible**, and the exact
one-term odd cutoff identity. The simplified numerical bounds
`2` and `3` are paper deductions and **not separately Lean-declared**
in this increment.

All four affine pairs have strictly positive slopes, nonnegative
natural intercepts, and nonzero determinant for `h>0`; these are
the requirements of the inspected external statement. No negative
intercept, invisible initial term, or logarithmic average is introduced.

## 5. The real external proof-source boundary

OpenAI, *Ordinary two-point correlations of multiplicative functions*,
September 24, 2026, reports a positive absolute exponent `c` such
that for every **fixed** positive-slope pair of nonproportional affine
forms there exists a form-dependent constant `C` satisfying a
power-of-log saving on **ordinary** sums.

Pinned public source revision:
`openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`.

Crucially, this repository has TWO different source roles:

- `lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean`
  is a *challenge statement*, blob
  `8764f91cc16967f765b4f19c4378ff8fb5f29cd0`,
  with three intentional `sorry` placeholders.
- `lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean`
  is a distinct *solution entrypoint*, blob
  `2bd48811e73bbdc80c1f738fa889a14189186408`.
  Its `liouville_log_saving` declaration refers to
  `TwoPointCorrelations.liouvilleLogSaving` defined through
  `lean/OAI/NumberTheory/TwoPoint/Main.lean`
  (blob `5a1a015c0cfe8221af315933c579eb7fb2885d3f`),
  which in turn imports the MRT input theorem assembly.
  The directly inspected files do not contain explicit `sorry`
  proof commands, but **their full transitive imports have NOT
  been independently kernel/axiom audited in this work**.

The challenge comparator's placeholders do NOT invalidate the
independent solution module. Conversely, source declarations in
`FinalMain.lean` are NOT by themselves an independently verified
kernel receipt for `grwtsk/math`.

There is a concrete qualification/port boundary:

```text
openai/math:  Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612
grwtsk/math: Lean 4.33.0 / Mathlib db584cd6d46c92f209a44c0f1c829460d327499d
```

The external `affineSum` takes **complex-valued** Liouville
functions and has a bound involving `X`, `floor X`, `norm`,
and `Real.rpow`. The local exact formulas use **integer**
Liouville values and exact sums on `Finset.Icc 1 M`.
An accepted proof adapter must explicitly preserve the `ℤ→ℂ`
cast, norm, floor, the exponent, and every fixed-form constant;
it also needs an independently verified cross-toolchain import or
a controlled theorem port. None was authored here.

Given a valid, independently trusted fixed-form logarithmic estimate
for those two pairs, the elementary inequalities would imply
ordinary binary Chowla cancellation at **each fixed h>0**, with
an implied constant dependent on h and the universal exponent
reported by the external source.

This is a **conditional local transport statement**,
not a claim of locally proved cancellation or an additional
arithmetic breakthrough. In particular, these fixed-h estimates
cannot be made uniform over shifts growing with M by changing
quantifiers, and they do not control 3-point or higher correlations.

## 6. New Lean heads and independent verification target

The new module is
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean`,
blob `5fe1d90d76dd8bcc67b15d6a5520c42688e8be64`.

Its **five new definitions** are

```text
fixedShiftTerm
oddAffineLeftTerm
oddAffineRightTerm
evenAffineLeftTerm
evenAffineRightTerm
```

Its **18 proposed theorem heads** are

```text
oddShift_evenRoot
oddShift_oddRoot
oddShift_pair
evenShift_evenRoot
evenShift_oddRoot
evenShift_pair
oddShift_prefix
evenShift_prefix
zeroShift_term
zeroShift_prefix
range_head_add_Icc
oddShift_Icc_comparator
evenShift_Icc_comparator
oddShift_affine_determinants
evenShift_affine_determinants
oddShift_Icc_triangle
evenShift_Icc_triangle
fixedShift_oddCutoff
```

The independently scoped target is
`verification/liouville-fixed-shift-affine-630-v0.1.toml`.
It covers this module and the prior arithmetic parent,
with exactly **32 theorem heads and 10 definitions**. The
previous parent-only and generic eight-module passive targets
remain distinct.

The target records the OpenAI comparator **and** solution source
paths, their pinned blobs, the local/external toolchain mismatch,
the missing complex-cast adapter, the transitive-axiom obligation,
and hostile shift-zero, parity-sign, determinant, endpoint, and
fixed-to-growing-quantifier controls.

## 7. Independent bounded arithmetic checks, not proof terms

Using an independently implemented
`lambda(n)=(-1)^Omega(n)`, the formula was checked for

- **5,400** paired dyadic indices across `h=1,...,54`,
  with zero parity/sign discrepancies;
- **3,510** even-prefix cases across all `h=1,...,54`
  and `M=0,...,64`;
- **2,970** exact positive-index `Icc 1 M` comparison
  cases across `h=1,...,54` and `M=0,...,54`;
- **400** zero-shift prefix cutoffs `N=0,...,399`;
- every affine determinant in these tested positive-shift cases
  was nonzero.

All finite tests passed. They do not establish an infinite
analytic estimate or successful Lean elaboration.

**Acceptance remains:** source-drafted declarations only; no
Lean/Lake invocation, transitive axiom audit, clean-checkout
kernel acceptance, OpenAI theorem port, or independent receipt.
Keep #630/#441 open and PR #638 draft. Neither a full-order
Chowla theorem nor GUE, Montgomery pair correlation, or RH follows.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OPENAI_SOLUTION_SOURCE_PRESENT / TRANSITIVE_TRUST_NOT_AUDITED /
CROSS_TOOLCHAIN_PORT_OPEN / FIXED_FORM_ADAPTER_OPEN /
GROWING_SHIFT_ALL_ORDER_SUPPLIER_OPEN`.


## 8. Direct complex source comparison supersedes dyadic specialization as the primary fixed-h route

A later bounded increment introduces the **simpler direct fixed-h adapter**:
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean`,
source blob `028a65364fbc3d5365a813eac2212f26739b61fc`.

For every fixed `h>0`, the original pair
`lambda(n+1)*lambda(n+1+h)` is already an affine pair
`(m,m+h)` of determinant `h`, after the exact reindexing
`m=n+1`. Thus

```text
sum_(n< N) lambda(n+1)*lambda(n+1+h)
    = sum_(m in Icc 1 N) lambda(m)*lambda(m+h).
```

This direct route matches the public OpenAI fixed-affine
positive-index convention **without any dyadic split or correction**.
The two-parity identities above remain useful source-specific
arithmetical identities and hostile sign controls, but they
are not logically required merely to apply a verified
fixed-nonproportional affine saving theorem at each fixed h.

The new source reproduces the complex affine sum signature
locally, proves source-drafted integer-to-complex-cast and
norm identities, and defines an **uninstantiated**
`FixedNonproportionalAffineLogSaving : Prop`. Its conditional
`fixedShift_liouville_logSaving_of_affine` preserves the
absolute common exponent c, form-dependent constant C_h,
full real X>=3 hypothesis, floor cutoff, and `Real.rpow`.
No external theorem was actually imported or kernel checked.

The dedicated note
`docs/reviews/chowla-sofic-direct-fixed-form-complex-630.md`
and standalone three-module target
`verification/liouville-direct-fixed-form-complex-630-v0.1.toml`
now govern this more economical direct path. The earlier
two-module arithmetic target remains unchanged and distinct.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_PROOF_NOT_IMPORTED / FIXED_FORM_PORT_OPEN /
GROWING_SHIFT_ALL_ORDER_CHOWLA_OPEN.
