# hermiteNonnegative_iff

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.hermiteNonnegative_iff` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For all real c,d, the quadratic form is nonnegative for every real vector (x,y) iff d>=0. Necessity uses the vector (-c,1), whose value is 2*d. Sufficiency uses the decomposition into 2*(x+c*y)^2 and 2*d*y^2. The singular case d=0 is accepted; strict positivity is not substituted for semidefiniteness.

Consumer: the exact quadratic reality certificate. Classification: elementary consequence in the local extension of RP-OC-05, not a novel matrix theorem. Compare grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Principal record](hermiteNonnegative_iff_allRootsReal.md) supplies source digest, full comparison and build command.

Elaboration, kernel replay, transitive axiom audit and independent review: **NOT_RUN**. This is a scalar quadratic-form predicate, not a claimed Matrix.PosSemidef implementation or arithmetic Weil positivity. Coordination: grwtsk/math#1809.
