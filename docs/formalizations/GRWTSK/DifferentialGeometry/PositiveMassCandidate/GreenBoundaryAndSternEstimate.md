# `PositiveMass.stern_harmonic_cylinder_bound`: individual source record

Local attribution: **grwtsk contributors**. **Conditional/auxiliary correspondence, NOT_RUN.**

- **Paper:** Bray–Kazaras–Khuri–Stern, arXiv:1911.06754v1, Theorem 1.2 / equation (1.3), §1–§4, and the Stern level-set formula discussed in the introduction. [Primary arXiv edition](https://arxiv.org/abs/1911.06754). The source is not a direct statement of paper Theorem 1.2 and no new proof identity is assumed.
- **Source declaration:** `PositiveMass.stern_harmonic_cylinder_bound`, in `GRWTSK/DifferentialGeometry/PositiveMassCandidate/GreenBoundaryAndSternEstimate.lean`, Git blob `4a42325dcab95f78ff5d9b5285da024f467e3026`, original line 256558.
- **Exact conclusion shape:** given a complete connected asymptotically flat 3-manifold `g`, globally nonnegative custom scalar curvature and a selected end `k`, it produces a coordinate change `CoordChange X Y ...` with a harmonic gauge contraction of the pulled-back metric and eventual nonnegativity of the source-defined `sternBoundary` at all sufficiently large cylinder lengths.
- **Comparison:** The paper's bound is `m ≥ (16π)⁻¹ ∫ (|Hess u|²/|grad u| + R_g |grad u|) dV` on an exterior region with harmonic linear-growth `u` and Neumann data. The submitted theorem is a cylindrical-boundary nonnegativity step, **not** that same bulk inequality. A source-exact derivation of boundary terms, scalar curvature, Hessian normalization, critical sets, and limits remains an independent review obligation.
- **Consumer:** `PositiveMass.mass_nonneg` later calls this Stern/cylinder machinery. Do not promote to the full paper theorem by name similarity.
- **Verification:** full source byte-slice reconstruction **PASS**; Lean elaboration, kernel checking, axiom audit, independent paper comparison **NOT_RUN**. Linked issue: [#1829](https://github.com/grwtsk/math/issues/1829).
