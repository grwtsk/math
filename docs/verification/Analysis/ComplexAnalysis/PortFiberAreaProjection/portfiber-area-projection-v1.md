# PortFiberAreaProjection/1 — static acceptance specification

Status at preparation: SOURCE_PREPARED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical checking specification, not an executable request, receipt,
worker qualification, authority record or evidence that a check has run.

## Exact predecessor and isolated leaf

Repository: `grwtsk/math`.
Predecessor: `817b2f6d84d2f40d785fbafb1940df78677fc142`.
Predecessor tree: `04b38c665031c527e5513f0b753ddd4c853cab09`.
Retain `docs/verification/Interfaces/PortFiberAreaL2/portfiber-area-l2-v1.md` and every recursively required earlier
specification, packet, objection, counterexample and statement-preserving erratum.
The immediate predecessor's mathematical source, interface and specification blobs are:

```text
5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338
e2efbb4e4121500784ea0ec9106e8a725d3bf3b5
a1591b6fa3fe540990742640a31b910e8a690ead
```

New files only:

```text
GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean
GRWTSK/Interfaces/PortFiberAreaProjection.lean
docs/verification/Interfaces/PortFiberAreaProjection/portfiber-area-projection-v1.md
```

Isolated root: `GRWTSK.Interfaces.PortFiberAreaProjection`.
No predecessor root or `GRWTSK.lean` imports this leaf. No old source, measure, metric,
carrier, dependency pin, residual plan, arithmetic supplier or terminal target changes.

## Constructed maps and exact scope

`AmbientL2` abbreviates Mathlib's ordinary `Lp Complex 2 (areaMeasure X)`, retaining the
actual domain subtype and unnormalized complex Lebesgue area. `l2Inclusion` is the previous
`l2Embedding` viewed as a continuous linear map. `bergmanLift` is its ACTUAL Hilbert
adjoint, into the SAME historical `AreaCompletion`. `bergmanLift_embedding` derives the
left inverse from full complex inner-product preservation, not ambient surjectivity.

`bergmanProjection = l2Inclusion.comp bergmanLift`. No projection, orthogonality,
minimization, kernel formula or pointwise-recovery property is supplied as a field.
The source derives exact fixed-point and range identities with `holomorphicSubspace`,
idempotence as continuous-linear-map equality, self-adjointness under the genuine L2
adjoint, and operator norm at most one. These are not new norm or scalar instances.

`projection_residual_inner` quantifies over ALL vectors in the existing holomorphic
image. `bergmanProjection_eq_zero_iff` identifies zero output with orthogonality to that
image; it does not assert zero input. `bergmanProjection_bestApprox`,
`bergmanProjection_unique`, and `existsUnique_bestApprox` bind existence and uniqueness
of the least-square approximation to the same ambient input, image and norm. Ordered
composition, the exact adjoint and source completeness must remain visible in checking.

`projectedFunction` is the preceding `completedRealization` of the actual adjoint output.
Its holomorphy is carried by the old holomorphic-section type and finite scalar energy is
derived from the prior theorem. The ambient output agrees with that function only a.e.
The holomorphic function is uniquely determined, but arbitrary measurable representatives
of the input are not selected or asserted continuous. Embedded holomorphic vectors are
fixed with the exact old completed realization.

## Integral projection, not unrestricted input evaluation

The SAME kernel convention is `K(z,w) = R(k_w)(z)` with inner product conjugate-linear in
the first slot. `kernel_cross_ae` uses the historical L2 embedding's a.e. binding and
Hermitian symmetry, so the actual L2 cross-inner-product integrand is `K(x,z) * g(z)`.
The evaluation point x is the FIRST kernel argument and z is the integrated variable.

`projection_kernel_integrable` uses actual L2 cross-integrability for arbitrary input g,
not holomorphy of g and not a supplied kernel-integrability field. Only then does
`integral_projection` derive

```text
integral_X K(x,z) * g(z) dA(z) = projectedFunction(g)(x).
```

The right side evaluates the holomorphic OUTPUT, not an arbitrary representative's input
value. `integral_projection_toLp` retains integrability and equality for every supplied
MemLp representative, using a.e. congruence. No Bochner nonintegrable default is used.
The result requires neither finite total area, a nonempty domain, a nonzero detector, nor
a uniform positive disk radius. The underlying identity cocycle, unit metric and exact
open-cover evidence remain mandatory.

## Required new controls

Every listed control requires exact-source signature review and its applicable Lean
positive/negative checks. An uncompiled proof script is not an executed control.

- APJ01 — Exact adjoint binding: verify `l2Inclusion_apply`, `bergmanLift_inner` and
  `bergmanLift_embedding`. Reject replacement embeddings, changed measures or an assumed
  inverse on all ambient L2 classes.
- APJ02 — Projection laws: require idempotence, the actual adjoint equality and norm at
  most one. Reject a merely idempotent oblique map or a universal norm-equals-one claim.
- APJ03 — Exact image: require both directions of the fixed-point characterization and
  equality with the OLD holomorphic L2 submodule. Do not substitute operator-algebra image
  or infer every L2 input is holomorphic.
- APJ04 — Orthogonal residual: quantify against every embedded vector and verify the
  zero-output iff orthogonality statement. Reject sample-based orthogonality and promotion
  of zero output to zero input.
- APJ05 — Least squares: verify membership, minimization against ALL holomorphic classes
  and uniqueness for the original input and L2 norm. Do not assume the desired minimizer.
- APJ06 — Holomorphic output: require finite old energy, a.e. ambient-output computation,
  and exact recovery on embedded vectors. Reject pointwise coercion equality for all Lp
  representatives or holomorphy of arbitrary input representatives.
- APJ07 — Integral formula: require `kernel_cross_ae`, genuine arbitrary-L2 integrability,
  `integral_projection` and its MemLp specialization. Reject transposed kernel arguments,
  lost conjugation, input-point recovery, or a nonintegrable integral default.
- APJ08 — Failure boundaries: verify the zero-input theorem, the nonzero proper-disk
  projection fixture and the old spike's failed exceptional-point recovery. The spike
  has zero L2 class; this is not an example of a nonzero orthogonal-complement class.

Eight disjoint portfolio claims record small-cover-index instances of the
universe-polymorphic source. Check all four preservation declarations. A `.proved`
portfolio field stores a source proof term, not a verification receipt or terminal result.

## Cumulative acceptance and trust

Retain 89 planned predecessor local-module requirements and 266 predecessor controls.
Two added Lean modules and eight controls give 91 planned local-module requirements and
274 control specifications. These are PLANNING counts, not discovered or executed
coverage. Discover actual transitive imports and reconcile each exact source identity.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Inspect the pinned Hilbert-adjoint and least-square APIs, Lp completeness and L2
cross-integrability, plus all historical public signatures and scalar/norm/inner-product/
metric/topology/uniformity/completeness projections. Permit only `propext`,
`Classical.choice`, `Quot.sound`; reject `sorryAx`, unsafe mathematical declarations and
unreported native dependencies. Missing, failed, unavailable, source-only and root-only
outcomes cannot pass. Keep effectful checking and receipts outside this mathematical repo.

## Separate remaining claims

This leaf does not supply an explicit disk Bergman formula, kernel-span density, strict
Gram positivity, gauge-compatible projection/kernel transport, an ambient multiplier or
Toeplitz calculus, a nonzero orthogonal-complement example, new bundle metrics or
nontrivial-bundle detectors, differential/unbounded domains, heat calculus, source-specific
arithmetic measure identities, Picard/theta/K/KK comparisons, Weil/residual suppliers,
RH/ABC conclusions, worker qualification, F06 release, execution or merge authority.
Historical nonclaims retain their OLD isolated-leaf scope; this leaf supplies only the
additional projection and integral argument without rewriting previous records.
