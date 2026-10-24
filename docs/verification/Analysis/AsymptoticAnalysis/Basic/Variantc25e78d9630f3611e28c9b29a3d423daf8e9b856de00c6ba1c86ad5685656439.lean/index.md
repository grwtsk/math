# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a24ca12aacb0046d88f1c342ed5bc15e0e7118",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a24ca12aacb0046d88f1c342ed5bc15e0e7118`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pmf.](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/pmf--679112c03a43cd5cd88bd164.md) | 43 | `declaration-track:679112c03a43cd5cd88bd164680632888dae832c352ca068336608e96305b731` |
| 2 | `instance` | [funLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/funlike--856c08f4a52211b47e54e6e7.md) | 49 | `declaration-track:856c08f4a52211b47e54e6e74b678910426a80c9558ada701b3fe9547a11b269` |
| 3 | `theorem` | [ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/ext--33e39b04389883147215827d.md) | 55 | `result-track:33e39b04389883147215827d3d58eeb80051f31dda587d1cae5d46ddb3d82ce8` |
| 4 | `theorem` | [ext_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/ext-iff--e48892013d5917412bc08d80.md) | 59 | `result-track:e48892013d5917412bc08d809cadf05efb7c22494a713d45766a635920add172` |
| 5 | `theorem` | [hasSum_coe_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/hassum-coe-one--373153b9498730e07cfbcafc.md) | 63 | `result-track:373153b9498730e07cfbcafc9c5074abb817a7c7108a0425b77900fb610c02b0` |
| 6 | `theorem` | [tsum_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tsum-coe--e4a6843300f0703aba6e86bc.md) | 68 | `result-track:e4a6843300f0703aba6e86bca4469b6e7f3f51f549963c0ce031180a31d0c681` |
| 7 | `theorem` | [tsum_coe_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tsum-coe-ne-top--15247954511686ca5e313632.md) | 72 | `result-track:15247954511686ca5e313632dead6ee779d7df0e2a0e586180b70de111989581` |
| 8 | `theorem` | [tsum_coe_indicator_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tsum-coe-indicator-ne-top--648c4ff6d9c1d19e7da94717.md) | 76 | `result-track:648c4ff6d9c1d19e7da947173036743085335a14e13f35d6074332f37e7ff77f` |
| 9 | `theorem` | [coe_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/coe-ne-zero--e906c3957cb6f06972cf24d7.md) | 84 | `result-track:e906c3957cb6f06972cf24d7a5393eba5e9675673c1f438365c17ca7d5be06bb` |
| 10 | `def` | [support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/support--4d7a0602d10fa66ba9b2c8a0.md) | 89 | `declaration-track:4d7a0602d10fa66ba9b2c8a06316559e5b2c71ea2beba58fb0b67abe87e89771` |
| 11 | `theorem` | [mem_support_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/mem-support-iff--da9793aa34dc86f48890f321.md) | 94 | `result-track:da9793aa34dc86f48890f321da33ed838ee468fe1ecb5e3b2d7c54ec300b6eb8` |
| 12 | `theorem` | [support_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/support-nonempty--0f9b9a17b20993815ac61aa5.md) | 98 | `result-track:0f9b9a17b20993815ac61aa5d4b0fc5e186a43cb59cae4391d03be7f7a4a3c80` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/apply-eq-zero-iff--6cb3f4d6e64e1b428be36beb.md) | 102 | `result-track:6cb3f4d6e64e1b428be36beb1fab381aead568ec724059cac6dd2df7d38dd7fa` |
| 14 | `theorem` | [apply_pos_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/apply-pos-iff--7f19c755819acf3b9141fb7c.md) | 106 | `result-track:7f19c755819acf3b9141fb7c0064e950835aff3b304ec5eeb87613e41fbdbfc7` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/apply-eq-one-iff--94654d9cb5b274f3549f2595.md) | 110 | `result-track:94654d9cb5b274f3549f2595998186176caf6e1628617b2176e8b968862621cc` |
| 16 | `theorem` | [coe_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/coe-le-one--133c68cc3e64c2a74e940150.md) | 132 | `result-track:133c68cc3e64c2a74e940150843411d6ae52a3fec8f46d9f30f286718c6ec7de` |
| 17 | `theorem` | [apply_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/apply-ne-top--cdc4ac41c4f4e88f8667d8a7.md) | 137 | `result-track:cdc4ac41c4f4e88f8667d8a731ec33c53a0453dc9d48dd9f20d68074936bef9d` |
| 18 | `theorem` | [apply_lt_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/apply-lt-top--9f72a3adc36423eef27ce274.md) | 141 | `result-track:9f72a3adc36423eef27ce274860fbd3f42df38bb2ec47d0d0d30e3ccc01776e0` |
| 19 | `def` | [toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure--322e59058e9821f00184393e.md) | 151 | `declaration-track:322e59058e9821f00184393e5e11b6f03dd6785580531d2aae46875b47ea51b3` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply--363691587faab98879ab02ee.md) | 157 | `result-track:363691587faab98879ab02ee5035045fb07a211479ec5d27bc0ac16b20a77af1` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-caratheodory--3a3820566fcde3805ee3433f.md) | 162 | `result-track:3a3820566fcde3805ee3433f20baf7d9fabe66c49f152e3f16c2ec0601083c6f` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-finset--1397e19e8e1e633211437cbc.md) | 170 | `result-track:1397e19e8e1e633211437cbcafe4dd104731c367da8d74dbf7f9e68e4af49a42` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-singleton--b3e0743cab6f6f66bc053d02.md) | 176 | `result-track:b3e0743cab6f6f66bc053d02e1402c5197fe405e95c13cf7bcdb8708a3ef96f4` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-injective--f31ed89a477a9764dda474df.md) | 182 | `result-track:f31ed89a477a9764dda474dfd3da8a5b2f2b371530b3a6c39ced350c8b1a1734` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-inj--5ac4cb79b64917eedeb4ade1.md) | 188 | `result-track:5ac4cb79b64917eedeb4ade132eb3941df3982546985b66399d5a311267444ab` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-eq-zero-iff--d76e57243eae453942a497c4.md) | 192 | `result-track:d76e57243eae453942a497c477a512ac779a109298d4d0b5f9a10a223a2a797c` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-eq-one-iff--81ccf990903a1bd03b75e352.md) | 197 | `result-track:81ccf990903a1bd03b75e3529a1f9e83aa33c2585a376f2140b6c77742fd74bc` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-inter-support--4ef2503eea16f3d2e8bd1460.md) | 211 | `result-track:4ef2503eea16f3d2e8bd1460776892b226e695e05e0856374556b72faa07e116` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-mono--750ebded047896c26abc2bfb.md) | 217 | `result-track:750ebded047896c26abc2bfb0dd88325b97fef42ac435ee00f0513595f0933b6` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq--82e79c01299321273efd5fb3.md) | 222 | `result-track:82e79c01299321273efd5fb3532ee9e0565305d461441651ac2ac44d3a262ecb` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-fintype--49463adb3a278c6bd2818ca1.md) | 229 | `result-track:49463adb3a278c6bd2818ca1865eafc2f0f057d919db56ea3db53f42a732ac6a` |
| 32 | `def` | [toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure--966258b94a7eaaf0e1d3ff0f.md) | 241 | `declaration-track:966258b94a7eaaf0e1d3ff0f796d8e47cfe5477d631c1431754aca0cf2266856` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tooutermeasure-apply-le-tomeasure-apply--5e72a7ab440d45a12cef8252.md) | 247 | `result-track:5e72a7ab440d45a12cef8252d76965c4e47a7f5c290ed115fd3cb9b8e7c639e2` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply--c9bb746c1a38470ae6e033eb.md) | 251 | `result-track:c9bb746c1a38470ae6e033eb8787672c16ea81e352adf319877765aa3b37003f` |
| 35 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply--c7e1660f3c562e59cee804a6.md) | 256 | `result-track:c7e1660f3c562e59cee804a6403f664d1704b839a2d2c3d8d914d82f3bc9fb27` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-singleton--921059292a6110a64639b746.md) | 260 | `result-track:921059292a6110a64639b746570b28e954ee3573a3743d3170e73616a8b5c19f` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-eq-zero-iff--a61759f249308494c4ae46ba.md) | 265 | `result-track:a61759f249308494c4ae46bacd629c751e510130afa7725c21e156867f51d681` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-eq-one-iff--c917266b8d6b44cfa9cfb6ea.md) | 270 | `result-track:c917266b8d6b44cfa9cfb6eaccf2933978bf6b3b743af91d3847f2b32193364e` |
| 39 | `theorem` | [toMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-inter-support--276f7f058795c7f6557cf7fb.md) | 275 | `result-track:276f7f058795c7f6557cf7fbf70cb78b032e3d508cee5358fdfd57237167d3b9` |
| 40 | `theorem` | [toMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-mono--8047ed497c0c1af4b7c4f486.md) | 281 | `result-track:8047ed497c0c1af4b7c4f486920e79a22495e12f75382a7d5b68f07287dc21c8` |
| 41 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-eq-of-inter-support-eq--206c05989c01fa2addf364b8.md) | 286 | `result-track:206c05989c01fa2addf364b849f059caf546d0aab9de91546f4317e7ad1a6117` |
| 42 | `theorem` | [toMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-injective--aa19aa427375f2c43a2fbc6c.md) | 296 | `result-track:aa19aa427375f2c43a2fbc6ca49b5c0494966b806c6e019428acd8082667619f` |
| 43 | `theorem` | [toMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-inj--55579973efd5a202eba89db7.md) | 304 | `result-track:55579973efd5a202eba89db7682f30ba73472fb4aa8b2b3488a117e2f11d9373` |
| 44 | `theorem` | [toMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-finset--0bc15719c45c1e07093e5744.md) | 309 | `result-track:0bc15719c45c1e07093e574495562e3013928e9b2a83620efa9f071c3a00e4e1` |
| 45 | `theorem` | [toMeasure_apply_of_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-of-finite--8818c0eb16df71fea253ca8b.md) | 314 | `result-track:8818c0eb16df71fea253ca8ba3f3049742f7a5bcff7037442337afe9b043a6da` |
| 46 | `theorem` | [toMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-apply-fintype--9c935906e7887644c3c33938.md) | 319 | `result-track:9c935906e7887644c3c33938d5a3dd1fdfbae30b51708228579f2320063b3790` |
| 47 | `def` | [toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/topmf--759cb32cbfe0fa856c37eaa2.md) | 339 | `declaration-track:759cb32cbfe0fa856c37eaa2c2672dc6e1161c8c0adc0609f7ed5f87e2339731` |
| 48 | `theorem` | [toPmf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/topmf-apply--b9e1746e32669ecf8b54b22f.md) | 353 | `result-track:b9e1746e32669ecf8b54b22f49bea8e68132f33d932a79fdf5c799dcb159b540` |
| 49 | `theorem` | [toPmf_toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/topmf-tomeasure--a56a1676029e9d4a2b050de0.md) | 357 | `result-track:a56a1676029e9d4a2b050de0626998e0216daf09b96899ac343d8ef75fdfcc09` |
| 50 | `instance` | [toMeasure.isProbabilityMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-isprobabilitymeasure--e20f6896979a0c8143701221.md) | 372 | `declaration-track:e20f6896979a0c8143701221ec855ada1a0c33b6066484b48f153ebc6beefadc` |
| 51 | `theorem` | [toMeasure_toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-topmf--4bab0a88122a2940037fc308.md) | 383 | `result-track:4bab0a88122a2940037fc30862b468d42bd54ca4e0353d7e653e335842f7179f` |
| 52 | `theorem` | [toMeasure_eq_iff_eq_toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/tomeasure-eq-iff-eq-topmf--fecae5324da8971951346570.md) | 388 | `result-track:fecae5324da897195134657095a086d8643280ed209c70d8ea1a60e6103f98d6` |
| 53 | `theorem` | [toPmf_eq_iff_toMeasure_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc25e78d9630f3611e28c9b29a3d423daf8e9b856de00c6ba1c86ad5685656439.lean/declarations/topmf-eq-iff-tomeasure-eq--0fb32d52c30cf025fcee8676.md) | 392 | `result-track:0fb32d52c30cf025fcee8676197835d78a89a028699372b985ac67b047e73179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
