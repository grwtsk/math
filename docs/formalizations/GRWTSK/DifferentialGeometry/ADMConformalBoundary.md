# `conformalCoordinateDensity_eq`: conformal ADM boundary contraction

Local source attribution: **grwtsk contributors**. Status: **formal-source candidate; Lean checks NOT_RUN**.

## Exact paper-to-declaration correspondence

- **Paper:** Hubert L. Bray, Demetre P. Kazaras, Marcus A. Khuri, Daniel L. Stern, *Harmonic Functions and The Mass of 3-Dimensional Asymptotically Flat Riemannian Manifolds*, arXiv **1911.06754v1** (15 November 2019), [versioned HTML](https://arxiv.org/html/1911.06754); journal publication: *Journal of Geometric Analysis* **32** (2022), article 184, DOI [10.1007/s12220-022-00924-0](https://doi.org/10.1007/s12220-022-00924-0). This entry compares with the arXiv v1 text, **not** a separately checked journal edition.
- **Exact locator:** §1, **equation (1.2)**, the ADM coordinate-sphere flux involving the signed combination `∑ᵢ(gᵢⱼ,ᵢ − gᵢᵢ,ⱼ)νʲ`. Theorems **1.1** and **1.2** and equation **(1.3)** motivate the subsequent geometric analysis, but **are not formalized by this file**.
- **Canonical Lean file:** [`GRWTSK/DifferentialGeometry/ADMConformalBoundary.lean`](../../../../GRWTSK/DifferentialGeometry/ADMConformalBoundary.lean), source Git blob `f4dfc13206098535285c9e6f2b628f93e551b536`, at issue [#1829](https://github.com/grwtsk/math/issues/1829). The issue binds this blob to its eventual publication commit on `main`.
- **Declaration:** `GRWTSK.DifferentialGeometry.ADMConformalBoundary.conformalCoordinateDensity_eq`; helper definition `conformalCoordinateDensity`.
- **Supplemental supplied source:** `answer (1).lean`, SHA-256 `1c27cbf86c0f25ac7957687508f63dc0a6b9d48d1b4df14c98b821e61f6b1747` (15,647,217 bytes). Its `PositiveMass.positive_mass` proof candidate is **not** imported, adapted, or independently verified.

## Exact scope

For arbitrary real coordinate-derivative values `dφ : Fin 3 → ℝ` and normal components `ν : Fin 3 → ℝ`, the conformal metric `gᵢⱼ = φ δᵢⱼ` has the **pointwise finite-index contraction**
```text
Σⱼ (Σᵢ δᵢⱼ (dφ)ᵢ − Σᵢ (dφ)ⱼ) νⱼ = −2 Σⱼ (dφ)ⱼ νⱼ.
```
The local proof is a three-index expansion and ring identity. It specializes only the algebra of equation (1.2). It makes no assertion about differentiated matrix fields, the actual end chart, Euclidean sphere measure, `1/(16π)` normalization, the radial limit, existence of mass, curvature, harmonicity or rigidity. The conditional sign when the outward derivative is nonpositive is **not** a general positive mass theorem: choose the opposite sign to obtain negative density.

## Mathematical consumer and first unresolved steps

1. Prove equality between this finite contraction and the **actual** `partialDeriv` expression on a conformal `RiemannianMetric3` end, then the sphere integration and the `r → ∞` flux normalization; verify Schwarzschild conformal asymptotics. This is the first source-interface obligation.
2. Recover the geometric full-metric ADM boundary flux, with chart independence, asymptotic decay `q > 1/2`, `R_g ∈ L¹`, and complete exterior geometry.
3. Prove the **harmonic level-set lower bound** in BKKS Theorem 1.2 / equation (1.3), including harmonic-function existence, Neumann data, boundary terms, critical sets, the nonnegative Hessian integral, scalar-curvature contribution, and zero-mass rigidity; compare Witten and Schoen–Yau as distinct mechanisms, not as substitutes.
4. **No RH/GRH transfer is supplied.** A bridge from geometric mass to the exact arithmetic Weil form would have to preserve original tests, the pole-inclusive expression, all prime powers, character phases, conductor, gamma/parity corrections, multiplicities and every quantified window, and return to the actual zeta/Dirichlet source. Similar positivity structures are not such a theorem.

## Verification and build boundary

Observed `grwtsk/math/main` toolchain `leanprover/lean4:v4.34.1`, root Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`. This isolated candidate does **not** change `GRWTSK.lean` root imports, dependencies, upstream adaptations or the pinned toolchain.

- Static source review, arithmetic identity on paper, issue coordination: **DONE** (not a Lean proof observation).
- Lean elaboration, mathlib full import closure, kernel replay, transitive axiom audit, theorem statement correspondence and independent proof review: **NOT_RUN**.
- Full positive mass theorem, asymptotic mass convergence, geometric rigidity, any RH/GRH consequence: **UNPROVED BY THIS MODULE**.

Publication of the file records only a source candidate. Neither absence of visible `sorry` in the uploaded text nor a Git commit establishes its kernel correctness.
