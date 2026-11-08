# Isolated Hurwitz adapter

Local attribution: grwtsk contributors.

This package builds only the canonical source linked at
[`RealZeroLimit.lean`](../../../GRWTSK/FunctionsOfAComplexVariable/RealZeroLimit.lean). The relative symlink
returns to the maintained source tree; no independent source copy is kept.

Upstream source is TauCetiProject/TauCeti commit
`67aa17161ba1908f8a85182bfdf2d4ccaf21171c`, in particular
`TauCeti/Analysis/Complex/Conformal/Hurwitz.lean`, authored by The Tau Ceti
contributors under Apache-2.0. It uses Lean `v4.36.0-rc2` and Mathlib
`1b1ccf4b088b32fa3f23f2de1127433254a81e1e`. The manifest retains the upstream
transitive revisions and adds this package's pinned TauCeti requirement.
The root Mathlib-only environment is unchanged.

No build, cache fetch, dependency update, kernel check, or transitive axiom
audit was executed. All formal assurance is **NOT_RUN**. The declared build
target is `GRWTSK`; no executable, scheduler or workflow is included.
