# arithmeticCoordinate_spectralCoordinate

Attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.DirichletQuadraticClusterReturn.arithmeticCoordinate_spectralCoordinate` in [DirichletQuadraticClusterReturn.lean](../DirichletQuadraticClusterReturn.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `14b079116369c4e3fab4ed99375fbf807caeb169`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every complex s, arithmeticCoordinate(spectralCoordinate(s))=s. The reused spectral coordinate is -i*(s-1/2); its inverse is 1/2+i*z. Multiplication gives 1/2+(s-1/2)=s. The candidate uses complex extensionality and real/imaginary polynomial simplification. The sign convention retains imaginary spectral displacement 1/2-re(s); taking only the ordinate would lose it.

Consumer: exact return from a spectral source chart to DirichletCharacter.LFunction at the original s. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal return record](primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion.md) supplies the source digest, reused declaration pins and build command. Classification: elementary coordinate identity.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. This does not identify completed-function normalizations or prove GRH. Coordination: grwtsk/math#1809.
