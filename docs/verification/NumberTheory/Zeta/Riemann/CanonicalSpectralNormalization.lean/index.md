# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc59b787c0a9b13408410e8aeff6f22e70811e46",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc59b787c0a9b13408410e8aeff6f22e70811e46`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stageEnergy_div_sqrt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/stageenergy-div-sqrt--607eb7d7d29d3178f0796885.md) | 41 | `result-track:607eb7d7d29d3178f07968850b4460b9b7c388660893cd9ebb32c672cc6ca00a` |
| 2 | `def` | [canonicalRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/canonicalradius--0289708cb92851727ee07b9e.md) | 63 | `declaration-track:0289708cb92851727ee07b9ea94ab6d7f25d4dc955878dc7f0e4000eb4e36558` |
| 3 | `theorem` | [canonicalRadius_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/canonicalradius-pos--f9449426739b7aa211f02195.md) | 66 | `result-track:f9449426739b7aa211f02195154af439b522d963f13c7f98b61bb95b77419b43` |
| 4 | `def` | [radiusNormalizedAmplitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/radiusnormalizedamplitude--38aa8dda60d2ae5169344052.md) | 72 | `declaration-track:38aa8dda60d2ae5169344052c3ccd359d9dea5cbce3197edabf79c4f7572af28` |
| 5 | `def` | [radiusNormalizedCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/radiusnormalizedcorrection--dcece6bb9ce19e7db6b97cb1.md) | 76 | `declaration-track:dcece6bb9ce19e7db6b97cb1cf542d40621dc9e92eb37347a7331b0d80f14e85` |
| 6 | `theorem` | [radiusNormalizedStageEnergy_eq_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/radiusnormalizedstageenergy-eq-correction--0c159ce976d7caecc60ca08f.md) | 80 | `result-track:0c159ce976d7caecc60ca08f736bcbd346f5e915e4b758a7ddd75dcea9fde7b0` |
| 7 | `theorem` | [radiusNormalizedCorrection_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/radiusnormalizedcorrection-nonneg--e34ddcf17b90d5b9a8cf7256.md) | 90 | `result-track:e34ddcf17b90d5b9a8cf7256d2c952250d8211aff40613e058750ee8b4eae23e` |
| 8 | `theorem` | [CanonicalQuarticComparison.rawCorrection_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/canonicalquarticcomparison-rawcorrection-tendsto--736a9f53c592419cf5b6b123.md) | 100 | `result-track:736a9f53c592419cf5b6b1237e5c56b578e584b8724fa948289f9d8f49177482` |
| 9 | `structure` | [RadiusNormalizedQuarticComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/radiusnormalizedquarticcomparison--eaced3113cb73a533d2fea70.md) | 111 | `declaration-track:eaced3113cb73a533d2fea7091ce213bcf5fbc415bf9fc07496796e1ae9912ef` |
| 10 | `def` | [toQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/toquarticextraction--9076dc35390e7c9373546721.md) | 126 | `declaration-track:9076dc35390e7c93735467214bcbd8a776d4f3fa7d679073ca8e8f89aafe072a` |
| 11 | `theorem` | [horizontal_displacement_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/horizontal-displacement-eq-zero--2ccc8c4337d054170c6b8f76.md) | 144 | `result-track:2ccc8c4337d054170c6b8f7642e89c711ada0114eb026f1dfc76fabb2c4d2f1a` |
| 12 | `theorem` | [normalizedCorrection_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/normalizedcorrection-tendsto--38aaccb6b92e534f72a4986c.md) | 152 | `result-track:38aaccb6b92e534f72a4986cff70c87ae6ffb1b341f6167c9978917c411afe84` |
| 13 | `theorem` | [riemannHypothesis_of_radiusNormalizedSpectralComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/declarations/riemannhypothesis-of-radiusnormalizedspectralcomparison--b3060442f38f08e02a29b0c5.md) | 164 | `result-track:b3060442f38f08e02a29b0c50a5c1e0917adc1c1b59ff01a4a46636ef553a8e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
