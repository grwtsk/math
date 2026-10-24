# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Power.Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95db464756104328cd73f6318dd557bf13bcef98",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95db464756104328cd73f6318dd557bf13bcef98`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Sphere` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Similarity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_norm_eq_abs_sub_sq_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-norm-eq-abs-sub-sq-norm--f90e115a6a053494d7c08162.md) | 52 | `result-track:f90e115a6a053494d7c08162d76c2ca7a445d02ac2929ee2b9b93c55f7d02f5f` |
| 2 | `theorem` | [mul_dist_eq_abs_sub_sq_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-abs-sub-sq-dist--5b387d8dab01e216cbacc538.md) | 86 | `result-track:5b387d8dab01e216cbacc5382b97ceea1aef25d6b4dcd3bb44e9287d2a4eb8b4` |
| 3 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-mul-dist-of-cospherical--84b67abb2df1b3e7074bd025.md) | 110 | `result-track:84b67abb2df1b3e7074bd025c23201229ddce78aaa7f61c0aa14b59ed0d9029a` |
| 4 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-pi--533b9675ce03fc2c9e8708ff.md) | 120 | `result-track:533b9675ce03fc2c9e8708ff29638a42ece0755443105f23b631c30112d87da7` |
| 5 | `lemma` | [cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi-aux--be4f7de30a89d62ed860f135.md) | 126 | `result-track:be4f7de30a89d62ed860f135786cafcdb86a1b7732c01f3bc9b6a213ebd03b57` |
| 6 | `theorem` | [cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi--e993e484022e080b7258f22f.md) | 169 | `result-track:e993e484022e080b7258f22fe9cb4526ae8c56043a31182c5858f4c394e5bb24` |
| 7 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-zero--7a9c0665c40132640183c590.md) | 210 | `result-track:7a9c0665c40132640183c590e5a8ce29e55b14b6ad8b026ad822a73b15931d4e` |
| 8 | `def` | [power](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power--e4e7f97937caddeda0ea8fab.md) | 225 | `declaration-track:e4e7f97937caddeda0ea8fab3ec09ca728a3951b01080fbf8a5ff1bd07eab7c9` |
| 9 | `theorem` | [power_eq_zero_iff_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power-eq-zero-iff-mem-sphere--70df9d84e69b949b4c14aed7.md) | 230 | `result-track:70df9d84e69b949b4c14aed75a2ad52c5ff6c209a358126aa145b3ce22f47cbd` |
| 10 | `theorem` | [power_pos_iff_radius_lt_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power-pos-iff-radius-lt-dist-center--547c2976d7e4bd81f0f60c42.md) | 235 | `result-track:547c2976d7e4bd81f0f60c42598934460cc6e13160d61579896ac17ff18fa386` |
| 11 | `theorem` | [power_neg_iff_dist_center_lt_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power-neg-iff-dist-center-lt-radius--1eb204d1891e7078f4dd780e.md) | 240 | `result-track:1eb204d1891e7078f4dd780ee3c3a52ebbfa1da3c1cadb21c14d638abfbf37ed` |
| 12 | `theorem` | [power_nonneg_iff_radius_le_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power-nonneg-iff-radius-le-dist-center--11c0299429cf776d365c2681.md) | 245 | `result-track:11c0299429cf776d365c26814c82667b8319e3412b4c6448b9b42b157c324203` |
| 13 | `theorem` | [power_nonpos_iff_dist_center_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/power-nonpos-iff-dist-center-le-radius--d3f09d18aa04c2c796326085.md) | 250 | `result-track:d3f09d18aa04c2c7963260854128bf1a6a6f21a5b7ec7a04deb8885156cb0945` |
| 14 | `theorem` | [mul_dist_eq_abs_power](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-abs-power--acc792835479415715e10e4f.md) | 256 | `result-track:acc792835479415715e10e4fcdeb4dfc31dee1ff79c3c44b83c0636619675311` |
| 15 | `theorem` | [mul_dist_eq_zero_of_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-zero-of-mem-sphere--8009f27c4578d877b7f5cad8.md) | 267 | `result-track:8009f27c4578d877b7f5cad848b2a90b8f34f5d061a53a8d2171100f284be604` |
| 16 | `theorem` | [mul_dist_eq_power_of_radius_le_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-power-of-radius-le-dist-center--519d09988dff9d8f3e6d0f54.md) | 279 | `result-track:519d09988dff9d8f3e6d0f545756a38b2d48a755992f951ccc73775ff8556eb9` |
| 17 | `theorem` | [mul_dist_eq_neg_power_of_dist_center_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/mul-dist-eq-neg-power-of-dist-center-le-radius--c4661b95fdcc4dc140f7b1cb.md) | 290 | `result-track:c4661b95fdcc4dc140f7b1cb46da1683ebdbc14dbecd8148fce408b83d04a4b5` |
| 18 | `theorem` | [dist_sq_eq_mul_dist_of_tangent_and_secant](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/dist-sq-eq-mul-dist-of-tangent-and-secant--981ef6e2ae61d96bdc9b1d50.md) | 301 | `result-track:981ef6e2ae61d96bdc9b1d50bbddcc6ab2c61a5eaf9c742affc3f9ddf7ef3f49` |
| 19 | `theorem` | [IsTangentAt.power_eq_dist_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/istangentat-power-eq-dist-sq--933885fb024c66595814bbe3.md) | 313 | `result-track:933885fb024c66595814bbe35f4ccdef27268a11ff0c8a601488527732a68820` |
| 20 | `theorem` | [isTangentAt_iff_dist_sq_eq_power](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/declarations/istangentat-iff-dist-sq-eq-power--61e3c8bf131380c64389e033.md) | 321 | `result-track:61e3c8bf131380c64389e03379e5a313c29ad14fe5c66904973f6637a47b624e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
