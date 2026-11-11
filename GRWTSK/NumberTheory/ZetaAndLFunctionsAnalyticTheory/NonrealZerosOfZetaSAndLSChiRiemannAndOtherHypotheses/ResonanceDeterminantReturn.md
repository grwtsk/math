# Resonance determinant return — source correspondence

Local attribution: grwtsk contributors.

## Scope and consumer

This is the first source-level installment of RP-OC-04, coordinated in
[math issue #1800](https://github.com/grwtsk/math/issues/1800).
The adjacent `ResonanceDeterminantReturn.lean` is maintained mathematical source,
not a proof-execution receipt. Its namespace is
`GRWTSK.ResonanceDeterminantReturn`. Primary MSC2020: 11M26; secondary: 11M41,
47A10. Its consumers are an eventual arithmetic Fredholm determinant identity,
a verified scalar nonvanishing certificate, and the source-to-RH/Dirichlet-zero
return. It changes no existing target, root import, dependency pin or claim status.

Source publication does not mean elaboration or mathematical acceptance.
At authorship: Lean elaboration/build, fresh kernel replay, transitive axiom audit,
and independent mathematical review are all **NOT_RUN**. No proof execution,
workflow dispatch, browser message, scheduler or background task is authorized
by this record.

## Exact sources and pins

- Design source: *Typed Mathematical Architecture and Zero-Distribution-Dependent
  Continuity*, grwtsk contributors, edition 1.0, November 10, 2026, Section 19.5,
  RP-OC-04, printed page 42 / PDF page 51. Supplied PDF SHA-256:
  `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
  The supplied paper is a design monograph, not a theorem proving the construction.
  Its bytes are not copied into this formal source repository.
- Inspected formal source base:
  `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`.
- Existing source predicate: adjacent `ZeroDefinitions.lean`,
  `GRWTSK.RiemannHypothesis.NontrivialZetaZero`, blob
  `a98e8f68e2818b88a8508335ec98e19785d597e7` at that base. All three of its conjuncts
  are retained by the RH consumer: zeta zero, exclusion of the negative even
  trivial zeros, and exclusion of the totalized pole value at one.
- Pinned environment: Lean `leanprover/lean4:v4.34.1`; Mathlib
  `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Mathlib primary source, Vincent Beffara and Stefan Kebekus,
  [`Analysis/Analytic/Order.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean):
  `analyticOrderAt`, `AnalyticAt.analyticOrderAt_eq_zero`,
  `analyticOrderAt_congr`, `analyticOrderAt_smul`.
- Mathlib primary source, Kenny Lau, Chris Hughes and Anne Baanen,
  [`LinearAlgebra/Matrix/Determinant/Basic.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean):
  `Matrix.det_mul`, `Matrix.det_one`, `Matrix.det_unique`, `Matrix.det_fin_two`.
- Mathlib primary source, David Loeffler,
  [`NumberTheory/LSeries/RiemannZeta.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean):
  the literal `_root_.RiemannHypothesis` proposition.
- Mathlib primary source, David Loeffler and Michael Stoll,
  [`NumberTheory/LSeries/DirichletContinuation.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean):
  `DirichletCharacter.LFunction`, the analytically continued function.
  A divergent `LSeries` is NOT substituted in the critical strip.
- Mathematical motivation only: Alain Connes, *Trace formula in noncommutative
  Geometry and the zeros of the Riemann zeta function*, arXiv:math/9811068v1,
  November 10, 1998, introduction and Section VIII. No theorem of that paper is
  claimed formally reproduced here; its global trace formula is not an input proof.

The dated comparison, November 11, 2026, identifies the lemmas below as elementary
local consequences and adapters to existing Mathlib results, not novel arithmetic
results. The matrix controls are deliberately artificial. Independent novelty
assessment is UNASSESSED; no priority claim is made.

## Declaration-level correspondence

All names below are qualified by `GRWTSK.ResonanceDeterminantReturn`.
`ExactReturnOn` is only a scalar equation. It is never used to certify that `D` is
a determinant. The genuine matrix determinant occurs only in finite-dimensional
lemmas and countermodels.

| Declaration | Actual statement and source/consumer |
|---|---|
| `zero_iff_of_exactReturnOn` | At a point of the stated domain, `D = exp(h) F` preserves zero membership because the complex exponential is nonzero; elementary consequence of the RP-OC-04 identity. |
| `analyticOrder_eq_of_unit_factor` | An analytic multiplier nonzero at the base point preserves Mathlib's analytic order under neighborhood equality; adapter of the four cited vanishing-order declarations. |
| `analyticOrder_eq_of_exp_return` | Specializes the preceding lemma to an analytic exponential factor. The analyticity premise is explicit. |
| `zero_re_eq_half_of_return` | Source zeros lie on the line only after independent off-line nonvanishing of D is supplied. |
| `ne_zero_of_error_lt` | If the exact scalar were zero, its distance to the approximant would equal the approximant's modulus, contradicting the strict margin. |
| `source_ne_zero_of_error_bound` | Composes the preceding certificate and exact return; no interpolation or contour count is inferred. |
| `matrix_det_ne_zero_of_right_inverse` | Taking determinants in AB=I gives det(A)det(B)=1. Finite dimension and square matrices are explicit. |
| `riemannHypothesis_of_return` | Every zero in the unchanged canonical predicate is mapped into the identity domain and to a zero of F. Off-line exclusion then concludes the literal Mathlib RH proposition. |
| `dirichlet_zero_re_eq_half_of_return` | Per-character implication for Mathlib's actual continued L-function, retaining both open-strip inequalities. No new GRH definition or strip-equivalence theorem is asserted. |
| `scalarKernel_det` | For an arbitrary scalar F, the one-dimensional matrix K=1-F has det(I-K)=F. This explains why source independence must be a separate requirement. |
| `offCriticalPolynomial_reflect` | Expansion of F(1-s)=F(s) for F=(s-1/4)(s-3/4). |
| `offCriticalPolynomial_quarter` | Exact substitution at 1/4. |
| `offCriticalPolynomial_three_quarters` | Exact substitution at 3/4. |
| `exact_return_with_offCritical_zero` | Packages an actual matrix determinant, exact return, reflection symmetry, and an off-critical zero into a countermodel to bare-realization localization. |
| `shear_sq` | Direct four-entry multiplication proves T(z)^2=0 for T(z)=[[0,z],[0,0]]. |
| `shear_right_inverse` | (I-T)(I+T)=I follows from the square-zero identity. |
| `shear_left_inverse` | The reverse multiplication also equals I. |
| `shear_det` | The actual 2-by-2 determinant of I-T is one, independent of z. |
| `shear_inverse_entry` | The (0,1) entry of the exhibited two-sided inverse is z. |
| `shear_inverse_entry_unbounded` | Taking a real parameter t=abs(B)+1 exceeds any proposed real entry bound B. This is not an assertion about an unspecified matrix norm. |

## Complete elementary arguments and their limits

The return argument is pointwise multiplication in the complex field. A
nonvanishing multiplier gives equality of zero sets. Analytic order is a separate
local issue: the supplied identity must hold on a neighborhood, both factors must
be analytic there, and the multiplier must be nonzero at the point. Mathlib's
order is additive for the product; the multiplier has order zero. The result is
valid also when the source germ vanishes identically and the order is infinite.
A value equality at just one point cannot be substituted for neighborhood equality.

For the arithmetic implication, take any hypothetical off-critical source zero.
The source correspondence places it in U and makes F vanish there. Exact return
makes D vanish there. Independent off-critical nonvanishing of D contradicts this.
The zeta specialization retains the canonical exclusions and returns the unchanged
library RH proposition. The Dirichlet specialization is explicitly limited to the
open-strip zeros of the analytically continued L-function. A full primitive-family
GRH adapter and boundary/trivial-zero comparison have not been supplied here.

The scalar numerical certificate is exact: if a=0 then norm(a-b)=norm(b).
Thus norm(a-b)<=epsilon<norm(b) excludes a=0. No computed approximant, rigorous
error enclosure or cover of all off-critical parameters is supplied. In particular,
this lemma is not a no-spectral-pollution theorem and is not Rouche's theorem.

The first hostile example has exact roots 1/4 and 3/4 and is symmetric under
s -> 1-s. Its scalar matrix determinant equals that polynomial identically. It is
not an L-function. Hence a determinant identity and reflection symmetry do not
supply the missing arithmetic exclusion. The polynomial is entire by elementary
algebra, but no separate holomorphy declaration is included in this module.

The second control has a determinant fixed at one and an explicit inverse with
unbounded off-diagonal entry. Algebraic invertibility or determinant separation
alone therefore provides no uniform entry bound. An operator-norm resolvent
estimate and its chosen norm require separate statements; none is smuggled in.

## Remaining Program 4 obligations

1. Construct the actual arithmetic operator/family without supplying target zeros;
   specify its space, closed domains and trace ideal.
2. Construct its determinant (including regularization and correction terms) and
   prove an exact normalized source return. Identify conductor, parity/gamma,
   prime-power and applicable pole terms. No term of the Weil form is replaced or
   omitted by this module, which does not define that form.
3. Supply completion/source correspondence for every zero in the exact primitive
   GRH target, with pole clearing and boundary cases accounted for. The generic F
   here is a parameter, not a claimed construction of the completed L-function.
4. Prove off-critical invertibility/nonvanishing independently of RH/GRH.
   Analytic Fredholm theory by itself does not discharge that premise.
5. Prove normalized trace/logarithmic-derivative integration, period control,
   multiplicity correspondence for the actual family, and contour/no-pollution
   estimates for truncations.
6. Elaborate this exact source, repair any implementation errors, replay the
   kernel, audit transitive axioms, and obtain independent mathematical review.

## Static verification specification

In a clean checkout with the existing pinned dependencies, the source-bound build
target is:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantReturn
```

Audit at least `analyticOrder_eq_of_unit_factor`, `riemannHypothesis_of_return`,
`dirichlet_zero_re_eq_half_of_return`, `exact_return_with_offCritical_zero`, and
`shear_inverse_entry_unbounded` with `#print axioms` in the checked environment.
These are instructions for later authorized verification, not executed receipts.
No root library import has been added to imply that the new module is built by
an existing default target.

The canonical Noe proof-automation path was unavailable at inspected revision
`0126ba445446dea25047a89884df1adf6b10251a`. No substitute skill or dependent proof
automation was used. This installment is manually authored source through the
GitHub plugin, with proof-execution status left unchanged at NOT_RUN.
