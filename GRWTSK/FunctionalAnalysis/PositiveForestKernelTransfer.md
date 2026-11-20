# Positive finite certificates and integral-kernel return

Authors: grwtsk contributors

## Mathematical role

`PositiveForestKernelTransfer.lean` supplies the analytic consumer for a finite
positive-generator forest certificate. It works with the actual complex kernel
integral defined by `IntegralKernelApproximation.kernelForm`, retaining the
conjugate-first convention, the original measure, and the entire test function.
It does not define the zeta screw function or identify a kernel with the Weil
form. Those source identities remain separate mathematical obligations.

## Statements and argument

In namespace `GRWTSK.FunctionalAnalysis.PositiveForestKernelTransfer`:

- `featureMoment_normalizedCellFeature` identifies each normalized observable
  with the complete cell integral divided by the square root of its mass.
- `finiteKernel_massWeighted` proves the required matrix scaling by
  `sqrt(mass_i) * sqrt(mass_j)`. Equal cell masses give the factor `h`.
- `norm_cellIntegral_sq_le` applies Cauchy--Schwarz on each restricted cell.
- `sum_cellEnergy` sums the disjoint complete cell energies exactly.
- `normalizedCellMoments_energy_le` combines these facts into the Bessel bound.
  Cell measurability and strictly positive finite real masses are explicit.
- `kernel_lower_of_finite_lower` combines a finite quadratic lower bound with
  the proved whole-kernel error estimate and a specified feature-energy bound.
- `normalizedCells_kernel_lower` supplies that energy bound from the preceding
  normalized-cell theorem, rather than assuming it.
- `interval_kernel_lower` specializes the source measure to Lebesgue measure
  on `[-A,A]`, obtaining the exact lower allowance
  `-(r + 2*A*epsilon) * integral ‖u‖^2`.

The finite matrix residual is an all-vector quadratic inequality. The default
Lean matrix norm is not identified with an induced Euclidean operator norm.
The result applies to every integrable input with integrable squared norm;
it is not limited to the finite span of the features. An application taking
`u = f'` must prove its own derivative/source identity and admissibility.

## Source comparison and limitations

This is a local consequence of elementary Cauchy--Schwarz, finite additivity of
integrals on a measurable partition, and the existing exact finite-kernel return.
The reused local modules were inspected at repository commit
`417156d807dda632ef6cbf08dc5958037f9e6dd0`:

- [IntegralKernelApproximation.lean](IntegralKernelApproximation.lean), especially
  `l1_sq_le_mass_l2`, `kernelForm_real_sandwich`, and `interval_mass`.
- [FiniteKernelEnclosure.lean](FiniteKernelEnclosure.lean), especially
  `featureMoment_cellFeature` and `real_kernelForm_finiteKernel`.

No novelty or direct paper-formalization claim is made. The pointwise kernel
enclosure, finite lower certificate, and its residual size remain explicit
inputs. Neither a uniform producer at every precision nor an actual zeta
positivity criterion is constructed by this module. In particular, passing a
finite certificate proves only the displayed error-paid lower bound.

## Verification scope

Pinned environment: Lean `4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local elaboration passed on 2026-11-20 with the pinned toolchain:

```sh
lake env lean --profile GRWTSK/FunctionalAnalysis/PositiveForestKernelTransfer.lean \
  -o .lake/build/lib/lean/GRWTSK/FunctionalAnalysis/PositiveForestKernelTransfer.olean \
  -i .lake/build/lib/lean/GRWTSK/FunctionalAnalysis/PositiveForestKernelTransfer.ilean
```

The process exited with status zero after 75.86 seconds; the profiler attributed
67.1 seconds to imports and 3.05 seconds to serialization. The source SHA-256 was
`0d577dc35c18014f517784c3ed192612af7fffa74c7901179e82d051f1bb32fc` both before and
after that run. Remaining messages were linter warnings about unused section
variables or tactics, not elaboration failures. No `sorry`, `axiom`, or
`native_decide` is used in this source.

Transitive axiom auditing PASSED. Fresh kernel replay: INCOMPLETE (runtime limit reached).
The coordinated check is described below. Independent external mathematical review
remains `NOT_RUN`.

## Coordinated source-bound verification

The completed audit explicitly checked all 106 authored declarations in the
five new modules, plus an independently named comparison theorem with the
exact `GRWTSK.RiemannHypothesis.Target.Statement` conclusion: 107 targets.
This module contributes 13 of those source declarations. Every expected
name was reported exactly once. The transitive axiom union is exactly
`propext`, `Classical.choice`, and `Quot.sound`; no unapproved axiom occurred.
All five source hashes remained unchanged during the audit.

Fresh full-dependency kernel replay is INCOMPLETE. The standard
`leanchecker --fresh -v ForestPublicAudit` invocation reached its 600-second
runtime limit; a direct invocation of the same `replayFromFresh` function
from the pinned `LeanChecker` module reached its 300-second limit. Both
returned exit 124, so neither supplies a passing fresh replay result.
The successful compilation and exact axiom audit are separate completed
observations and are not relabeled by these incomplete replay attempts.

`ForestPublicAudit` is a temporary aggregate importing the five new modules
and the independent target statement. Its compiled SHA-256 is
`8606075bdd60be84918d94c3f6bc06d784d066233b013ddfc644b69d8e1523eb`.
The replay operation checks the imported and newly defined constants in a
fresh environment using Lean's own kernel. It is not a separately implemented
verifier; that independent check remains `NOT_RUN`.

AI-assisted cross-review checked the exact finite matrix interpretation,
normalization, complete-square error allowance, fixed-test limit and
explicit arithmetic premises. It found no blocking mathematical issue.
Independent external mathematical review remains `NOT_RUN`. The formal
checks do not supply the unresolved arithmetic source or certificate
family. Publication and exact source evidence are tracked in
[math issue 1841](https://github.com/grwtsk/math/issues/1841).
