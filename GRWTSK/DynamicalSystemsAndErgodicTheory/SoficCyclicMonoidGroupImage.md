# Group-valued images of a minimum lasso

Local mathematical attribution: grwtsk contributors.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837), with the existing lasso work in [math#1832](https://github.com/grwtsk/math/issues/1832).

## Exact statement and argument

The owner is [SoficCyclicMonoidGroupImage.lean](SoficCyclicMonoidGroupImage.lean), namespace
`GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidGroupImage`.
For natural `mu`, positive `p`, let `M` be the existing `CyclicLassoMonoid mu p hp` and let `e` be the ambient image of `kernelOneFormula mu p hp`.

For every group `G` and monoid homomorphism `F : M ->* G`, idempotence gives
`F(e) * F(e) = F(e)`. Cancellation in `G` gives `F(e)=1`, hence
`F(e*m)=F(m)` for every original state `m`. The existing fiber theorem identifies
`e*m=e*n` exactly with congruence of the original normal exponents modulo `p`.
Every group image therefore identifies these fibers, although it can identify
additional residues as well. No claim that every image has exactly `p` elements
is made.

If `mu>0`, the existing theorem `kernelOneFormula_toMonoid_eq_one_iff`
shows `e != 1`; both elements map to `1`, so `F` is not injective. Conversely,
when `mu=0`, placing each ambient element in the existing kernel produces an
injective monoid homomorphism into that kernel group. Its identity and product
are justified using `kernelOneFormula_eq_one` and `kernel_mul_toMonoid`.

## Declaration map and consumers

| Local declaration | Scope and consumer |
| --- | --- |
| `map_kernelOne_eq_one` | Every group image sends the internal cycle identity to the target identity. |
| `map_cycleProjection` | Group-valued observations factor as functions through the original cycle projection. |
| `map_eq_of_exp_modEq` | Original normal-exponent residues control every such observation. |
| `not_injective_of_nonempty_stem` | Reject a claimed faithful unitary-group realization of a nonempty stem. |
| `restrictToKernel` and `factor_through_kernel` | Construct the actual homomorphism on the existing kernel and its factorization identity. |
| `pureCycleEmbedding` and `pureCycleEmbedding_injective` | Supply the faithful pure-cycle control. |

The mathematical consumer is the cyclic-symmetry part of the proposed conformal
construction in [the cofinal transfer disposition](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCofinalFiniteStateBoundary.md).
A unitary group is a group, but a general bounded operator is not a unitary.
The obstruction does NOT exclude a faithful nonunitary regular representation,
a dilation with retained memory, or use of nonunitary fields in a unitary VOA.
It excludes only a faithful monoid homomorphism into a group when `mu>0`.

The existing `kernelOne_mul_quotient_injective` and fixed-width round-trip
results retain the quotient of the normal exponent as a residual. That is the
available lossless source return; the group image alone generally lacks it.

## Source provenance and evidence

Inspected dependency source: `grwtsk/math@64414a25b0d624009ad0f300bcb5fdfee096e752`.
`SoficCyclicMonoidIdempotentReturn.lean` blob:
`4f1d5ef89f49f93f214b2c338cfe075ecd083483`.
The kernel source at that revision has blob
`5b44e1a2dc14093e024de7ca8d4831661440212f`.

This is an elementary local consequence of the existing idempotent and fiber
theorems, not a formalization of OpenAI result 280. That paper motivates a
consumer; no paper theorem is an axiom or hypothesis in this source. Its exact
edition, claims, and missing source-return steps are recorded in the linked
cofinal disposition. No theorem-level novelty is claimed; broader prior-art
novelty is UNASSESSED.

The independent mathematical check is cancellation of an idempotent image,
with `mu=1,p=2` as the smallest nontrivial transient control (`e=s^2 != 1`
but every group homomorphism sends both to `1`). This is a direct argument,
not an independently authored proof review.

New-file status: SOURCE_PROOF_CANDIDATE. Lean 4.34.1 / mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` are unchanged.
Elaboration, expected types, fresh kernel replay, transitive axiom audit, and
independent review of this increment: NOT_RUN. Historical source-bound checks
in #1832 retain their own scope and are not rerun or revoked by this record.
