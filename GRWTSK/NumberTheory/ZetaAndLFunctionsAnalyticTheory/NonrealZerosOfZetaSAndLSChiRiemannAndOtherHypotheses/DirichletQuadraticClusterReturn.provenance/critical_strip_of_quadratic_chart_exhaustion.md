# critical_strip_of_quadratic_chart_exhaustion

Attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.DirichletQuadraticClusterReturn.critical_strip_of_quadratic_chart_exhaustion` in [DirichletQuadraticClusterReturn.lean](../DirichletQuadraticClusterReturn.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `14b079116369c4e3fab4ed99375fbf807caeb169`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Fix a positive modulus and a complex Dirichlet character. Assume that for every natural n, each zero s of the actual LFunction in 0<re(s)<1 with norm(s)<n belongs in spectral coordinates to an actual source chart with nonnegative Hermite form. Conclude the existing criticalStripStatement for that character. For a given s choose n>norm(s), obtain its chart, translate Hermite nonnegativity to d>=0, and apply critical_line_of_source_chart.

Consumer: the primitive all-character target. Coverage remains universally quantified; finitely many successful windows do not supply it. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal return record](primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion.md) gives source digest, exact source/target pins, limitations and build command.

Classification: conditional exhaustion consequence, not a supplier of arithmetic charts. Boundary nonvanishing and completed-source equivalence are not assumed implicitly. Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. Coordination: grwtsk/math#1809.
