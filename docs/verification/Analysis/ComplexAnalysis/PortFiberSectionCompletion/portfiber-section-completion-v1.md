# Section completion: source-bound verification specification

## Status and exact scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical acceptance specification, not an executable manifest,
controller, receipt, or execution authorization. Owner: grwtsk/math#230; consumers: #177
and #204. Pin the selected source commit and tree externally before checking.
The isolated root is `GRWTSK.Interfaces.PortFiberSectionCompletion`.

The increment adds exactly two local modules and this specification:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
GRWTSK.Interfaces.PortFiberSectionCompletion
```

The interface imports the preceding inner-product interface. No earlier root imports
this leaf. No predecessor source, historical manifest/specification, dependency pin,
README, residual plan, arithmetic supplier, or `GRWTSK.lean` is changed.

## Mandatory predecessor and upstream identities

Immediate prerequisite: `docs/verification/Interfaces/PortFiberSectionInnerProduct/portfiber-section-inner-product-v1.md` at
`598d0b2706815a649538544d093c1ac94b0f6054`, Git blob
`f532244350f22b8292411a1cda4346495bfe90bd`. Its mathematical source is blob
`af29b543f7985cd7948ee77c96a4b814819f7c3f`; its interface is blob
`00a1bcfe7c94a7c286da4899eb8b5d4207157634`.

The integration parent is `cb8daf2ff5b91d53e3f3ccac8e54247843cd15c9`, the concurrent
merge of that mathematical predecessor with main at
`eb3124bd05f0f74aaa709ca36a855539f722fb92`. All three immediate-predecessor blobs above
were re-read at the integration parent and are identical. The new tree must retain
that parent's entire tree; the older candidate tree must not replace merged content.
This structural reconciliation does not certify transitive imports or Lean checking.

Retain all 56 predecessor local modules and 138 controls, all exact signatures, scoped
instance/coherence obligations, source-binding errata, trust policies and application
nonclaims. Retain the linear, pairing, quotient, energy and earlier specifications at
their original scopes. In particular, the predecessor's no-completeness claim remains
true about the old quotient and its own leaf. The constructor-binding repair
`identityTwistedFamily (D := D)` remains mandatory. No historical receipt is inferred.

Two local modules and eight additional controls bring required coverage to **58 local
modules / 146 controls**, not executed coverage. Reconcile the full transitive local
import closure and historical optional targets, with exact per-module source identities.
Root-only success is not complete coverage.

The toolchain remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. The unchanged dependency manifest binds
all other upstream packages. New direct upstream imports and inspected blob identities:

```text
Mathlib.Analysis.InnerProductSpace.Completion  fce7e40d7e54822fe581177934201071d29e53b4
Mathlib.Analysis.InnerProductSpace.LinearMap   16e5a58b1a8fe4f5ce74d81b24ec9883022a91ef
Mathlib.Analysis.Normed.Operator.Extend        993ea9b00be8adecf9d22d8fe98b666fe103328e
```

The completion embedding API is in upstream `Analysis/Normed/Module/Completion.lean`,
blob `2cd3de425642b8feabaf14d589eeb0e7b3f70404`; density, uniform induction and continuous
extensionality are in `Topology/UniformSpace/Completion.lean`, blob
`71b55c667e8fd1f071c428a8b1ad89026dc0d8b8`. Resolve all upstream transitive trust effects;
these source identities do not substitute for an axiom/runtime audit.

## Exact completion and original-class embedding

`SectionCompletion` abbreviates `UniformSpace.Completion (SectionQuotient M mu hOpen)`
using the preceding scoped normed structure and its induced uniformity. The generic
upstream instances provide its normed complex inner-product structure and completeness.
`sectionCompletion_complete` names completeness of this new carrier only. No complete
space instance is installed on the original quotient. This is a norm/uniform completion,
not an ideal-adic completion, inverse limit of jets, or coefficient-ring completion.

`toCompletion` is the actual upstream `toCompl` coercion bundled as `toComplₗᵢ`.
`toCompletion_apply` binds it definitionally to the canonical completion coercion.
Separate declarations retain its injectivity, density, isometry and uniform-inducing
property. Injectivity uses the old quotient's separated norm, not pointwise separation
of section representatives. Density is not asserted surjectivity.

`toCompletion_inner` retains the full complex inner product. The representative theorem
`toCompletion_classOf_inner` reaches the original finite-section integral. The new
`completionEnergy` is explicitly extended-valued squared norm on abstract limit points.
It is finite and agrees with historical quotient energy on embedded classes through
`completionEnergy_toCompletion`, which reuses the predecessor's finiteness-dependent
energy recovery. It is not a claim that every completed point has an integrable
holomorphic representative. `toCompletion_dist` retains energy of the actual difference.

## Continuous determination and bounded linear extension

`completion_ext` proves equality of continuous maps into any Hausdorff target from their
agreement on every embedded old class. Both continuity premises and the Hausdorff
codomain are retained; agreement only on energies or on a finite sample is insufficient.

`extendLinear` extends an actual continuous complex-linear map into a complete normed
complex vector space. It uses the exact embedding's bundled continuous linear map.
`extendLinear_toCompletion` supplies actual density and uniform-inducing proofs to the
upstream extension theorem, excluding its fallback-zero branch. `extendLinear_unique`
and `existsUnique_extension` establish uniqueness through the continuous determination
lemma. Codomain completeness is an explicit hypothesis; original-domain completeness
is neither assumed nor installed. The general codomain need not have an inner product.

`extendLinear_embedding` proves that extending the canonical embedding gives the
identity on the completion. Together with the nonzero complex-pairing fixtures, this
rejects an always-zero extension. The identity may equal zero in the zero-space case;
no universal nontriviality assumption is introduced. No unbounded operator, differential
domain, or arbitrary discontinuous map is admitted by this extension interface.

## Completed gauge equivalence

`gauge_toCompletion_norm` derives the exact norm match from the historical gauge
isometry and both actual embeddings. `gaugeCompletionEquiv` supplies this proof and
both density proofs to upstream `LinearEquiv.extendOfIsometry`, using precisely the
old `gaugeLinearEquiv`. No unrelated equivalence, independent metric, or new measure
appears. The target metric is exactly `transportMetric G M`, with the same measure.

Forward and inverse embedding equations bind the completed operator to the old
`gaugeEquiv` and its original inverse. The new carrier's linear isometric equivalence
has both inverse laws; the interface explicitly retains them at arbitrary completed
points, not only on embedded sections. Separate declarations preserve metric isometry,
full complex inner product and the squared-norm completion energy on all completed
points. `gaugeCompletion_unique` proves that every continuous map with the same
old-class commutation equation equals this completed map. Merely preserving norms,
energies or a finite set of vectors is not its uniqueness premise.

## Fixtures and portfolio isolation

`zeroMeasure_completion_eq_zero` uses closed-property completion induction to carry
the original zero-measure collapse to every completed point. It does not assume a
nontrivial quotient or choose a representative of a new point.

`Fixtures.diracVector` embeds actual constant Dirac-section classes. The completed
1 and -1 vectors have equal norms but remain distinct by the embedding's injectivity.
The completed 1/i and reversed i/1 pairings are i and -i. These fixtures retain complex
argument order and reject norm-value quotienting or an always-zero completion map.
The inherited off-support counterexample remains an obstruction to pointwise recovery.

The isolated portfolio adds eight disjoint small-index claims. Underlying mathematical
declarations are universe-polymorphic. Four preservation declarations retain all
previous local dispositions and the terminal target; a `.proved` disposition remains
a source term, not a checking receipt or a promotion of residual/arithmetic claims.

## Additional hostile controls

| Identifier | Required exact-source check or rejection |
| --- | --- |
| `completion-reject-carrier-or-topology-substitution` | Check the exact completion abbreviation, all predecessor scoped-instance projections, and the canonical coercion equation; reject alternate setoids, arbitrary uniformities, original-quotient completeness, or adic/jet substitution. |
| `completion-reject-density-as-surjectivity` | Check the actual dense/injective/isometry/uniform-inducing declarations; reject all-point representative selection, pointwise recovery, and any unproved surjectivity or ambient L2 identification. |
| `completion-reject-energy-or-pairing-drift` | Check full complex inner and representative-integral binding, finite squared-norm energy, old finite-energy recovery and energy-of-difference distance; reject scalar-energy quotienting and default conversion of infinity. |
| `completion-reject-default-zero-extension` | Check the real density/uniform-inducing premises in `extendLinear_toCompletion`, the embedding-to-identity theorem and nonzero Dirac pairings; reject a fallback-zero or arbitrary extension. |
| `completion-reject-uniqueness-premise-loss` | Check continuous Hausdorff extensionality, explicit complete bounded-linear codomain, and both uniqueness proofs; reject unbounded/discontinuous maps, finite-sample agreement or norm-only agreement. |
| `completion-reject-gauge-source-target-drift` | Check the old linear equivalence, constructed norm match, both dense embeddings, same measure, transported metric, and forward/original-inverse commutation equations. |
| `completion-reject-one-sided-or-real-only-gauge` | Check both inverse laws on all completed points, metric/complex-inner/energy preservation, gauge uniqueness, and i/-i order fixtures; reject one-sided inverses or imaginary-part loss. |
| `completion-reject-nontriviality-or-target-promotion` | Check zero-measure completion collapse, distinct equal-norm completed vectors, eight claims and four preservation declarations; retain every predecessor and reject inferred closed holomorphic realization, adjoints, heat, arithmetic or terminal-target conclusions. |

## Acceptance and remaining mathematics

Require exact-head Lean elaboration/repair, all 58 module outcomes, all 146 controls,
complete public signatures and resolved instance/coercion projections, and transitive
axiom/runtime audits. Allowed axioms remain only `propext`, `Classical.choice` and
`Quot.sound`. Reject `sorryAx`, unsafe mathematical declarations and unreported native
dependencies. Missing, failed, unavailable or root-only results cannot become passes.
A source repair requires fresh exact-head evidence; any earlier affected evidence is
invalidated. Reconciliation with newer main remains separate from source correctness.

Under a separately authorized execution profile, the isolated target descriptions are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionCompletion
lake env lean GRWTSK/Interfaces/PortFiberSectionCompletion.lean
```

These descriptions are not execution permission or evidence of execution. Effectful
checking and immutable receipts remain outside this pure source repository. Static
source inspection and finite algebraic diagnostics do not establish Lean elaboration,
completion/density/uniqueness, resolved signatures or transitive trust.

Next mathematics: a source-bound measurable L2 embedding and an explicit closedness or
realization theorem under stated measure/regularity hypotheses; bounded-operator
intertwining and adjoints on the new completions. This leaf supplies no surjectivity of
the old quotient embedding, canonical pointwise representative, holomorphic-subspace
closedness, differential domain, connection, Laplacian, heat transport, elliptic/arithmetic
measure, Picard/theta or K/KK identification, Weil comparison, residual decay, or RH/ABC
proof/refutation. No runtime gate or worker authority is changed.
