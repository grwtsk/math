# exists_nonreal_root_of_neg

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.exists_nonreal_root_of_neg` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real c,d with d<0, construct z=c+i*sqrt(-d). Real.sq_sqrt verifies (z-c)^2=d; Real.sqrt_pos gives im(z)>0. Thus the source quadratic has an actual nonreal root, without assuming a complete root enumeration. At d=0 this construction is real, explaining the strict hypothesis.

Consumer: necessity of d>=0 in `allRootsReal_quadratic_iff`. Classification: elementary quadratic consequence/negative control, not a novel theorem. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Principal provenance](allRootsReal_quadratic_iff.md) supplies the source digest, comparison and build command. This control is a polynomial, not an off-critical zero of an arithmetic L-function.

Elaboration, kernel replay, transitive axiom audit and independent review: **NOT_RUN**. Shared dependencies do not establish independence. Coordination: grwtsk/math#1809.
