# Bounded holomorphic symbol completeness: static verification specification

## Status and scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a static mathematical specification, not an executable manifest, operational
receipt, controller, worker instruction or runtime authorization. Bind the selected
commit and tree externally. Owner: #230; consumers: #177 and #204.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierComplete`.
Mathematical source: `GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete`.
The interface imports the preceding norm interface. No earlier root imports this leaf.
The increment adds only these two modules and this document. No predecessor source,
root, specification, dependency pin, residual plan, or arithmetic supplier changes.

## Mandatory predecessor and upstream identities

Exact immediate parent: `1cb596d70b912ea54605b170c92cc1dd0df323c6`.
Retain `docs/verification/Interfaces/PortFiberMultiplierNorm/portfiber-multiplier-norm-v1.md`, blob
`8f6ea4d103426b41145fcc87f590aa9dd087999b`, and all its recursive prerequisites.
Its source and interface retain blobs `8017b7c3bff8fc295716a810cc6321a5cb6c2d43`
and `94d46d98289b96211f1fd9c7616bbb9228f280c8` respectively.

Retain 66 preceding planned module requirements and 178 controls. Two new modules and
8 new specifications yield 68 planned local-module requirements / 186 controls. These
are not discovered or executed coverage. Reconcile the complete transitive local import
closure, historical optional roots, exact source identities, and individual outcomes.
A root-only success does not supply missing outcomes for required modules.

Lean remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. Other dependencies remain manifest-bound.
New direct upstream imports are `Mathlib.Analysis.Complex.LocallyUniformLimit`,
`Mathlib.Topology.Sequences`, and `Mathlib.Topology.UniformSpace.UniformEmbedding`.
The pinned Weierstrass source is blob `afc9908533c3076986a43c9d963c53899f0669c3`.
It supplies differentiability and locally uniform derivative convergence on open sets.
The already imported bounded-continuous-function space supplies its completeness.

## Same carrier, topology, and exact function image

`ofBoundedFunction` constructs an element of the OLD `BoundedSymbol` from an actual
bounded continuous function and its holomorphic-extension proof. Its bound is the
function's existing norm, not an additional coordinate of symbol identity.
The value and embedding equations retain precisely the input function.
`boundedFunction_range_iff` identifies membership in the range of the OLD
`boundedFunctionHom` with holomorphic extendability of that same function.

The scope from `HolomorphicMultiplierNorm` is explicitly opened. It selects the same
supremum norm, norm-induced uniformity and topology. Audit inherited norm, distance,
metric, uniformity, topology, bornology, module and algebra projections at the exact head.
No equality with the historical pointwise symbol topology is asserted. No new instance
is exported, and no replacement symbol algebra or quotient is introduced.

## Derived uniform-limit holomorphy and local derivatives

`ambient_uniformLimit` translates convergence in the bounded-function supremum norm
into uniform convergence on X of the historical `ambientRepresentative` functions.
Its proof uses the pinned metric characterization and the exact on-domain value law.
This translation alone does not require a nontrivial filter or openness.

`holomorphic_of_tendsto` then requires BOTH `IsOpen X.carrier` and a nontrivial filter.
Eventual holomorphy is converted into differentiability of the historical ambient
representatives ON X. Pinned Weierstrass locality derives differentiability of the limit;
the old on-domain equation supplies its extension witness. Global holomorphy is not an
input field. Outside-domain behavior of the zero extension is not asserted differentiable.

`ambient_deriv_tendsto` and `symbol_deriv_tendsto` retain local uniform convergence on
X of the complex derivatives of these same representatives. They do not claim that
all derivatives are bounded on X, belong to `BoundedSymbol X`, converge in the global
supremum norm, or supply a bounded differentiation operator on section spaces.

## Closed image and completeness

`boundedFunction_range_isClosed` uses the metric target's sequential closedness
criterion and the derived Weierstrass theorem. The closed set is exactly the image
of the old function embedding in `X.carrier -> bounded-continuous complex functions`.
It is NOT the image of the section-operator representation.

`symbol_complete` pulls completeness back from this closed image through the old
`functionLinearIsometry`. The ambient bounded-continuous-function space is complete.
The result is a theorem with an explicit open-domain hypothesis, not an unconditional
CompleteSpace instance. It concerns the existing supremum-norm symbol algebra only.
The old finite-energy holomorphic section quotient is not declared complete.

`existsUnique_symbol_limit` reconstructs the symbol for a convergent function-image
net. Both the exact embedding equation and convergence of the original symbol net
are retained. Injectivity of the old embedding supplies uniqueness. Its filter remains
nontrivial. `existsUnique_cauchyLimit` installs the derived completeness theorem only
locally to obtain a unique norm limit for every Cauchy sequence of old symbols.

## Existing cover and representation binding

`coveredDomain_isOpen` derives openness of X from actual member openness, coverage and
member inclusions. No second independently supplied open-domain certificate is required
by `cauchy_symbols_and_operators` when the historical open-cover evidence is available.
That theorem produces one symbol limit and the operator-norm limit under the OLD
`completedRepresentation`. Uniqueness refers to the symbol limit, not faithfulness of
that representation. A kernel remains possible.

The same cocycle, metric, measure, cover and representation appear before and after
the limit. No new map or completed symbol replaces them. No finite-mass, full-support,
nonzero detector, target theorem, residual update, or arithmetic identification is inferred.
Existing gauge conjugacy and complex-inner-product conventions remain unchanged.

## Additional controls (retain every predecessor control)

MPC-01 EXACT_IMAGE: verify both reconstruction equations and the image-membership iff;
reject an unrelated limit function, new carrier, bound-coordinate identity or a.e. symbol quotient.
MPC-02 OPEN_WEIERSTRASS: verify the open-domain and eventual-holomorphy hypotheses and
actual ambient-representative agreement; reject assuming the global holomorphic conclusion.
MPC-03 LOCAL_DERIVATIVE: verify local uniform complex-derivative convergence on the exact
open domain; reject a global derivative norm, bounded derivative or differentiation operator.
MPC-04 CLOSED_COMPLETENESS: verify the exact function-image closure and isometric pullback,
all inherited topology projections and open-domain scope; reject closed operator image or
an unconditional completeness instance on symbols, sections, or another topology.
MPC-05 UNIQUE_LIMIT: verify image equality and symbol convergence together, and unique
Cauchy limits; reject replacing uniform convergence by pointwise convergence or samples.
MPC-06 OPERATOR_LIMIT: verify openness is derived from the actual cover and the SAME
completed representation converges in OPERATOR norm; reject measure or representation drift.
MPC-07 EMPTY_AND_KERNEL: replay open empty-domain collapse and complete disk symbols with
a nonzero Dirac-center kernel; reject automatic nontriviality, faithfulness or an isometric image.
MPC-08 NONTRIVIAL_FILTER: replay the distinct bottom-filter limits on the disk; reject
removing NeBot from analytic limit/uniqueness claims or reading vacuous convergence as evidence.

## Acceptance and remaining work

Require exact-head Lean 4.33 elaboration and repair, complete public-signature/scope
checks, every required per-module outcome, transitive axiom/runtime audits, actual hostile
Lean controls, and immutable external replay. Permit only `propext`, `Classical.choice`,
and `Quot.sound`. Reject `sorryAx`, unsafe mathematical declarations, and unreported
native dependencies. Not-run, missing, unavailable and source-only states do not pass.
Text checks do not verify Lean. Stored `.proved` dispositions are not acceptance receipts.

All historical packets and errata remain in force at their original scopes, including
`identityTwistedFamily (D := D)`. Their previous no-symbol-completeness statements remain
accurate about their own isolated leaves. This new explicit open-domain theorem does
not rewrite those documents or strengthen their hypotheses retrospectively.

Next separate questions include sharper represented norms, closed operator image under
additional lower bounds, source-specific measures/detectors, L2 and geometric realization,
section-space closedness, adjoint-invariant domains, unbounded/differential and heat
transport. No star or C-star closure, Picard/theta or K/KK identification, Weil comparison,
residual decay, RH/ABC conclusion, worker qualification, F06 release or runtime authority
is supplied by this increment.
