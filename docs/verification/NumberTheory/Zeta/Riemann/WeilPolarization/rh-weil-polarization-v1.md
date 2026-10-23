# Pointwise Weil polarization: static verification specification v1

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED / NO RH CLAIM.
This is a static source/acceptance specification. It is not an executable manifest,
execution request, receipt, scheduler, or authority to change any worker/F06 gate.

## Source selection and historical preservation

The exact preparation parent is math PR #263 at
`cec3d3b6d3ec1b21cae91a73a64077544c623ee1`, tree
`1e8458b07bb7c92644438495cd797a4ce96616d5`.
The containing commit is the selected candidate; a later head invalidates its replay.
Lean and Mathlib pins remain unchanged; Mathlib is
`db584cd6d46c92f209a44c0f1c829460d327499d`.

This increment adds only two mathematical source modules and this specification.
No existing theorem, structure, proof, import, historical manifest, public umbrella,
source identity, conditional premise, or acceptance policy is edited.

The historical `WeilPositiveLimit` blob
`b47dfd2fe92dd5be05326d1b90005bb2d0674fc8` remains byte-preserved. Its wording that
polarized convergence is stronger is not a strict mathematical distinction at the
all-vector Hermitian pointwise scope. `WeilPolarization` supplies the explicit converse.
The historical one-way implementation remains present in its own module; no coercion
or hidden replacement is installed. Import minimization remains a separate edit.
No #255 reconciliation or new analytic/spectral supplier is included.

## Selected targets and inherited requirements

New mathematical leaf:
`GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization`.

New explicit regression target:
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilPolarization`.

The new regression target imports the old `Checks.Positive.AtlasRepairIntegration`
and the new leaf. Neither old nor new isolated target is added to the public umbrella.
A root-only result or the old integration target alone cannot cover the new leaf.

Retain conjunctively the complete requirements of
`docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/AtlasRepairIntegration/rh-atlas-repair-integration-v1.md`, blob
`e88c0399bb24a619b32d926fec7f640afafef273`, at the current selected source. This
includes all inherited module/control records and all scope/trust/acceptance conditions
from the power-Taylor, Weil-criterion, and positive-Gram manifests, plus A01-A12.
All four historical donor blobs recorded by that specification remain unchanged.

The inherited `reject-diagonal-as-polarized` control remains a check against an
unproved or implicit promotion. Its description of the historical one-way code remains
true for that byte-preserved module. The new EXPLICIT conversion must separately pass
this specification's exact signature/proof/trust checks; the old control is not a
mathematical assertion that a converse is impossible. No stronger topology is inferred.

Add BOTH new modules to independently enumerated exact-source dependency/declaration
coverage. The two added filenames and inherited lists are only a declared minimum, not
proof of complete coverage. Reconcile the full transitive local/upstream import closure,
all public declarations and exact types, and any module/source identity movement.
Inherited root-wide coverage requirements are not waived by the isolated target.

Allowed axioms remain only `propext`, `Classical.choice`, `Quot.sound`.
Reject `sorryAx`, unreported native dependencies, missing/unrun modules or signatures,
source drift, stale receipts and duplicate/conflicting terminal outcomes.
Elaboration success alone is not a transitive axiom/runtime audit.

## Exact mathematical obligations

The helper `WeilPolarization.of_real_diagonal` must consume actual additivity and
complex sesquilinearity, conjugate-linear in the FIRST argument, and the identity
`(q(v) : Complex) = B(v,v)`. Positivity is not required for polarization.
It reconstructs

    B(f,g) = (q(f+g) - q(f-g) - I*(q(f+I*g) - q(f-I*g))) / 4.

All four vectors belong to the same complex submodule. No real-subspace or finite
sample replacement is admitted. The target form uses its actual real-diagonal proof;
the Gram form uses the exact same `family.map n` for every vector.

`WeilHermitianForm.polarization` and `PositiveGramFamily.gram_polarization` must retain
the actual target and family functions. `DiagonalPositiveGramLimit.tendsto_polarized`
uses four instances of its universal vector hypothesis and continuity into Complex.
The original family, comparison ID, source binding, target revision and normalization
must be retained by `DiagonalPositiveGramLimit.toPolarized`.

Both record round trips and `WeilPolarization.limitEquiv` are actual terms.
Their proof fields may use proof irrelevance, but their data fields must not be replaced
by fitted maps, a new comparison identity or a different target/test class.

For an existing `DiagonalErrorBound`, require the exact estimate

    norm(W(f,g) - gram_n(f,g)) <=
      (error_n(f+g) + error_n(f-g) +
       error_n(f+I*g) + error_n(f-I*g)) / 4.

`polarizedError_nonnegative`, `polarized_comparison` and
`polarizedError_tendsto_zero` must prove nonnegativity, the complete complex residual
bound and decay respectively. Decay is for EACH FIXED pair, not uniformly in vectors.
`DiagonalErrorBound.toPolarized` must use the historical error-to-diagonal conversion
and the explicit new converse, with the identical family.

The terminal RH example must still consume a separate `WeilPositivityImpliesRH` term.
The conversion supplies no criterion, new family, independent zeta form or error decay.

## Additional hostile-control specifications

P01. Reject the opposite imaginary sign for a first-conjugate-linear form.
P02. Reject substituting real parts without the full real-diagonal equality.
P03. Reject missing additivity, complex sesquilinearity or complex-submodule closure.
P04. Reject finite sampled diagonals as the all-vector convergence hypothesis.
P05. Reject four diagonals produced by different or test-fitted stage maps.
P06. Reject drift in the family, comparison ID, source, target revision or normalization.
P07. Reject record round trips justified only by equal endpoints but changed data fields.
P08. Reject dropping a diagonal error, changing the factor 1/4, or assuming cancellation.
P09. Reject error bounds without actual all-vector error decay when claiming convergence.
P10. Reject uniform-in-vector, operator-norm, trace-norm or determinant convergence upgrades.
P11. Reject an RH endpoint without its separate criterion proof.
P12. Reject old-head, old-target-only, root-only, missing-declaration or partial-trust replay.

The source regressions include the convention-sensitive value I and a proof rejecting
the opposite sign. A synthetic Hermitian cross term has zero diagonals on two basis
vectors but a nonzero off-diagonal value. This is not an arithmetic or zeta example.
Malformed-input and receipt-rejection controls above remain specifications until an
independent verifier implements/runs them. Source examples are not executed tests.

## Validation boundary and remaining work

Required before acceptance: exact-head Lean elaboration/repair, exact public signatures,
complete dependency/declaration coverage, transitive axiom/runtime audit, all inherited
and new controls, and immutable external replay under the existing authority boundary.
Local symbolic/rational experiments and lexical scans establish none of these.

The new result is pointwise reconstruction and an explicit pointwise error conversion.
It does not construct a source-faithful arithmetic Gram family, the classical zeta Weil
form/criterion, comparison-error decay, global zero-exclusion covers, a Hilbert-space
operator or spectral realization, or a proof/refutation of RH or ABC.
The original #246/#247 branches are not updated or accepted by this #263 increment.
