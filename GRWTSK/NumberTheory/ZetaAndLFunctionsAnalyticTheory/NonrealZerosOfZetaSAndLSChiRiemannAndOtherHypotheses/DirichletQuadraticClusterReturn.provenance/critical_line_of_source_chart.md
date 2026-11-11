# critical_line_of_source_chart

Attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.DirichletQuadraticClusterReturn.critical_line_of_source_chart` in [DirichletQuadraticClusterReturn.lean](../DirichletQuadraticClusterReturn.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `14b079116369c4e3fab4ed99375fbf807caeb169`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Given a positive modulus, a complex Dirichlet character, an actual SourceChart of z->LFunction(chi,1/2+i*z), nonnegative chart discriminant, and a zero s whose spectral coordinate belongs to the chart, conclude re(s)=1/2. The inverse coordinate identity transfers the zero to the chart. SourceChart.im_eq_zero_of_zero gives zero imaginary spectral part, and the reused spectral-coordinate criterion yields the critical-line equality. Primitivity is not needed for this local implication.

Consumer: the exhaustive critical-strip statement. A chart of an unrelated auxiliary polynomial cannot supply the exact factorization premise. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal return record](primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion.md) provides exact source identity/digest, pins and reproduction.

Classification: conditional interface. Chart existence, coverage and normalization bridges remain open. Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No GRH/novelty claim. Coordination: grwtsk/math#1809.
