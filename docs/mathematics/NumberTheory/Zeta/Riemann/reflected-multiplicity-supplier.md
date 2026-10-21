# Analytic multiplicity under critical reflection

Owner: #330. Source-record consumer: #139. Research consumer: #307.
Regional-count supplier: #135. Verification owner: #100.

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.
All Lean proof scripts in this increment are unelaborated candidates.

## Scope

The predecessor at `32a5c506de1de76bc09d09b94f5f03b710876df8`
contains the finite pair-budget proof and its canonical zero-divisor adapter.
Its convenience theorem takes the equation

```text
multiplicity (reflected z) = multiplicity z
```

as a premise. This increment supplies that equation from the actual analytic
source identities. It leaves all predecessor declarations, roots and the
`reflection-multiplicity-budget-core-v0.1.toml` target unchanged.
It introduces no new divisor, zero predicate, multiplicity definition or count.

This is a formalization of standard analytic symmetry, not a new mathematical
result. Imported results retain their original Mathlib authorship and license.

## 1. Order transport, before specializing to zeta

For a complex function f, write f*(w)=conj(f(conj(w))). The pinned derivative
identity implies, by natural induction,

```text
D^n(f*) = (D^n f)*.
```

When f(conj(w))=conj(f(w)) for every w, f*=f. Analyticity at z and conj(z)
then identifies every finite vanishing-derivative threshold at those points.
Equality of all thresholds gives equality of their extended analytic orders.
The generic result retains both analyticity assumptions and also handles
infinite analytic order. It does not treat conjugation as a complex-linear map.

The holomorphic map h(w)=1-w is handled separately. Its derivative is -1,
so the pinned invertible-coordinate theorem gives

```text
order(f o h,z) = order(f,1-z).
```

This derivative is the derivative of the coordinate map, NOT a nonzero
zeta derivative or a simplicity assumption.

For analytic f and g at z with g(z) nonzero, order additivity gives

```text
order(f*g,z) = order(f,z).
```

The nonzero condition cannot be replaced by a bound on g or zero-set data.
A factor vanishing at z contributes its own order.

## 2. The actual completion factor

For a canonical nontrivial zero z, the existing source proves z differs from
0 and 1 and GammaR(z) is nonzero. The exact completed source satisfies

```text
Lambda(w) = Lambda0(w) - 1/w - 1/(1-w),
```

where Lambda0 is entire. The exclusions at 0 and 1 therefore establish
analyticity of Lambda at the selected source point. The rational correction
terms are not discarded before proving their denominators nonzero.

The pinned source also proves that g(w)=1/GammaR(w) is entire. At the
selected nontrivial zero, g(z) is nonzero. On a neighborhood avoiding 0,

```text
zeta(w) = Lambda(w) * g(w).
```

Consequently order(zeta,z)=order(Lambda,z). Apply the same argument at
1-z, which is itself a canonical nontrivial zero by the existing zero symmetry.
The actual functional equation Lambda(1-w)=Lambda(w), combined with the
coordinate-order theorem, yields

```text
order(zeta,1-z) = order(zeta,z).
```

The actual value identity zeta(conj(w))=conj(zeta(w)), plus analyticity at both
nontrivial points, separately yields conjugation-order equality. Composing the
two equalities gives

```text
order(zeta,1-conj(z)) = order(zeta,z).
```

Only then are equal extended orders mapped to equal natural multiplicities.
The existing CanonicalZeroDivisor proofs still establish finiteness and
positivity before the natural weights are used; this does not assign natural
order zero to a zero germ or silently discard infinite-order information.

## 3. Consumer with one multiplicity lower certificate

The new wrapper calls the UNCHANGED predecessor theorem with the derived
multiplicity-preservation equation. Its other hypotheses remain:

```text
z belongs to the canonical bounded region head;
the region is stable under actual critical reflection;
m <= multiplicity(z);
regionCount(T,U) <= K;
K < 2*m.
```

It concludes only that this supplied point has real part 1/2. An off-line
point, if supplied, would contribute at least 2*multiplicity(z) to that same
regional count. A multiple root is not excluded by the proof's hypotheses.
No actual multiple zeta zero is asserted to exist.

The finite-region cover theorem still requires coverage of EVERY actual zero
through N and every regional count upper bound. It returns only the original
RHThrough(N). Deriving reflection symmetry supplies no root location, count
certificate, numerical SourceAcceptance, coverage theorem or all-height rule.
An asymmetric count rectangle is not made reflection-stable by this result.

## 4. Source-level controls

Four generic controls are part of the isolated supplier target, not executed:

- Multiplying z^3 by 2 retains order three.
- Multiplying z by z raises order one to two.
- Composing z^3 with z^2 yields order six; the ramified chart is not invertible.
- p(z)=z(z-1)^2 has a zero set preserved by z -> 1-z, but its orders at 0
  and 1 are one and two. Zero-set reflection alone is insufficient.

The predecessor's nine finite-budget controls remain selected by inheritance.
Its strict inequality, actual partner membership and selected-point scope
are unchanged. Bounded polynomial diagnostics outside the math source are
not a proof of the analytic identities or a check of Lean elaboration.

## 5. Exact upstream source and remaining acceptance

The dependency pin is Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`,
with Lean `leanprover/lean4:v4.33.0`. Relevant inspected source declarations are:

```text
Mathlib.Analysis.Analytic.Order:
  analyticOrderAt_congr, analyticOrderAt_mul,
  natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero,
  analyticOrderAt_comp_of_deriv_ne_zero
Mathlib.Analysis.Calculus.Deriv.Star: deriv_conj_conj
Mathlib.Analysis.Calculus.IteratedDeriv.Defs: iteratedDeriv_succ
Mathlib.Analysis.Complex.CauchyIntegral: Differentiable.analyticAt
Mathlib.Analysis.SpecialFunctions.Gamma.Deligne: differentiable_GammaR_inv
Mathlib.NumberTheory.LSeries.RiemannZeta:
  completedRiemannZeta_eq, differentiable_completedZeta0,
  completedRiemannZeta_one_sub, riemannZeta_def_of_ne_zero
Mathlib.NumberTheory.Harmonic.ZetaAsymp: riemannZeta_conj
```

GammaR/GammaR_inv and completedZeta0 above are ASCII descriptions of the
Unicode Gamma and subscript-zero identifiers in the Lean files. The passive
target gives the exact identifiers and source identities; it is not a receipt.

Exact-head elaboration and repairs, independent complete expected-type
comparison, inherited import/axiom/native/compiler qualification and eventual
source-bound acceptance remain open. The baseline permitted-axiom policy is
unchanged. No choice-free dependency-closure claim is made. Source publication
is not kernel acceptance, execution permission, a count theorem or RH.
