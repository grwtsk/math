# quadratic_order_at_collision

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.quadratic_order_at_collision` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For each real c, analyticOrderAt of z -> (z-c)^2 at c is 2. Unfold the centered quadratic with d=0 and apply Mathlib's `analyticOrderAt_centeredMonomial` in Mathlib/Analysis/Analytic/Order. This is an explicit reuse of upstream order calculus, not evidence of a new independent paper formalization.

Consumer: preservation of source multiplicity under a nonvanishing analytic multiplier. Counting distinct locations would instead give one and is not the definition used. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Powered-collision record](source_order_at_powered_collision.md) contains source digest, retained hypotheses, consumer and build command.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: **NOT_RUN**. No claims of upstream/local transitive verification or novelty are added. Coordination: grwtsk/math#1809.
