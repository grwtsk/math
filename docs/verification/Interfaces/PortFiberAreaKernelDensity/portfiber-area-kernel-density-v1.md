# Port-fiber area kernel density: static acceptance specification v1

## Exact scope and prerequisite

This is a mathematical acceptance specification, not an executable manifest or a replay receipt.
The immediate prerequisite is `docs/verification/Interfaces/PortFiberAreaProjection/portfiber-area-projection-v1.md` at
`35d5c8951a30ea1ea7500a87479b22dc8c1366d3`. Preserve that specification recursively,
including every preceding source identity, objection, erratum and control.

The new isolated root is `GRWTSK.Interfaces.PortFiberAreaKernelDensity`.
Its mathematical module is `GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity`.
The parent root does not import this leaf. No existing file, dependency pin, measure,
metric, historical acceptance specification, residual plan or target is replaced.

Required pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The prerequisite's 91 planned local-module requirements and 274 control specifications
are retained. The two added modules and eight added controls make 93 planned local-module
requirements and 282 control specifications. These are NOT discovered or executed coverage.
Actual transitive imports and per-module identities must be reconciled at the candidate head.

## Claim and carrier identities

The source carrier remains the old `AreaCompletion hOpen`: the identity cocycle, unit
metric, actual domain subtype, unnormalized complex Lebesgue area and original completion.
The ordinary ambient carrier remains `Lp Complex 2 (areaMeasure D.X)`.
`kernelVector`, `evaluationAt`, `completedRealization`, `l2Embedding`,
`holomorphicSubspace`, `bergmanLift`, `bergmanProjection` and `completedRepresentation`
refer to their historical constructions. None is supplied as a replacement input.

The selected set S consists of points of the exact base subtype. `Dense S` concerns that
subtype's existing topology. It is not density in an unspecified ambient space, a finite
sample count, a measure-support label, an empirical rank test or a numerical tolerance.

`evaluation_ext_on_dense` uses continuity of the realized holomorphic sections and
injectivity of the same completed realization. Equality on S must hold at EVERY member.
No connectedness, finite total area, nonempty-domain or nonzero-detector premise is added.

`kernelSpan` is the algebraic complex span of the SAME Riesz vectors at S.
`mem_kernelSpan_orthogonal` identifies its annihilator exactly with vanishing selected
evaluations. `kernelSpan_orthogonal_eq_bot` derives a trivial annihilator for dense S.
The pinned Hilbert orthogonal-complement theorem then derives `kernelSpan_closure_top`
and `kernelSpan_dense`. Completeness is the historical completion instance.

`kernel_approximation` uses this density in the ORIGINAL completed norm. The approximant
belongs to the actual algebraic span, hence is a finite linear combination. The result
does not choose a canonical coefficient vector, invert a Gram matrix, produce a numerical
algorithm, bound its conditioning or assert an approximation rate.

`boundedMap_ext_on_kernels` compares actual continuous complex-linear maps to a supplied
normed complex space. Agreement on generators gives vanishing on their span; the CLOSED
kernel of their difference extends this to the norm closure. Target completeness is not
needed. Arbitrary discontinuous maps and unbounded operators are not admitted.

`multiplier_adjoint_unique` retains the exact bounded symbol and old completed operator.
The conjugate-symbol eigenvalue law on all points of dense S identifies its ACTUAL Hilbert
adjoint. It does not manufacture an operator from an arbitrary eigenvalue assignment or
identify the full adjoint with pointwise antiholomorphic multiplication.

`projection_unique_of_kernelMoments` retains both the input g and the candidate p in
ordinary L2. Membership of p in the OLD holomorphic subspace is mandatory. Vanishing
moments of g-p against the embedded kernels at S identify p with the old projection.
`projection_zero_iff_kernelMoments` characterizes zero PROJECTION, not zero input.

`ambientKernelSpan` spans the SAME vectors after the SAME L2 embedding. Its orthogonal
complement equals the existing holomorphic subspace's orthogonal complement. Double
orthogonal complements and the prior closedness theorem identify its closed span with
`holomorphicSubspace`, NOT all ordinary L2.

## Local portfolio and preservation

The new interface has eight disjoint claim indices:

1. `denseEvaluation`: exact dense-base determination of completed vectors.
2. `exactAnnihilator`: annihilator computation and its dense-case triviality.
3. `normDenseSpan`: density and positive-tolerance approximation in the original norm.
4. `boundedDetermination`: equality of bounded maps from kernel values.
5. `adjointDetermination`: uniqueness of the historical multiplier adjoint.
6. `ambientClosedSpan`: identification with the old holomorphic L2 subspace.
7. `projectionDetermination`: holomorphic candidate uniqueness and zero-projection criterion.
8. `samplingBoundaries`: empty span and the nonempty one-point disk failure.

The mathematical module is universe-polymorphic. The portfolio records its small-index
and small-codomain instances explicitly; it does not relabel these as all-universe claims.
Retain `original_branch_unchanged`, `new_branch_proved`, `target_unchanged` and
`retarget_preserves_new`. A source-level `.proved` disposition is not a verification receipt.
All arithmetic/adelic, Picard/theta, K/KK, Weil/residual and RH/ABC obligations stay distinct.

## Additional hostile controls

- AKD-H01: Reject arbitrary point sets substituted for `Dense S`. On the proper disk,
  `diskCoordinateVector` is constructed by the old nonconstant multiplier acting on the
  actual finite-area unit vector. Evaluation at one half proves it nonzero, yet center
  evaluation vanishes. `disk_center_not_total` rejects density of the center-kernel span.
- AKD-H02: Empty samples give the bottom algebraic span. Do not infer nonzero detection,
  nonempty domain or strict positivity from a vacuous agreement statement.
- AKD-H03: Retain pointwise EXACT agreement at every dense-set member; finite experiments,
  approximate moments, equal scalar energies or equal norms cannot replace this premise.
- AKD-H04: The bounded-map theorem requires the original continuous linear maps. Do not
  extend this uniqueness statement to unbounded operators without domain/core hypotheses.
- AKD-H05: Retain conjugation in the multiplier-adjoint eigenvalue. The predecessor's
  constant-i wrong-sign fixture remains mandatory and cannot be weakened to a real pairing.
- AKD-H06: Ambient kernel span closes to `holomorphicSubspace`, not top. Zero sampled
  kernel moments characterize zero projection, not equality of arbitrary L2 input classes.
- AKD-H07: Projection uniqueness requires candidate membership in the holomorphic image.
  A residual in the orthogonal complement cannot be silently discarded from that premise.
- AKD-H08: Preserve original kernel/map/measure/metric identities, all old target dispositions
  and the no-runtime boundary. Neither a new gauge nor Gram invertibility is inferred.

AKD-H01/H02 have new explicit theorem fixtures. AKD-H05 reuses the earlier phase fixture.
The remaining controls are mandatory negative elaboration/signature obligations at replay;
listing them is not evidence that an executable hostile-control test has run.

## Acceptance and trust boundary

Check the complete exact-head import closure, not only the newest root. Every required
module/source identity needs its own unambiguous terminal result. Missing, failed,
NOT_RUN, unavailable, wrong-identity, conflicting, duplicate and root-only outcomes do not pass.
Inspect resolved signatures and the inherited scalar, norm, inner-product, topology,
uniformity, metric and completeness instances. This increment declares no new instances.

Only `propext`, `Classical.choice` and `Quot.sound` are allowed transitive axioms.
Reject `sorryAx`, placeholder declarations, unsafe mathematical declarations and unreported
native dependencies. Source text inspection cannot establish any of those transitive facts.
The pinned `Projection.Submodule`, `Orthogonal`, closed-kernel and module-closure APIs
must elaborate against the stated dependency revision, not a newer documentation build.

Local verification commands, from a clean checkout of the exact candidate head:

```bash
lake build GRWTSK.Interfaces.PortFiberAreaKernelDensity
lake env lean GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean
```

This specification authorizes no execution. Lean elaboration, axiom/runtime checks,
resolved-signature checks, hostile-control execution and external replay are separate.
The source-preparation status is NOT_RUN / NOT_KERNEL_AUDITED. Review proposals are inert
data. No F06 release, worker qualification, merge or issue-closure authority is conferred.

## Remaining boundaries

No strict Gram positivity, explicit Bergman formula, orthonormal basis, canonical finite
interpolation, sampling stability, gauge-compatible kernel/projection transport, new
ambient multiplication/Toeplitz algebra, nontrivial-bundle comparison, differential or
unbounded-operator core theorem, heat calculus, or arithmetic conclusion is asserted here.
Historical nonclaims keep their original isolated-leaf scopes; this leaf adds the density
and uniqueness arguments without rewriting historical packets.
