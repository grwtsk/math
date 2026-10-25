# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c87b7d8daa7afb58e0d3d5065e2a7c602f34728f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c87b7d8daa7afb58e0d3d5065e2a7c602f34728f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr--7bd783351eeadfe5f08a26f2.md) | 43 | `declaration-track:7bd783351eeadfe5f08a26f281fb9954aa577b86ad75008071af78d544948105` |
| 2 | `theorem` | [optionCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr-refl--057ea6b577cc52dfa952878e.md) | 52 | `result-track:057ea6b577cc52dfa952878eee7390c186a8d3318c4be1215d44835e951b3c3c` |
| 3 | `theorem` | [optionCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr-symm--61f2a16cfddee918d892ae4a.md) | 57 | `result-track:61f2a16cfddee918d892ae4a36ef37cf56e39d81b14f6085c97bc979141b551d` |
| 4 | `theorem` | [optionCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr-trans--268b3a1ee63afeeb5c364de2.md) | 62 | `result-track:268b3a1ee63afeeb5c364de204024e2725cda30adc20c27e70eb836c82c85335` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr-eq-equivfunctor-mapequiv--67721064f34627628831f7ed.md) | 69 | `result-track:67721064f34627628831f7edcb49a37b7c7831931686f732b5e7e5c0a49b898a` |
| 6 | `def` | [removeNone_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-aux--61d71d7716fea29e86b80b1e.md) | 83 | `declaration-track:61d71d7716fea29e86b80b1ef3dadf8c1ffeab6da422ac97bc4dce10e3c3f708` |
| 7 | `theorem` | [removeNone_aux_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-aux-some--16f2ec185af5e322de54d531.md) | 95 | `result-track:16f2ec185af5e322de54d5315d619ff85b43904718ad1878b1734cb7508994c8` |
| 8 | `theorem` | [removeNone_aux_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-aux-none--610fc78d0a2981334caf7a7c.md) | 101 | `result-track:610fc78d0a2981334caf7a7c8e2c696a350973aac00dc9b220c5e7a0bf194b50` |
| 9 | `theorem` | [removeNone_aux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-aux-inv--2710eb5cc642d325fa33d188.md) | 107 | `result-track:2710eb5cc642d325fa33d1886b39f617972be83872bff3e33656f42530dfd6f2` |
| 10 | `def` | [removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone--f97c02251e8e7ed32f5b1ee7.md) | 129 | `declaration-track:f97c02251e8e7ed32f5b1ee7886b8d47497f046d311a5e63f1cfb21d068ebf4a` |
| 11 | `theorem` | [removeNone_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-symm--f4d9299d9d8e2e16123818df.md) | 137 | `result-track:f4d9299d9d8e2e16123818df16749aeec28d2d0974e181f105cdc7a66d467a53` |
| 12 | `theorem` | [removeNone_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-some--372f95a7b9519f60acba3665.md) | 141 | `result-track:372f95a7b9519f60acba3665341914612c7e0f234cc4985bf2a005fe83f16f52` |
| 13 | `theorem` | [removeNone_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-none--f92471b93a1561b945baefdf.md) | 146 | `result-track:f92471b93a1561b945baefdfc6e4b13ff55ff40e51b8f34ed94e5dc908e19d46` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/option-symm-apply-none-iff--59cd0f0d11aabab1072367ee.md) | 151 | `result-track:59cd0f0d11aabab1072367ee27985df7b7e7a5413538cfaede80aa93ed0b2dc0` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/some-removenone-iff--c4ccdceaa4c22f4b17dac9ac.md) | 155 | `result-track:c4ccdceaa4c22f4b17dac9ac6ec03f921410852751a0be1321e47c332800ee06` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/removenone-optioncongr--894bdb063bd55901b0916f62.md) | 167 | `result-track:894bdb063bd55901b0916f6230997e0250ecb9e304ef43cee38f5193070cca93` |
| 17 | `theorem` | [optionCongr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optioncongr-injective--e80920352ecd5a7c15822624.md) | 173 | `result-track:e80920352ecd5a7c15822624fc610f2d7685ed52a69c33006c5882ee9cea73ac` |
| 18 | `def` | [optionSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype--cde20f05ba9e4d59cd975774.md) | 179 | `declaration-track:cde20f05ba9e4d59cd975774fc638509c09d452feece9fcb601987693b4aac8b` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-apply-apply--f939c75b907bc8fae6b1717e.md) | 222 | `result-track:f939c75b907bc8fae6b1717ef5836580ae5480fecf0c88ba368ad4a36d5e9465` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/coe-optionsubtype-apply-apply--543aaeb1de16741d84f3255a.md) | 230 | `result-track:543aaeb1de16741d84f3255a1a11c154260faa9d61a14d618c94f8dcf4245ce2` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-apply-symm-apply--33b7c1787c4a59e3c27af2c5.md) | 237 | `result-track:33b7c1787c4a59e3c27af2c5778ef584ac56b9f9d61eaedfcfcd2db56f7c9ffe` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-symm-apply-apply-coe--92eb0c6cf7e67fc45c2f3c18.md) | 246 | `result-track:92eb0c6cf7e67fc45c2f3c1818ea0869b8c733f3fe99d02641152b2a389393fb` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-symm-apply-apply-some--6aea0b4ffcfebd3bb21fadac.md) | 252 | `result-track:6aea0b4ffcfebd3bb21fadacaea9efb5c103ab1d74b959870e072f41f23fb9f7` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-symm-apply-apply-none--c8f64890662a0454c0a46bf0.md) | 261 | `result-track:c8f64890662a0454c0a46bf02531d6148333d465f43af50348084ba8b606a12e` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbf4acd1c72119619afafc0b1b9029da10ed280cb4260727717d853314bbb8551.lean/declarations/optionsubtype-symm-apply-symm-apply--6e73d7365cec31c0a844f3c4.md) | 269 | `result-track:6e73d7365cec31c0a844f3c45c96f0d1b3a3e6b6fb8bc6b069536185d2bfcf68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
