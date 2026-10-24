# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZeta.Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5650b242d836d9e8d909044b5b0eea7e715fc0ad",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5650b242d836d9e8d909044b5b0eea7e715fc0ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.HurwitzZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeriesComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completedRiemannZeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta--1c9920685ec30d0f7003bc02.md) | 59 | `declaration-track:1c9920685ec30d0f7003bc02390adc17549850d314163350c1a769d30bbfa884` |
| 2 | `def` | [completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta--9dba2bab7c0b92e0a446b7d4.md) | 63 | `declaration-track:9dba2bab7c0b92e0a446b7d4629169e5fa775a1b648904a17ad4b9a1b4c18ec2` |
| 3 | `lemma` | [HurwitzZeta.completedHurwitzZetaEven_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-completedhurwitzzetaeven-zero--23674ae5a2d30fbc07f2fbf5.md) | 65 | `result-track:23674ae5a2d30fbc07f2fbf53c4e86f92fe85d245ab1fac1b0de048deee68142` |
| 4 | `lemma` | [HurwitzZeta.completedHurwitzZetaEven₀_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-completedhurwitzzetaeven-zero--4259b10977ad95f8148af249.md) | 68 | `result-track:4259b10977ad95f8148af2492a71de719f4b76b3a006df1a8e22b736092506c1` |
| 5 | `lemma` | [HurwitzZeta.completedCosZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-completedcoszeta-zero--97a583cda577b579a5e3a5a2.md) | 71 | `result-track:97a583cda577b579a5e3a5a2dc6a2fe1984987f0c33bbaa07ca0aa886f3b2f2d` |
| 6 | `lemma` | [HurwitzZeta.completedCosZeta₀_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-completedcoszeta-zero--af77227f8f45128db30e6ab0.md) | 75 | `result-track:af77227f8f45128db30e6ab0adc0574867a169dd6f72caf2a52dfbfae6033db9` |
| 7 | `lemma` | [completedRiemannZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta-eq--354a8b289174fb93f52a1998.md) | 80 | `result-track:354a8b289174fb93f52a199835db538527f4ce795a6d777c8f2a670912b448ed` |
| 8 | `theorem` | [differentiable_completedZeta₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/differentiable-completedzeta--8e989be2082c25ebdb387013.md) | 85 | `result-track:8e989be2082c25ebdb38701372cc2f4751d087f891826a76e3dd35d545f7666e` |
| 9 | `theorem` | [differentiableAt_completedZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/differentiableat-completedzeta--6bbb283a96c0a9e01afc1046.md) | 89 | `result-track:6bbb283a96c0a9e01afc10466e5184121e79f227c0a1457455a08960d910948b` |
| 10 | `theorem` | [completedRiemannZeta₀_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta-one-sub--285a1f841f6356186a78d328.md) | 95 | `result-track:285a1f841f6356186a78d32841d1e38064bd73ffe353b57c96a3cc0392d84724` |
| 11 | `theorem` | [completedRiemannZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta-one-sub--ad5f29539ef315e06ff8a168.md) | 101 | `result-track:ad5f29539ef315e06ff8a16879e368a4fd3e77528d8dd7702ba6222e7e15e655` |
| 12 | `lemma` | [completedRiemannZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedriemannzeta-residue-one--8a8f4c459e3409118ba5b037.md) | 106 | `result-track:8a8f4c459e3409118ba5b0377033775dc7f17d7733d721628a8274bb48195a61` |
| 13 | `def` | [riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta--1373cd31d5c83ac8aac6bc11.md) | 115 | `declaration-track:1373cd31d5c83ac8aac6bc1193ee53ce42a364105233590ea097fca0b330cf66` |
| 14 | `lemma` | [HurwitzZeta.hurwitzZetaEven_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-hurwitzzetaeven-zero--d33f1aa9025c4f27044504aa.md) | 117 | `result-track:d33f1aa9025c4f27044504aa83b002047f47e4db78438c8e64784be10408209c` |
| 15 | `lemma` | [HurwitzZeta.cosZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-coszeta-zero--7f3847c3041ca921e9a1e911.md) | 119 | `result-track:7f3847c3041ca921e9a1e911191391bde76b77d7e6811c9d960e0cfd15b4493d` |
| 16 | `lemma` | [HurwitzZeta.hurwitzZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-hurwitzzeta-zero--8bfc83f334a03bcddddb4335.md) | 123 | `result-track:8bfc83f334a03bcddddb43353d88b55549451afd0af5d19cd70c35c3604c82b4` |
| 17 | `lemma` | [HurwitzZeta.expZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/hurwitzzeta-expzeta-zero--3c2527fe1d44a9f09d10caf1.md) | 127 | `result-track:3c2527fe1d44a9f09d10caf1a9554152d80660a496f45e9bf1303e386257dfdb` |
| 18 | `theorem` | [differentiableAt_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/differentiableat-riemannzeta--31138d2c330062b39be1df95.md) | 133 | `result-track:31138d2c330062b39be1df95c8585a660dc52724d6d7edb895422f129837ec60` |
| 19 | `theorem` | [riemannZeta_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta-zero--695da4fbc3dc93c684b76e03.md) | 137 | `result-track:695da4fbc3dc93c684b76e03756e4434fdb222b7f09cb0d38ef541f35f08f133` |
| 20 | `lemma` | [riemannZeta_def_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta-def-of-ne-zero--769b9a9ee7422ebeaed74cd6.md) | 140 | `result-track:769b9a9ee7422ebeaed74cd6fd2778d04559dbf87b971059f6825148f4beb2dd` |
| 21 | `theorem` | [riemannZeta_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta-neg-two-mul-nat-add-one--ac35236656f873f101f015a7.md) | 145 | `result-track:ac35236656f873f101f015a7e65c8daae7772d437102a55c21df753c4e4c23aa` |
| 22 | `theorem` | [riemannZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta-one-sub--02a0c2cd21a3041bd84036ad.md) | 150 | `result-track:02a0c2cd21a3041bd84036adb82270a457639f6534e8eb65e6bfe4b09e82730d` |
| 23 | `def` | [RiemannHypothesis](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannhypothesis--8132a36549e84ee63943ba74.md) | 156 | `declaration-track:8132a36549e84ee63943ba74a1a36a5b9d1c409683b2ce4ff8ea3646d4b28809` |
| 24 | `theorem` | [completedZeta_eq_tsum_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/completedzeta-eq-tsum-of-one-lt-re--c58700c5a2d59082a2ab3e88.md) | 163 | `result-track:c58700c5a2d59082a2ab3e88f85697879ef6a780aa0d473aa00b054d9d765607` |
| 25 | `theorem` | [zeta_eq_tsum_one_div_nat_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/zeta-eq-tsum-one-div-nat-cpow--90560dcd105c34f0f88ff80a.md) | 178 | `result-track:90560dcd105c34f0f88ff80a624e626dd3ad7154151d371592b37403b13b3eaf` |
| 26 | `theorem` | [zeta_eq_tsum_one_div_nat_add_one_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/zeta-eq-tsum-one-div-nat-add-one-cpow--f472dc6a336b199ad7802d27.md) | 185 | `result-track:f472dc6a336b199ad7802d273e839cf4e2f1f678111a95d5e105c3e160f80512` |
| 27 | `theorem` | [zeta_nat_eq_tsum_of_gt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/zeta-nat-eq-tsum-of-gt-one--f97bcb30287166daafd1f4cd.md) | 194 | `result-track:f97bcb30287166daafd1f4cd5147f6cb57191acc644e47b8a7e8855144de78d5` |
| 28 | `lemma` | [riemannZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/riemannzeta-residue-one--c77dc78a6ee25d684ea2f94c.md) | 201 | `result-track:c77dc78a6ee25d684ea2f94c03588194c1f790102fec34728be72b8fc95baafa` |
| 29 | `theorem` | [tendsto_sub_mul_tsum_nat_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/tendsto-sub-mul-tsum-nat-cpow--997011b5d9b581dfe91df3d1.md) | 205 | `result-track:997011b5d9b581dfe91df3d1637673f2f55ec457e80af97df966a0218651bcfd` |
| 30 | `theorem` | [tendsto_sub_mul_tsum_nat_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/declarations/tendsto-sub-mul-tsum-nat-rpow--a597fb32c790fee3efd47ea1.md) | 214 | `result-track:a597fb32c790fee3efd47ea1043bc1f266b81ef5686e19220367ed551b7d600e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
