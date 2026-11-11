# Archimedean domain and tail for the original arithmetic source

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm`.

## Exact source and scope

Inspected main `c14f9934bbe83e7ff5706f6a730947fac003a412`, complete root tree `7c8d416fcdd69ff4935f675146ed6f5c30cffc3c`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pins and root imports are unchanged.
New source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`; Git blob `4caf30507216472f2686c1398307cf5c27dccf0c`.
The enclosing Git commit pins this source and its individual declaration records.
This is local elementary analysis of the already defined arithmetic source, not a newly claimed paper theorem. Novelty UNASSESSED.

Write J=integral norm(f), E=integral norm(f)^2, D(r)=integral norm(f(t+r)-f(t))^2,
and kappa_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)). These are exactly the repository's
`energy`, `parityKernel`, and `gammaCorrectionDensity a f r = kappa_a(r)*D(r)`.
No new source form, zero divisor or RH/GRH predicate is defined.

For continuous, globally L-Lipschitz complex f in L1 and L2, with L>=0,

    D(r) <= 2*L*abs(r)*J,     D(r) <= 4*E.
    0 < r <= 1 ==> 0 <= kappa_a(r)*D(r) <= 3*L*J.
    1 <= r ==> kappa_a(r)*D(r) <= 4*E*exp(-r/2)/(1-exp(-2)).
    1 <= R ==> integral_(R,infinity) kappa_a(r)*D(r) dr
                   <= 8*E*exp(-R/2)/(1-exp(-2)).

Every natural a is retained, hence in particular both genuine gamma parities 0 and 1.
The outer density is proved measurable. The zero endpoint and whole infinite tail
are handled separately and combined to give integrability on (0,infinity).
Compact C1 functions supply all inputs: their derivative is continuous and compactly
supported, hence bounded; the mean value theorem supplies a global Lipschitz bound.

## Complete primary analytical argument

1. For each t and r, let d=norm(f(t+r)-f(t)). The Lipschitz estimate gives d<=L*abs(r),
and the triangle inequality gives d<=norm(f(t+r))+norm(f(t)). Multiplying the two
bounds, integrating, and using translation invariance gives D(r)<=2*L*abs(r)*J.
All squared-difference integrals are integrable by the existing L2 theorem.
2. Independently, d^2<=2*(norm(f(t+r))^2+norm(f(t))^2). Translation invariance
gives D(r)<=4*E, without support or differentiability assumptions.
3. For r>0 the kernel denominator is strictly positive. Set e=exp(-2r).
The elementary inequality 1+2r<=exp(2r) gives (1+2r)e<=1. On 0<r<=1,
(2-2r)(1-e)>=0. Adding these two inequalities yields 2r<=3(1-e).
The numerator exp(-(a+1/2)r)<=1 for a natural, so r*kappa_a(r)<=3/2.
Combine with step 1 to obtain the bounded near-zero density.
4. For r>=1 the denominator is at least 1-exp(-2)>0 and the numerator is at
most exp(-r/2). Combine with step 2. The exponential majorant is integrable and
its tail integral is exactly 2*exp(-R/2), giving the displayed source-energy budget.
5. The function (r,t) -> norm(f(t+r)-f(t))^2 is continuous; the measurable-parameter
integral theorem makes D measurable. The totalized reciprocal in the kernel is
measurable globally, but all analytic inequalities and integrability use r>0.
Domination on (0,1] and (1,infinity), then their union, proves the full domain.
6. Compact C1 regularity gives compact support of the derivative and a finite
uniform derivative bound. The real mean value estimate for complex-valued f
then supplies step 1. Continuous compact support also supplies L1 and L2.
7. Apply the resulting domain theorem to the corrected canonical admissible
predicate. Reuse the unchanged cofinal conductor theorem with its actual
`primitiveArithmeticValue`: L2 and harch are now derived, but EVERY stage's
small-conductor lower bound is still a hypothesis. This does not prove positivity.
8. A standard real smooth bump of radii 1 and 2 centered at 0, cast to complex,
is compactly supported, C-infinity and equal to 1 at 0. This witnesses nonzero
membership in the corrected domain, with all gamma-domain properties. It is
not an interpolating or negative arithmetic test.

## Statement correction and source comparison

See [MIGRATION-v2.md](MIGRATION-v2.md). At the pinned Mathlib version `ContDiff`
has order type `WithTop ℕ∞`: literal top is analytic order, not smooth order.
The earlier thread's use of `ContDiff R top` in its advertised compact-smooth
domain is a known statement-fidelity failure. The three affected source sites
are explicitly migrated to scoped `infty`; prior full-smooth-domain descriptions
are superseded, not silently promoted to verified results.

Canonical source reused at the inspected main:
- `WeilConductorFrontier.lean`, blob `ac9bf37f07ef22d7ca75b918baeea3161df028b7`:
  `gammaCorrectionDensity`, `integrable_shift_energy`, `primitiveArithmeticValue`,
  `primitiveArithmeticValue_nonneg_of_cofinal_small_conductor_bounds`.
- `WeilGammaData.lean`, blob `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`:
  `OddRootProjection.parityKernel` and actual parity/conductor gamma data.
- `WeilSourcePrimeCorrelation.lean`, blob `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`:
  `SourcePrimeCorrelation.energy` with Lebesgue measure.
No prime coefficient, strict support cutoff, conductor or gamma constant is changed.
The principal zeta poles remain separate; the gamma-domain theorem includes a=0
but does not silently extend a nonprincipal conductor consumer to zeta.
Focused GitHub code search returned no matches with incomplete_results=true;
this does not establish absence of equivalent results or novelty.

Pinned primary library references (upstream authorship and Apache-2.0 retained):
- [ContDiff definitions](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Defs.lean), Sébastien Gouëzel: order notation and analytic/smooth distinction.
- [ContDiff derivative](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Deriv.lean), Sébastien Gouëzel and Floris van Doorn: `ContDiff.continuous_deriv`.
- [Derivative support](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/Deriv/Support.lean), Floris van Doorn: `HasCompactSupport.deriv`.
- [Mean value estimate](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/MeanValue.lean): `Convex.norm_image_sub_le_of_norm_deriv_le`.
- [Product integration](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Prod.lean), Floris van Doorn: `StronglyMeasurable.integral_prod_right'`.
- [Improper integrals](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean), David Loeffler: `integrableOn_exp_mul_Ioi`, `integral_exp_mul_Ioi`.
- [Bumps](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/BumpFunction/Basic.lean) and [inner-product instance](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/BumpFunction/InnerProduct.lean), Sébastien Gouëzel and Yury Kudryashov: actual C-infinity nonzero compact bump.

## Hostile checks and remaining obligations

Merely bounding D by 4E near zero is insufficient: the resulting 1/r majorant
is not integrable. The separate L1-Lipschitz estimate is essential. No uniform
constant independent of f is claimed. The zero test is allowed; a nonzero test
is separately supplied. No positivity of the complete signed Weil form follows
from nonnegativity of the gamma correction. No zero-side tail is bounded here.
The alternative H1 estimate D(r)<=r^2*integral norm(f')^2 could give a stronger
near-zero bound, but it is not used or claimed as a second verified proof.

Open arithmetic obligation: prove zero-sum convergence and the full explicit
formula for the original zeta/primitive-Dirichlet form on the corrected smooth
compact test class, with actual complex zeros, multiplicities, both applicable
poles, prime powers, phases, conductor, parity, and dual-character conventions.
Interpolation, joint varying-test tail control and global positivity remain open.

## Verification boundary and reproduction

Source candidates only. Elaboration/build, fresh kernel replay, transitive axiom
audit, repository-wide CI, independent analytic review and arithmetic certificate
execution are NOT_RUN. The earlier domain defect is recorded as a KNOWN semantic
failure, not erased into NOT_RUN. An original-source hash reconstruction initially
missed the final newline; that mismatch was repaired and the original blob identity
matched before the minimal source edits. This was a byte-integrity repair, not a
Lean error/pass receipt.

Proposed commands, NOT executed:

```sh
lake build GRWTSK.MeasureAndIntegration.FourierCollisionBound
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationFourier
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilArchimedeanDomain
```

After elaboration, print the transitive axioms of each public declaration in
this directory and the three revised theorem consumers; independently perform
fresh kernel replay. No execution status is implied by those instructions.
Noe skill access failed (404) at `8a55e981affa25929c0c65c0604a4617315d45ad`;
local Lean/Lake and verified canonical skills were absent. Dependent automation
stopped. Ordinary source publication is separately authorized. No scheduler,
workflow, remote runner, root-import promotion or dependency change is involved.
