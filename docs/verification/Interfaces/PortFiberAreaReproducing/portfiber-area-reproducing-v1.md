# PortFiberAreaReproducing/1 — static acceptance specification

Status at preparation: SOURCE_PREPARED / NOT_RUN / NOT_KERNEL_AUDITED.
This file specifies mathematical checking. It is not a runner, receipt, authority record,
worker qualification, build request, or evidence that any check ran.

## Exact predecessor and isolated leaf

Repository: `grwtsk/math`.
Predecessor: `d140a4b97638961de8c05adcff776e0369b8ac5c`.
Predecessor tree: `81c79fd01045b99e113c58331c42cb10f211af48`.
Retain `docs/verification/Interfaces/PortFiberAreaComplete/portfiber-area-complete-v1.md` and every recursively required earlier
specification, packet, objection, fixed-measure control, and statement-preserving erratum.
Its source/interface/specification blobs are respectively:

```text
055494c26c76536ae2eb644bd1b978eb3edb791e
c4eb2831f018f2f4b2674dce246c28ec6f69ab6d
7fde819d9c3f1861f5336bba53f3cbaef6fdb03c
```

New files only:

```text
GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean
GRWTSK/Interfaces/PortFiberAreaReproducing.lean
docs/verification/Interfaces/PortFiberAreaReproducing/portfiber-area-reproducing-v1.md
```

Isolated root: `GRWTSK.Interfaces.PortFiberAreaReproducing`.
No predecessor root or `GRWTSK.lean` imports this leaf. No measure, metric, source carrier,
dependency pin, earlier statement, residual plan, arithmetic supplier or terminal target changes.

## Mathematical obligations and exact bindings

`AreaCompletion` abbreviates the historical completion of the identity-cocycle/unit-metric
quotient for unnormalized complex Lebesgue area. No replacement inner product, topology,
normalization, quotient relation, representative convention, or instance is introduced.

`completedEvaluation` is the historical `extendLinear` applied to the historical bounded
area evaluation. Check its computation on every embedded original class. The prior
area-specific surjectivity theorem, not density alone, binds it to `completedRealization`
on ALL completed vectors. The same argument extends the old disk bound. At equal centers,
window changes alter estimates but not functionals. `evaluationAt` selects only a window;
its value is the exact realized function value at the specified base point.

`realization_multiplier` uses the old multiplier producer and quotient lift. Its completed
counterpart retains the original completion embedding, actual bounded symbol and actual
pointwise product. The multiplier and evaluation equations must hold on arbitrary completed
vectors, not only named fixtures or an assumed dense subset.

`kernelVector` is the inverse of Mathlib's actual `InnerProductSpace.toDual`, applied to
that exact `evaluationAt`. Riesz uses completeness of the historical completed Hilbert space.
The first inner-product argument is conjugate-linear and the second is linear. Check
reproduction, uniqueness against ALL completed vectors, exact functional/vector norm equality,
and the old scalar-energy identity for the realized vector. None is an assumed field.

`kernel(z,w)` is `completedRealization(kernelVector(w))(z)`. Its order is fixed:
`kernel(z,w) = inner(kernelVector(z), kernelVector(w))`.
Check holomorphy in z, Hermitian symmetry, and the finite Gram identity with coefficient
`star(c(i)) * c(j)`. Nonnegativity is derived from the norm square of the finite sum.
Do not strengthen positive semidefiniteness to strict positive definiteness.

The diagonal equals the SQUARE of the exact evaluation norm. Its disk upper bound is
`((sqrt(pi * R^2))^(-1))^2`, with positive radius and actual containment retained.
Strict diagonal positivity requires nonzero evaluation. The supplied sufficient hypothesis
is finite total ambient area, which reuses the original constant-unit detecting section.
No finite-area hypothesis is added to reproduction, Gram nonnegativity or the adjoint law.

`adjoint_multiplier_kernel` uses Mathlib's actual Hilbert adjoint and the same completed
multiplier. Its eigenvalue is `star(f(x))`, not `f(x)`. The representing vector need not be
nonzero for this identity. A nonzero-vector consequence must retain a detector.
This does not identify the full adjoint with pointwise antiholomorphic multiplication.

## Required new controls

Each control requires exact-source inspection and the applicable positive/negative Lean check.
Listed obligations, source theorem terms, finite diagnostics and skipped checks are not passes.

- AR01 — Evaluation identity: reject a supplied or zero replacement for the historical extension;
  require `completedEvaluation_toCompletion`, `completedEvaluation_eq_value` and
  `evaluationAt_eq_completedEvaluation` on exact endpoints and every relevant vector.
- AR02 — Operator identity: reject changing the symbol, section, metric, measure, product order,
  or completion map in `realization_multiplier` and `completedRealization_multiplier`.
- AR03 — Riesz scope: reject a kernel supplied as a field or a pointwise representative choice;
  require actual `toDual.symm`, reproduction, uniqueness, norm binding and scalar-energy binding.
- AR04 — Kernel convention: reject swapped variables, missing scalar conjugation or strict
  positive-definiteness inferred from Gram nonnegativity; execute the empty-Gram control.
- AR05 — Quantitative scope: retain the exact positive-radius contained disk and squared bound;
  do not claim an optimal disk functional norm or a uniform lower radius over the domain.
- AR06 — Detection: reject strict diagonal positivity without a nonzero evaluation supplier;
  preserve the infinite-area unit obstruction and all historical zero-space cases.
- AR07 — Adjoint identity: retain Mathlib's actual bounded Hilbert adjoint and the original
  multiplier, not a new operator satisfying a weakened pairing equation on sampled vectors.
- AR08 — Complex sign: check `phase_kernel`, `phase_wrong_sign` and `disk_phase_wrong_sign`;
  the proper-disk fixture supplies its finite-area hypothesis and actual center. The incorrect
  positive-i eigenvalue must fail, not be hidden by a zero kernel vector.

The eight disjoint portfolio claims and all four preservation declarations must elaborate
with the intended public signatures. Portfolio `.proved` constructors store mathematical
proof terms; they are not verification receipts and do not promote a terminal target.

## Cumulative acceptance and trust

Retain 85 planned predecessor local-module requirements and 250 predecessor controls.
Two added Lean modules and eight controls give 87 planned local-module requirements and
258 control specifications. These are inherited planning counts, NOT discovered or executed
coverage. Discover and reconcile the actual transitive import graph at the checked revision.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Direct Riesz/adjoint APIs were inspected at that Mathlib revision. Check inherited scalar,
norm, inner-product, metric, topology, uniformity, completeness and dual-space projections.
Permit only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, unsafe mathematical
declarations and unreported native dependencies. Record per-module source identity and exact
terminal outcome externally. Missing, failed, unavailable, source-only and root-only outcomes
cannot discharge this specification. Keep effectful checking in `grwtsk/noeaaeue`.

## Separate remaining claims

No ambient L2 embedding or orthogonal-projection theorem, integral-kernel formula, closed-form
Bergman kernel, antiholomorphic differentiation theorem, kernel-span density theorem, general
bundle/metric transport, C*-closed symbol algebra, differential or unbounded domain, heat
functional calculus, source-specific elliptic/arithmetic measure comparison, Picard/theta/K/KK,
Weil comparison, residual decay, RH/ABC theorem or execution authority is supplied here.
