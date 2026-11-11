# im_eq_zero_of_quadratic_eq_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.im_eq_zero_of_quadratic_eq_zero` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real c,d and complex z, d>=0 and (z-c)^2-d=0 imply im(z)=0. Writing z=x+iy gives (x-c)^2-y^2=d and (x-c)y=0. Either y=0 directly, or x=c and nonnegativity of d forces y^2=0. This is the entire primary argument. Removing d>=0 admits c+i for d=-1.

Consumer: the forward direction of `allRootsReal_quadratic_iff`. This is an elementary local consequence, not a new paper theorem. Compare grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [The principal record](allRootsReal_quadratic_iff.md) contains the exact source digest, wider comparison, limitations and reproduction command.

Elaboration, kernel replay, transitive axiom audit and independent review: **NOT_RUN**. The component proof is not independent of the principal proof. No GRH or novelty claim. Coordination: grwtsk/math#1809.
