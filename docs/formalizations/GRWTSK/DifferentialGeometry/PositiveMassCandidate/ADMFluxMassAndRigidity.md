# `PositiveMass.mass_nonneg`: individual source record

Local attribution: **grwtsk contributors**. Formal-source candidate, **not a verified positive mass proof**.

- **Paper locator:** Bray, Kazaras, Khuri, Stern, arXiv:1911.06754v1, Theorem 1.1 positive-mass clause; Theorem 1.2/equation (1.3) is the paper's harmonic lower-bound route. [Primary edition](https://arxiv.org/abs/1911.06754). The source proof is a local coordinate/cylindrical candidate; exact correspondence is NOT_RUN.
- **Canonical source:** `GRWTSK/DifferentialGeometry/PositiveMassCandidate/ADMFluxMassAndRigidity.lean`, Git blob `7936505c8ebc71151b9676f804a32b5ea724e037`, original lines 260138–280133. Fully qualified declaration: `PositiveMass.mass_nonneg` (original line 261406).
- **Typed statement:** `g : RiemannianMetric3 M`, `g.IsCompleteRiemannian`, `hAF : AsymptoticallyFlat g`, `0 ≤ g.scalarCurvature p` for all `p`, an actual end `k : Fin hAF.numEnds`, `m : ℝ`, and the exact `Tendsto (admFlux g (hAF.ends k)) atTop (𝓝 m)` imply `0 ≤ m`.
- **Consumer:** `PositiveMass.positive_mass`; `PositiveMass.mass_zero_ricci_flat` later uses this result in a conformal mass-decrease contradiction. The proof must retain the same end, radial mass normalization, scalar-curvature sign and asymptotic domain. A pointwise cylinder sign estimate is not by itself this theorem.
- **Potential mismatch:** `AsymptoticallyFlat` permits syntactic `numEnds = 0`; the theorem requires an actual `k`, so it cannot cover a nonempty end without a proved existence input. The custom `IsCompleteRiemannian`/curvature structures must be compared with paper and Mathlib.
- **Evidence:** 15-stage source reconstruction and Git blob identity **PASS**; Lean elaboration, kernel replay, transitive axiom audit, independent mathematical review **NOT_RUN**. [#1829](https://github.com/grwtsk/math/issues/1829).
