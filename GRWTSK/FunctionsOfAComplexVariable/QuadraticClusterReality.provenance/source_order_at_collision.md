# source_order_at_collision

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.source_order_at_collision` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Given real c and u:complex->complex analytic and nonzero at c, the analytic order of u(z)*(z-c)^2 at c is 2. Use canonical `AnalyticOrderTransport.order_mul_nonzero_right`, then `quadratic_order_at_collision`, commuting the product as necessary. The reused local file's blob is `930cad7ce9c6b64663bf02bfa0745919fffdbcc6`. Its evidence status is not promoted by import.

Dropping nonvanishing is invalid: u(z)=z-c gives order three. Consumer: collision multiplicity of an actually factored source. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [powered-collision record](source_order_at_powered_collision.md) gives source digest, full comparison and build command. Classification: local consequence of existing analytic-order calculus.

Elaboration, kernel replay, transitive axiom audit and independent review: **NOT_RUN**. No arithmetic factorization or novelty is asserted. Coordination: grwtsk/math#1809.
