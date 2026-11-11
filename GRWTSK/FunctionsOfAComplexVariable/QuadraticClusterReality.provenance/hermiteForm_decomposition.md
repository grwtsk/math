# hermiteForm_decomposition

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.hermiteForm_decomposition` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For all real c,d,x,y, the defined Hermite quadratic form equals 2*(x+c*y)^2+2*d*y^2. Expanding both squares gives the same polynomial, which the candidate proves with `ring`. No sign assumption is needed for the identity; d>=0 is required for the subsequent positivity conclusion. For d<0, x=-c,y=1 produces a negative value.

Consumer: `hermiteNonnegative_iff`. This is a degree-two identity, not the general Hermite--Sylvester theorem. Source comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal record](hermiteNonnegative_iff_allRootsReal.md) records the written extension, source digest, exact scope and build command.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No positivity of the arithmetic Weil form follows. No novelty claim. Coordination: grwtsk/math#1809.
