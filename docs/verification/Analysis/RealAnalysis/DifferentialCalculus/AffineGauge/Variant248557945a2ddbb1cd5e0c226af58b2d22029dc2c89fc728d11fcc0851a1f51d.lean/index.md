# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineGauge.Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4ebfee10bcc9b5421ffc3844da996c1ed8bf9c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4ebfee10bcc9b5421ffc3844da996c1ed8bf9c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AnalyticDispersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Const` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineGauge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge--4193f20047d6497cb0915571.md) | 51 | `declaration-track:4193f20047d6497cb09155715ca65a4eb0f415c8baece31b66c43aacfb689032` |
| 2 | `theorem` | [affineGauge_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-potential--6691e28309a825f277ce4577.md) | 73 | `result-track:6691e28309a825f277ce45779b1e7386bb0d7009912a225903dfdf5b3f387e6b` |
| 3 | `theorem` | [affineGauge_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-gradient--721ec17e75056f2301524b37.md) | 80 | `result-track:721ec17e75056f2301524b37861fe4fe65e81434c42abe302dc624eb5399add0` |
| 4 | `theorem` | [affineGauge_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-hessian--624d43a0483dd3e8e9fc05b2.md) | 87 | `result-track:624d43a0483dd3e8e9fc05b2c317708e8012d1e4cb6a9b53b44f397de6a6f105` |
| 5 | `theorem` | [affineGauge_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-dispersion--1ecb0aea1d9a8982f5d12981.md) | 93 | `result-track:1ecb0aea1d9a8982f5d12981eab5acd6d535bf02b25129f494013e87a407ea55` |
| 6 | `theorem` | [affineGauge_potential_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-potential-sub--1f06936762c4a0694a4ce7b9.md) | 99 | `result-track:1f06936762c4a0694a4ce7b92ac71993b85a41f74ed24de7a1b0b0d772e7e18e` |
| 7 | `theorem` | [affineGauge_gradient_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-gradient-sub--b493d1154439258751cb499c.md) | 107 | `result-track:b493d1154439258751cb499c1c0e7bc59a3b00e63df8041d32fa9d2af1ee9628` |
| 8 | `theorem` | [fderiv_affineGauge_potential_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/fderiv-affinegauge-potential-eq--10a616d2de779b77c610c6f5.md) | 115 | `result-track:10a616d2de779b77c610c6f5b756751f681d0b5c9463545895befc53291ee7d8` |
| 9 | `theorem` | [fderiv_affineGauge_gradient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/fderiv-affinegauge-gradient-eq--8481b762d9caa2f57ee62a1b.md) | 123 | `result-track:8481b762d9caa2f57ee62a1bed00db2d96e2cd3f2e977c2350d50cecc802725f` |
| 10 | `theorem` | [affineGauge_geometryAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-geometryat--3946b772eb7ffaa5c3bbca75.md) | 131 | `result-track:3946b772eb7ffaa5c3bbca7569312814bf220a59148a86c337940ffe932100e7` |
| 11 | `theorem` | [affineGauge_hessian_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-hessian-quadratic--e0bc94fab39275a7381e6f43.md) | 137 | `result-track:e0bc94fab39275a7381e6f4372811ead74781b08be9be34d7c2ee9bf6c5ad0ae` |
| 12 | `theorem` | [affineGauge_visible_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-visible-iff--d4aa265d34e606dade82152a.md) | 144 | `result-track:d4aa265d34e606dade82152a50a7e699e9fec938c99661d9b10826a4c2a6e296` |
| 13 | `theorem` | [affineGauge_isNull_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-isnull-iff--adc87adc63aa4c9fc0b75d82.md) | 151 | `result-track:adc87adc63aa4c9fc0b75d82e619e31ba0bb8b3172d05f532c6d2ad73523a5bf` |
| 14 | `def` | [SameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/samedispersiongeometry--9f5867f4634a48442f848dfe.md) | 159 | `declaration-track:9f5867f4634a48442f848dfefeabf3e609d95bb7491f05495213450fb15bef60` |
| 15 | `theorem` | [SameDispersionGeometry.refl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/samedispersiongeometry-refl--c0446758c419ba129d48dedf.md) | 163 | `result-track:c0446758c419ba129d48dedf633e3cd36bb6cdfb2dc73c679eccb5abbdc91e37` |
| 16 | `theorem` | [SameDispersionGeometry.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/samedispersiongeometry-symm--8dc2788f11a755e7d5d1dc56.md) | 169 | `result-track:8dc2788f11a755e7d5d1dc5649005e45324777948a7a6b990a71027071f94c0b` |
| 17 | `theorem` | [SameDispersionGeometry.trans](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/samedispersiongeometry-trans--06806084bf13197739fb2133.md) | 176 | `result-track:06806084bf13197739fb2133199ab47f486489422a14230a98bce47068c2bdd3` |
| 18 | `theorem` | [affineGauge_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-samedispersiongeometry--edd320b8d3113bcb54ba5d3e.md) | 185 | `result-track:edd320b8d3113bcb54ba5d3e31d21bd162862112ca7e730585ef3629d3b9810e` |
| 19 | `theorem` | [ofAffineGauge_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/ofaffinegauge-eq--d0a443199f32674734c6b4f0.md) | 204 | `result-track:d0a443199f32674734c6b4f0671802316da86c6f6d8e0dc25ead179d69441c5d` |
| 20 | `theorem` | [affineGauge_three_phase_energy_chain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d.lean/declarations/affinegauge-three-phase-energy-chain--5128994dd5fb5ed19298474c.md) | 218 | `result-track:5128994dd5fb5ed19298474c226b3a3b745f559d282f22142aa1eed76fab4aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
