# Direct fixed-form complex supplier for Liouville two-point correlations

Research date: 2026-10-22  
Owners: grwtsk/math #630, #441, #571.  
Parent PR #638 exact head inspected: `f1c70d8c4020f7dda97f92bad21bbfbde9d6a277`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PROOF_NOT_IMPORTED**.

## 1. Exact mathematical simplification

The earlier dyadic identities `LiouvilleDyadicAffineBridge.lean` and
`LiouvilleFixedShiftAffine.lean` are valid *written* arithmetic
identities, but a fixed positive ADDITIVE shift does not need a dyadic
argument merely to qualify for a fixed nonproportional affine-form theorem.

Take the genuine ordinary correlation

```text
A_h(N) := sum_(n=0)^(N-1)
  lambda(n+1)*lambda(n+1+h).
```

The change of variable `m=n+1` gives the EXACT identity for **all**
`N,h : Nat`, including `N=0`:

```text
A_h(N)
  = sum_(m in Finset.Icc 1 N) lambda(m)*lambda(m+h).
```

The resulting affine forms are `L1(m)=m` and `L2(m)=m+h`,
with positive slopes `a1=a2=1`, nonnegative intercepts
`b1=0,b2=h`, and determinant

```text
a1*b2 - a2*b1 = h.
```

For **each fixed h>0**, these forms are nonproportional, precisely
as required by the published OpenAI result. There is **NO dyadic
endpoint correction and NO loss of sample size** in this direct
identification. The previous parity reductions remain optional
structural identities, not prerequisites to the fixed-h theorem.

For `h=0`, the forms are proportional and
`lambda(n+1)^2=1`, so `A_0(N)=N`. This is a genuine
negative control, not an edge case that can be folded into
the nonproportional theorem.

## 2. Exact integer-to-complex interface

The new arithmetic source

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean`

has source blob `028a65364fbc3d5365a813eac2212f26739b61fc`.
Its local complex-valued functions reproduce the relevant
**signature** of OpenAI's pinned external source:

```text
liouvilleComplex(n) := (ArithmeticFunction.liouville n : Complex)

complexLiouvilleAffineSum(a1,a2,b1,b2,N)
 := sum_(m in Finset.Icc 1 N)
      liouvilleComplex(a1*m+b1) *
      liouvilleComplex(a2*m+b2).
```

This is a local standalone definition: it does NOT import or claim
definitional equality with a theorem in a different repository.

Finite arithmetic and the standard integer-to-complex cast give

```text
complexLiouvilleAffineSum(1,1,0,h,N)
  = ((A_h(N) : Int) : Complex),

norm(complexLiouvilleAffineSum(1,1,0,h,N))
  = abs(((A_h(N) : Int) : Real)).
```

The absolute value is **outside** the signed correlation sum.
A source theorem `sum_shift_succ_eq_Icc` explicitly proves
the index conversion; `complexAffine_norm_eq_fixedShift_abs`
supplies the exact final real/complex comparison. Both theorem
proof bodies remain subject to actual Lean elaboration.

## 3. Precisely typed conditional analytic supplier

The source DEFINES, but DOES NOT CONSTRUCT, the proposition

`FixedNonproportionalAffineLogSaving`:

```text
there exists real c>0, such that for every
  a1,a2,b1,b2 : Nat with a1>0, a2>0
  and a1*b2 != a2*b1,
there exists a form-dependent real C>0, such that
for all X:Real with X>=3,

norm(complexLiouvilleAffineSum(a1,a2,b1,b2,floorNat(X)))
  <= C*X / (Real.log X)^(c).
```

This mirrors the SOURCE theorem's scope. In particular,
the exponent `c` occurs **before** the affine parameters,
while the constant `C` occurs **after** them.

The new theorem
`fixedShift_liouville_logSaving_of_affine` is an honest
conditional reduction, consuming an explicit argument
`source : FixedNonproportionalAffineLogSaving`. It concludes

```text
exists real c>0, forall h>0, exists C_h>0,
  forall real X>=3,

abs((sum_(n<floorNat X)
  lambda(n+1)*lambda(n+1+h) : Int) : Real)
  <= C_h*X / (Real.log X)^c.
```

This direct theorem neither requires nor supplies a dyadic
reduction, a separate logarithmic-to-ordinary averaging
upgrade, a constant uniform over h, nor any three-point or
higher-order Chowla estimate.

A mathematical limit of the form `o(N)` for each fixed h
would follow from such an independently proved saving,
but **no separate Lean limit theorem or accepted arithmetic
cancellation proof** is included.

## 4. External proof provenance and the outstanding trust gate

Pinned provider repository:
`openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`.

Relevant source artifacts:

- Challenge statement
  `lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean`,
  blob `8764f91cc16967f765b4f19c4378ff8fb5f29cd0`.
  It contains three intentional `sorry` placeholders.
- Distinct solution entrypoint
  `lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean`,
  blob `2bd48811e73bbdc80c1f738fa889a14189186408`.
- Solution main theorem source
  `lean/OAI/NumberTheory/TwoPoint/Main.lean`,
  blob `5a1a015c0cfe8221af315933c579eb7fb2885d3f`.
- `lean/OAI/NumberTheory/TwoPoint/ShortIntervals/MRTInputsTheorem.lean`,
  blob `936159f5177f3b4bc4a1f5815c706ffe042158e2`.
- Exact reported scope
  `lean/docs/007.md`, blob
  `dad638d19609ebbddc93a5594dfc2ecd2a26a7a6`.

The comparator's `sorry` stubs are expected challenge content,
not grounds to dismiss the different solution. The inspected
solution entrypoint and main have authored theorem bodies, but a
full recursive dependency and `#print axioms` audit was **NOT**
performed here. Consequently neither source presence nor the
published paper is represented as an independently accepted
Lean proof within grwtsk/math.

The provider and local build pins differ:

```text
Provider: Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612
Local:    Lean 4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d
```

The target requires a separately authorized proof port or
source-preserving theorem import and an independently recorded
kernel, elaboration, exact type and transitive axiom receipt
before this source proposition can receive an actual value.
No external theorem is instantiated by this increment.

## 5. Formalization and review inventory

The new module adds three local definitions:

```text
liouvilleComplex
complexLiouvilleAffineSum
FixedNonproportionalAffineLogSaving
```

and eight proposed theorem declarations:

```text
complexLiouvilleAffineSum_eq_cast
sum_shift_succ_eq_Icc
fixedShift_prefix_eq_affineIcc
complexLiouvilleAffineSum_fixedShift
complexAffine_norm_eq_fixedShift_abs
directAffine_nonproportional
fixedShift_liouville_logSaving_of_affine
zeroShift_directAffine_obstruction
```

It imports only the existing two arithmetic leaf modules and pinned
Mathlib, not the eight-module generic Walsh stack and not the OAI
solution. The passive three-module target
`verification/liouville-direct-fixed-form-complex-630-v0.1.toml`
lists **40 theorem heads and 13 definitions** including parents.
These are declaration inventories only.

Finite independent test: direct ordinary integer correlation
and the separately enumerated positive-index affine sum were compared
for 97 shifts h=0,...,96 and 161 cutoffs N=0,...,160:
**15,617 cases**, no discrepancies. The zero-shift and
zero-sample cases were included. An additional **5,000**
pseudorandom finite affine quadruples and cutoff cases compared
integer sums to their complex-real embeddings, with no discrepancies.
These calculations do not validate Lean tactics, trust, or analytic
saving.

## 6. Exact remaining dependency

For a **verified fixed-binary result** at the local Lean level,
one needs (a) a compatible port/verified external proof of the
fixed-nonproportional affine theorem with its provider scope,
(b) a semantic agreement of the local complex affine definition
with the ported source, and (c) an exact theorem/axiom audit.

The earlier generic finite Chowla–sofic TV return needs something
stronger: small full nonempty-subset correlation energy, with
uniformity across any *growing* family of shifts. Even successful
porting of this fixed-binary theorem is not that supplier.

**Nonclaims:** no fixed-binary estimate has been kernel verified
in grwtsk/math, no quantitative all-order Chowla theorem,
no sofic spectral limit, GUE universality, Montgomery statistics,
modular pi identity, or Riemann Hypothesis.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_PROOF_NOT_IMPORTED / CROSS_PIN_PORT_OPEN /
GROWING_SHIFT_ALL_ORDER_CHOWLA_OPEN.**

## 7. Pinned external prime-reciprocal source-resolution blocker

**Additional review: 2026-10-22.** This is a new bounded SOURCE-ONLY
obstruction, not an additional analytic lemma or a kernel result.
Parent PR head before the increment:
`09a29b3bebdf10518d2dd49d03890a83f1931c54`.

The selected OpenAI solution entrypoint's import graph passes through
`OAI.NumberTheory.TwoPoint.PartiallyDischargedMain`
(blob `fa2db4b20ce8ea287323c2bdadddc82182a846f5`)
to `OAI.NumberTheory.TwoPoint.Bounds.PrimeReciprocalTheorem`
(blob `5dacdbe763e4aac5f1ac8e48f63bc0d55e6f1f42`).

The latter source, at pinned line 2, imports
`PrimeNumberTheoremAnd.Erdos970.MertensClassical`, then invokes
`Erdos970.Mertens.sum_prime_div_eq_log_log`.
The nominal dependency is pinned to
`AlexKontorovich/PrimeNumberTheoremAnd@c39a751132c88b6e8080b74c74023fd95b3d8be0`.
Its expected `PrimeNumberTheoremAnd/Erdos970/MertensClassical.lean`
source file was not found in that dependency's pinned tree.
This is a concrete import-provenance question, NOT an observed compiler
error: neither a complete package graph nor a clean build was run.

In the same pinned package, the source
`PrimeNumberTheoremAnd/IEANTN/Mertens.lean`
(blob `1c45fc368e4fc7c3ff7876be4f8e67c3d6f2a6be`)
contains `Mertens.sum_prime_div_eq_log_log` with the expected
prime-reciprocal bounded-error mathematical statement and an
authored proof body. The provider's own
`Bounds/MertensScale.lean` (blob
`70ed8879bcb968374e976a321bd82e53003b22db`)
already defines the target `PrimeReciprocalInput`; its
prime-set normalization is addressed in
`sievePrimesUpTo_eq_Ioc`.

An exact, **UNAPPLIED** proposed external patch is recorded as

`verification/openai-result007-prime-reciprocal-import-630-v0.1.patch`
(blob `ceaec6a0f3e6fb568abf51848e09ea7ca0d04ebf`).

It changes precisely the outdated import, the source comment, and
the theorem reference, with all other original lines unchanged.
This is a source-level candidate repair and requires an actual
Lean proof elaboration and transitive axiom audit. It is not an
accepted source patch or proof of compatibility.

The nominal PrimeNumberTheoremAnd dependency itself uses Lean 4.34.0
and has a different Mathlib revision from OpenAI's Lean 4.34.1
environment. OpenAI's pinned
`lean/patches/PrimeNumberTheoremAnd-lean4341.patch`
has empty source content at the examined pin; no repair is visible
there. These are additional explicit qualification boundaries,
not independently observed build failures.

For full exact source references and external clean-checkout
acceptance conditions, see
`docs/reviews/chowla-sofic-openai-fixed-form-prime-import-630.md`.

**Evidence:** `PINNED_SOURCE_IMPORT_PROVENANCE_UNRESOLVED /
INERT_THREE_LINE_PATCH / NO_PROVIDER_REPLAY /
NO_KERNEL_OR_TRANSITIVE_AXIOM_AUDIT /
NO_LOCAL_FIXED_FORM_PROOF_TERM`.

All source-only definitions and conditional theorem declarations
from earlier sections remain unchanged. Even after resolving this
dependency, growing-shift all-order Chowla remains independent.

## 8. Fixed-form source acceptance does not imply growing-shift uniformity

A subsequent independent source-only mathematical obstruction
formalizes the missing quantifier exchange more strongly than a
full-scale diagonal counterexample.

`GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean`
(blob `3416af4f7e2e4228e01f9b4b8ee5dd8a50540e45`)
defines the abstract rational family
`F(N,h)=1_[N=h²]`. Every fixed h has an all-horizon
bound `|F(N,h)|≤(h²+1)/(N+1)` with one common power
exponent, and eventually exact zero. But at `N=k²`,
a shift `h=k` inside the genuinely sublinear window
`1≤h≤k` has `F(k²,k)=1` and
`h/N=1/k→0`. Hence the resulting supremum cannot
tend to zero from the fixed-h quantifiers alone.

This is NOT an arithmetic counterexample to Liouville:
the family is abstract. It establishes only that even a
locally kernel-verified fixed-form saving theorem
would remain insufficient to discharge a growing-shift
uniform correlation hypothesis without an additional
positive theorem controlling its form-dependent constants.

Standalone review:
`docs/reviews/fixed-shift-uniformity-obstruction-441.md`;
passive acceptance target:
`verification/fixed-shift-uniformity-obstruction-441-v0.1.toml`.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FIXED-TO-GROWING_LOGICAL_IMPLICATION_REFUTED /
LIouVILLE_ARITHMETIC_OPEN.
