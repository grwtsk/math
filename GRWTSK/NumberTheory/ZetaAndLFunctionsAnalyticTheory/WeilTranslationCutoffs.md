# Concrete gamma translation-energy observations

Owner: [WeilTranslationCutoffs.lean](WeilTranslationCutoffs.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.TranslationCutoffs`.
Primary subject: MSC 11M06; supporting operator theory 47A05.

## Exact spaces and maps

Physical = L2(R,dt;R). Energy = L2(R,dnu;Physical), where nu is the ORIGINAL
positive gamma lag measure. This is an iterated Bochner space. A separate
isometry to product-space scalar L2 is not asserted; the original scalar
iterated integral is recovered directly in `WeilTranslationEnergyDomain`.

`translate r` is f(t+r), as an actual linear isometry on physical L2;
`translate_ae`, `translate_norm`, and `continuous_translate` prove its formula,
norm preservation and strong orbit continuity. `jump f r` is translate r f-f,
with norm at most 2 norm(f). Translation concerns the t-coordinate only;
translation of the non-invariant lag weight is not used.

`cutoff m` is A_m f(r)=1_[1/(m+1),m+1](r)(U_r f-f).
`rawCutoff_memLp` proves membership by domination by a finite-mass unit
indicator. `cutoffLinear` proves linearity and `cutoff_opNorm_le` proves
norm(A_m)<=2 norm(1_window) in the same weighted space. The subsequent
module evaluates the squared constant as four times the window mass.

`restriction m` is R_m G=1_window G. Its norm is at most 1.
`restriction_cutoff_of_le`, `restriction_restriction_of_le`, and
`restriction_idempotent` prove the required compatibility. Countable a.e.
coverage yields `restrictions_separate`: all R_m jointly determine G.
`cutoff_hasFDerivAt` is the derivative in the INPUT variable, not the lag.

## Provenance and actual consumer

The local argument uses native mathlib `Lp.compMeasurePreserving_li`
(Lean spelling `Lp.compMeasurePreservingₗᵢ`), the a.e. composition formula,
`Continuous.compMeasurePreservingLp`, and the proved indicator map.
Pinned continuity source: `LpSpace/ContinuousCompMeasurePreserving.lean`,
blob `773826f1307d6e21c372e9f061266bd0249e379a`.
The mathematical translation operation also appears in the inspected
`openai/math@4eaee87548250b2682affda7d05d947c05554bae`
`lean/OAI/Analysis/ModularTheory/LpTranslation.lean`, blob
`d82b61da3fc64a98b510b2340e66fa8c9fa5c507`; it uses f(t-r).
Here the sign is deliberately f(t+r), matching the original Weil source.
No imported modular/VOA hypothesis or theorem is used.

Consumer: instantiate `ClosedMeasurementGraph` with these actual maps.
A finite lag cutoff is still infinite-dimensional. Separation uses ALL m;
no finite cutoff or finite state controller is declared universally complete.

## Source pins, evidence, and scope

Local mathematical attribution: grwtsk contributors.
Base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins are changed.

Status: **SOURCE_PROOF_CANDIDATE**. Lean elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay, and independent mathematical review: **NOT_RUN**. Static inspection
is not a replacement for any of these checks. No earlier acceptance or
failure record is changed. Novelty is not claimed; prior-art completeness
is **UNASSESSED**.

The source is ordinary authorized mathematical authoring, not execution of
a proof runner or import of an unproved paper theorem as an axiom.
Coordinating issues: [#1837](https://github.com/grwtsk/math/issues/1837),
[#1258](https://github.com/grwtsk/math/issues/1258).
