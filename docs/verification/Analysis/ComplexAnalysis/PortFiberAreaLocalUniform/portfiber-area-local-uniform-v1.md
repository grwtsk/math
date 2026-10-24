# Area-Cauchy local limits: static verification specification

## Status and exact scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a static mathematical acceptance specification, not a run receipt, executable
manifest, worker instruction, schedule or authority record. Bind eventual checking to
an exact commit and tree externally. Owner: #230; consumers: #40, #177 and #204.
Draft integration: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberAreaLocalUniform`.
Mathematical source: `GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform`.
The root imports the previous area interface. No previous root imports this leaf.
No earlier file, measure, metric, dependency, topology, arithmetic supplier or residual
plan is modified. No new instance declaration or section-completeness instance is added.

## Mandatory predecessor

Mathematical parent: `d8a84e0e604c4eee6ff6946b40ae9f436d71220a`.
Retain `docs/verification/Interfaces/PortFiberMultiplierArea/portfiber-multiplier-area-v1.md`, blob
`1669daebdd7fa82027c12f763dd2ddc301c34c95`, and every recursive prerequisite.
Its mathematical source remains blob `4f6b98dd105a5d8265111243d4d66188ef5fbd72`;
its interface remains blob `8d0839cd8e7c8b9fcef589bba4185ae27eb6cec6`.
Retain the area-mean supplier, all earlier measure-transfer and norming criteria,
all statement-preserving completion repairs, and the `identityTwistedFamily` erratum.
Historical no-completeness statements retain their original isolated-leaf scopes.

Retain 81 planned predecessor local-module requirements and 234 controls. Two new
local modules and eight additional controls give 83 planned local-module requirements
and 242 control specifications, NOT discovered or executed coverage. Reconcile actual
transitive imports and optional historical requirements at the chosen head. Every
required module needs its own exact-identity terminal outcome; root-only success does
not replace coverage. Missing, failed, unavailable and source-only outcomes do not pass.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`. Additional direct imports are the pinned
`Mathlib.Analysis.Complex.LocallyUniformLimit` and `Mathlib.Topology.MetricSpace.Cauchy`.
The exact compact-thickening and uniform-Cauchy APIs must be checked at that pin.

## Historical carrier and area-specific realization

`AreaQuotient` abbreviates the existing `SectionQuotient` for the identity cocycle,
unit metric and unnormalized `areaMeasure` on the exact domain subtype. Its norm,
distance, uniformity, topology and algebraic operations are the historical ones.
The inner-product instance scope is explicitly selected; audit its resolved projections.
No new normed carrier or topology is substituted.

`realization` is a `Quotient.lift` into the OLD holomorphic-section ring. The preceding
`aeEqual_area_iff` proves compatibility, and `realization_classOf` identifies the result
with `identitySymbol` of the actual finite-energy input. `realization_injective` reflects
equality through the old setoid. This is uniquely determined holomorphic realization on
THIS ORIGINAL area quotient, not representative selection on arbitrary measurable
classes, arbitrary measures, or the abstract section completion.

`ambient` uses the historical `ambientRepresentative` with its unchanged zero convention
outside the domain. Values and differentiability are claimed only on the exact domain.
`functional_eq_realization` binds every old contained-disk evaluation to this lift.

## Uniform compact control

`window_dist_bound` applies the OLD bounded evaluation to the actual quotient difference.
It retains both representatives independently and uses the old additive operations.
There is no difference of scalar energies and no sample-based norm surrogate.

`compact_control` first chooses a radius delta > 0 with the entire closed thickening
of compact K inside the open domain. That radius is chosen BEFORE q, r, z, any sequence,
or any Cauchy index. For every point z of K, an actual window of that same radius gives

    dist(ambient(q)(z), ambient(r)(z))
      <= (sqrt(pi * delta^2))^(-1) * dist(q,r).

Compact containment and domain openness are mandatory. No lower bound for radii over
the whole domain, no boundary convergence, and no uniform bound on all point evaluations
is asserted. Empty compact sets do not require a selected point or detector.

## Constructed holomorphic local limit

`uniformCauchy_on_compact` converts historical area-norm Cauchy control into uniformly
Cauchy ambient value functions on each compact K. Its epsilon threshold is divided by
the positive compact-control coefficient; the radius does not depend on either index.
`pointwise_converges` uses scalar completeness on singleton compacts, not completeness
of the section quotient. `pointwiseLimit` chooses those unique scalar limits only.

`uniformLimit_on_compact` combines the uniform Cauchy result with those SAME pointwise
limits. `locallyUniform_limit` uses the open-domain compact-set criterion. The pinned
Weierstrass theorem then DERIVES `pointwiseLimit_holomorphic`; global holomorphy of the
limit is not an additional assumed premise.

`holomorphicLimit` bundles that exact function and derived analytic witness.
`existsUnique_holomorphic_limit` proves uniqueness from pointwise Hausdorff uniqueness
along atTop, a nontrivial filter. No derivative, energy or operator limit is substituted
for the actual function limit. `derivative_limit` applies the pinned derivative theorem
to the SAME ambient functions and limit, with LOCALLY uniform convergence only.

The constant fixture supplies its Cauchy proof and recovers the exact historical
realization. It must not be replaced by an unrelated function having similar metadata.

## Eight additional hostile controls

ALU-01 EXACT_REALIZATION: replay lawful lift, representative computation and injectivity;
reject use on arbitrary measures or arbitrary measurable a.e. quotients.
ALU-02 EVALUATION_BINDING: check the old functional and actual quotient difference;
reject point-evaluation labels, different functions, or scalar-energy differences.
ALU-03 COMPACT_SCOPE: retain compact containment, strict radius positivity and the
section-independent radius quantifier; reject arbitrary boundary or whole-domain claims.
ALU-04 CAUCHY_TOPOLOGY: check area-norm input and uniform-Cauchy output on K; reject
pointwise Cauchy input as a substitute, or one index-dependent radius per pair.
ALU-05 LIMIT_CONSTRUCTION: check scalar existence, SAME pointwise-to-uniform limit,
Weierstrass hypotheses and nontrivial-filter uniqueness; reject assumed limit holomorphy.
ALU-06 DERIVATIVE_SCOPE: retain the old ambient representatives and local convergence;
reject global supremum bounds, global energy convergence, or bounded differentiation.
ALU-07 DEGENERACY_RECOVERY: replay empty compacts and constructed constant-sequence
recovery; reject an invented point, nonempty-domain premise or zero-only replacement.
ALU-08 NO_COMPLETENESS_PROMOTION: reject finite-energy membership or norm convergence
of the constructed limit without a further proof; reject completed representative
selection, section-space completeness, L2 surjectivity or changed terminal dispositions.

## Acceptance and remaining work

Eight disjoint portfolio claims and four preservation declarations extend the previous
interface without rewriting its indices, local dispositions, residual plans or target.
A stored `.proved` term is source, not an acceptance receipt.
Require exact-head Lean elaboration, public-signature and instance-coherence checks,
per-module outcomes, transitive axiom/runtime audits, hostile-control execution and
immutable external replay. Permit only `propext`, `Classical.choice`, `Quot.sound`;
reject `sorryAx`, unsafe mathematical declarations and unreported native dependencies.
Text checks and finite numerical tests do not establish these analytic theorems.

Next obligations: a global lower-semicontinuity/Fatou argument for finite energy of the
constructed limit and convergence of the original area norm; then actual quotient
completeness and binding to the historical abstract completion. Finite total area was
NOT assumed in this leaf. General compatible bundle metrics, nontrivial-bundle detectors,
adjoint-invariant and differential domains, heat transport, Picard/theta/K/KK identities,
arithmetic comparisons, Weil/residual suppliers and RH/ABC conclusions remain separate.
No F06 release, worker qualification, build execution or merge authority is conferred.
