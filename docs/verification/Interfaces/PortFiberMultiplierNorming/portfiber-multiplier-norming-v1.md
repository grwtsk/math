# Norming point-evaluation ports: static verification specification

## Status and scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a static mathematical specification, not an execution receipt, runner, schedule,
worker qualification, or authorization. Bind eventual verification to an exact commit
and tree externally. Owner: #230; consumers: #177 and #204; draft integration: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierNorming`.
Mathematical module: `GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming`.
The root imports the historical completion interface. No earlier root imports this leaf.
The increment adds these two modules and this specification, and repairs three proof
sites in `HolomorphicMultiplierComplete.lean` without altering any public statement.

## Parent and repair scope

Mathematical parent: `6ca6b382c883700660829d9d9943c5cb212664a1`.
Retain `docs/verification/Interfaces/PortFiberMultiplierComplete/portfiber-multiplier-complete-v1.md` at historical blob
`ef6edc311f43a07ed0c3b752b6c0e5e3692010e4` and all recursive prerequisites. Its interface
remains blob `991e008037abb9c56c70856b5b88724b8c6f9fe2`.
The original source blob is `324198be729bd54d92811a51701cb633aad96686`.

Two calls to `ambientRepresentative_differentiableOn` are repaired to pass an actual
`HolomorphicSection X`, bundling the SAME bounded-function value and the SAME eventual
holomorphy witness. The previously supplied unbundled function and extra proof argument
did not match that declaration's type. In `existsUnique_symbol_limit`, recovery of source
convergence uses `.mpr` of `Isometry.tendsto_nhds_iff`, not the forward `.mp` implication.
These are source-inspected repairs, not fixes reported by an executed Lean session.
Preserve all previous statements, hypotheses, function values and historical packets.
Replay the repaired predecessor and every affected dependent at the new exact head.

Retain 68 planned predecessor module requirements and 186 controls. The two new modules
and eight new controls require 70 planned local modules / 194 control specifications,
NOT discovered or executed coverage. Reconcile the full transitive local import closure,
all optional historical requirements and per-module source identities. A root-only pass
cannot replace complete module outcomes.

Lean remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. Operator norm and isometry APIs are pinned
upstream dependencies. No new dependency, global instance or replacement topology is added.

## Exact bounded evaluation and derived lower bound

`PointEvaluationPort M mu hOpen x` contains a continuous complex-linear functional on the
OLD `SectionQuotient`, its equality with the actual fiber value at x for EVERY original
finite-energy section, and nonzero functional evidence. It does not choose a representative,
assume an operator-norm lower bound, or carry an eigenfunctional law as an unproved field.
Its exact base point, measure, metric and section quotient remain in the type.

`eigenfunctional` DERIVES e_x composed with rho(f) = f(x) times e_x from the old multiplier
and the representative-value equation. `value_norm_le` applies the bounded composition
estimate and cancels the strictly positive norm of the nonzero functional. The completed
lower bound uses the historical exact completion-norm identity. No common bound for all
point evaluations is required. Zero functionals must not pass as evaluations.

## Dense ports and the represented operator image

The norming theorem requires an actual dense set S in the actual base subtype and a port
at every point of S. Symbol continuity and closure extend the pointwise lower bound from
S to all base points. The old supremum-norm characterization and contractivity yield
EXACT quotient and completed represented norm equality.

`representationLinearIsometry` bundles the OLD completed algebra homomorphism's linear
map. Its application and `toLinearMap` equations retain that map definitionally. It is an
isometric representation, not a new action fitted to the desired norm.

`represented_range_isClosed` uses the preceding open-domain symbol completeness, with
openness derived from the existing actual cover, and the NEW isometry. Unlike the earlier
closed function image, its conclusion is closedness of the represented operator image.
Faithfulness or continuity alone is not substituted for the norming hypothesis. Density
of S alone cannot provide its evaluation ports; full support alone is not such a port.

`existsUnique_symbol_of_operator_limit` starts with convergence in OPERATOR NORM under the
same representation. Closedness supplies membership of the limit in the represented
image; the isometry reflects convergence into SYMBOL SUPREMUM NORM and supplies uniqueness.
The nontrivial-filter premise is retained. This is not pointwise or strong convergence,
nor an inverse theorem for the earlier nonfaithful Dirac-center representation.

## Concrete producer and obstruction

`diracValue` descends the actual fiber value at the support point through the old a.e.
relation. With identity cocycle and unit metric, `diracValue_norm` derives its norm from
the old Dirac energy and finite-energy norm identity. `diracEvaluation` constructs its
linear map and continuity. The old constant-one finite-energy section proves nonzeroness.
Thus `diracPointEvaluationPort` fills all fields without assuming the desired port.

`quotientRepresentation_dirac` identifies the entire operator with multiplication by the
symbol value at the support point. `completedRepresentation_dirac_norm` combines this
identity, the identity-operator upper bound and the constructed evaluation lower bound.
The result is the support value's norm, not the symbol supremum or a selected bound.
The fixed disk coordinate has exact represented norms zero at the center and one half
at the half point, with the SAME cover, cocycle, metric and symbol.

`no_off_support_valueMap` rejects even an arbitrary unbounded function on the Dirac-center
quotient purporting to recover every original representative's half-point value: coordinate
and zero represent the same class but have different values there. The bounded evaluation
port is consequently impossible there. No canonical representative or off-support recovery
is obtained by completion, a dense-set label, a chart or a gauge.

## Additional controls

MPE-01 EXACT_EVALUATION: replay value binding on every old class and the derived eigenfunctional
law; reject an unrelated bounded functional, finite-sample agreement or a changed point.
MPE-02 NONZERO: require nonzero evaluation for norm cancellation; reject an always-zero
functional as sufficient evidence for the lower bound.
MPE-03 DENSE_NORMING: require actual density and every indexed evaluation port; check both
optimal norm equations and exact old linear-map binding, including empty-domain scope.
MPE-04 CLOSED_OPERATOR_IMAGE: distinguish the new operator range from the old function range;
reject closed range inferred from mere continuity, faithfulness or symbol completeness.
MPE-05 REVERSE_LIMIT: check operator-norm input, symbol-norm output, exact image equality,
uniqueness and nontrivial filter; reject strong/pointwise convergence or bottom-filter use.
MPE-06 DIRAC_PRODUCER: derive quotient well-definedness, exact norm, linearity and nonzero
unit witness; accept exact support norm and reject a global supremum formula for Dirac mass.
MPE-07 OFF_SUPPORT: replay coordinate/zero class equality and half-point disagreement;
reject any arbitrary value-recovery function or bounded evaluation port at that point.
MPE-08 REPAIR_AND_SCOPE: check both bundled holomorphy arguments and the reversed isometry
implication, retaining all public statements, prior claims, residuals and terminal targets.

## Acceptance and remaining producers

The interface adds eight disjoint local claims and four preservation equations. A stored
`.proved` term is source, not a verification receipt. Underlying theorems are universe-
polymorphic; the portfolio explicitly selects small-index instances. Inherited gauge,
measure, topology, metric, algebra and representation identities are not replaced.

Require exact-head Lean elaboration, resolved public signatures and inherited scoped
instance/coercion projections, complete per-module outcomes, transitive kernel/axiom and
runtime-safety audits, hostile-control execution and immutable external replay. Only
`propext`, `Classical.choice` and `Quot.sound` are permitted. Reject `sorryAx`, unsafe
mathematical declarations and unreported native dependencies. Not-run, failed, unavailable,
missing, source-only and root-only outcomes are not acceptance.

The dense evaluation family is a sufficient criterion, not an asserted necessary one.
Constructing it for a selected non-atomic or dense-atomic application measure remains a
separate analytic producer. No general L2 realization, holomorphic section-space closedness,
star/C-star closure, differential domain, heat theorem, arithmetic metric, Picard/theta,
K/KK comparison, Weil criterion, residual decay, RH/ABC conclusion or worker authority follows.
