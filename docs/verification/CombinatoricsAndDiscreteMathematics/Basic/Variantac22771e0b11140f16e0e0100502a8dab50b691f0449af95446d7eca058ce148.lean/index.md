# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cbee41dbb2eaa1cd1a355b35cbad63215915fdb",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cbee41dbb2eaa1cd1a355b35cbad63215915fdb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bornology](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology--77fb93c0b8f3a4e70557e7bc.md) | 57 | `declaration-track:77fb93c0b8f3a4e70557e7bc874055e8cbb1396dc95b6ce54bc36727c69a6c29` |
| 2 | `def` | [Bornology.cobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-cobounded--90f3ae7532f6ed9541efca01.md) | 72 | `declaration-track:90f3ae7532f6ed9541efca01346e91986f86face4d744188550d12a4f69ef3c4` |
| 3 | `lemma` | [Bornology.le_cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-le-cofinite--413cea7d00952a9a1b3f0947.md) | 77 | `result-track:413cea7d00952a9a1b3f0947d27f6b70fd3191c466124ce6b8a2a480e8de31df` |
| 4 | `lemma` | [Bornology.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-ext--b0756850d87e00e93e8f0056.md) | 84 | `result-track:b0756850d87e00e93e8f0056e1c22390415565b503032d3346e3c2eb8499e03b` |
| 5 | `lemma` | [Bornology.ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-ext-iff--326868097b2bb31352db1e2d.md) | 92 | `result-track:326868097b2bb31352db1e2df7de0a95af7ae48741ca4c4e06bbf4cd567c555c` |
| 6 | `def` | [Bornology.ofBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-ofbounded--ebf5ae3d4d39c52c3144f5a6.md) | 100 | `declaration-track:ebf5ae3d4d39c52c3144f5a6d306a2734c34bdfb3feb4e5901babb8da3ca1cfe` |
| 7 | `def` | [Bornology.ofBounded'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-ofbounded--501958b7b7e1f1af057183a7.md) | 123 | `declaration-track:501958b7b7e1f1af057183a7978332c64a8ea1806e90db730390b5e62fa220ef` |
| 8 | `def` | [IsCobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded--150e624d9c9d06b331b533c5.md) | 143 | `declaration-track:150e624d9c9d06b331b533c5541bed98a387a879d6c47abb1a0d9acee341034a` |
| 9 | `def` | [IsBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded--1060d298ebfe42314c054cf5.md) | 148 | `declaration-track:1060d298ebfe42314c054cf507d2da71a5651bbbc6a5ddb33146c951dbdfd443` |
| 10 | `theorem` | [isCobounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-def--19df4b34a7f6fa74ea1765d5.md) | 152 | `result-track:19df4b34a7f6fa74ea1765d5dee5a89af1bfdc68d3e72fd60eeb47884db1a97e` |
| 11 | `theorem` | [isBounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-def--37e5e3c9c9234e76cdc46edc.md) | 156 | `result-track:37e5e3c9c9234e76cdc46edc5da81d148f76e6f3c0e6b38414fee2e835e11f21` |
| 12 | `theorem` | [isBounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-compl-iff--aefcb6e2258a10c31c386a50.md) | 161 | `result-track:aefcb6e2258a10c31c386a507922f9488bc969d4cbed82ee8b57f7fd523ad23a` |
| 13 | `theorem` | [isCobounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-compl-iff--5381bd5b7b378d9794307b4d.md) | 166 | `result-track:5381bd5b7b378d9794307b4d11a64d963c0f42100c749f8cfdb199af9ae897b0` |
| 14 | `theorem` | [isBounded_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-empty--b0e082bdd14dd4c595e26e6d.md) | 179 | `result-track:b0e082bdd14dd4c595e26e6d7fb6e5f7d04441f21edce820c6f6634d0cdfffc5` |
| 15 | `theorem` | [isBounded_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-singleton--2257f1d45b1d12125348cdb4.md) | 185 | `result-track:2257f1d45b1d12125348cdb453a078413cd36d0b5313d6cedc3cb458ecba120e` |
| 16 | `theorem` | [isCobounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-univ--0e96c015e76be4e7c29f3960.md) | 191 | `result-track:0e96c015e76be4e7c29f39608bb14ce0de16b8994b3868228f2a4872bca254ed` |
| 17 | `theorem` | [isCobounded_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-inter--b8fe2ed01abd2cfbbf775acc.md) | 196 | `result-track:b8fe2ed01abd2cfbbf775acc7780b2024ff9eb88ab40ee3a13ee3203108b528b` |
| 18 | `theorem` | [IsCobounded.inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-inter--1f8d069fae602a88012a4ac1.md) | 200 | `result-track:1f8d069fae602a88012a4ac1e1acc03e83c6c8b9d6555e8656f6109038fbf73d` |
| 19 | `theorem` | [isBounded_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-union--e3e5cee10f5d33efd9585ec1.md) | 205 | `result-track:e3e5cee10f5d33efd9585ec1a5becd834f922eb51803e9b428e2086d90064800` |
| 20 | `theorem` | [IsBounded.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-union--8e986b7bd22a4e0154e776ef.md) | 209 | `result-track:8e986b7bd22a4e0154e776ef4c6a0d826e2e8a58e960d5b23d32a7f279c692b6` |
| 21 | `theorem` | [IsCobounded.superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-superset--92a1d75c6a41380768297848.md) | 213 | `result-track:92a1d75c6a41380768297848aac9f66ecd846a423a90cc856313d56cb0fc16aa` |
| 22 | `theorem` | [IsBounded.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-subset--52d42c1d9754e97220f8099e.md) | 217 | `result-track:52d42c1d9754e97220f8099eb6c6f418e9be1ae8b76fb1a83fdd0a47f475c142` |
| 23 | `theorem` | [sUnion_bounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/sunion-bounded-univ--0c8d3a3734a6d26806043b84.md) | 222 | `result-track:0c8d3a3734a6d26806043b845844f563c7e4d66b6577202b363070c85003d2c2` |
| 24 | `theorem` | [comap_cobounded_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/comap-cobounded-le-iff--039a5298936b7019fd827f95.md) | 226 | `result-track:039a5298936b7019fd827f9542b082c5689c370c6f6f71fc1a0c50f28726c561` |
| 25 | `theorem` | [ext_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/ext-iff--7c2857c9a52b60ea5db70b9c.md) | 238 | `result-track:7c2857c9a52b60ea5db70b9cc06d01ac7822e8140c55a45591531b9933c87cd4` |
| 26 | `theorem` | [ext_iff_isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/ext-iff-isbounded--63fe4abbb888b5977b763984.md) | 243 | `result-track:63fe4abbb888b5977b7639845684d4edaef31e7ffd61c8807a5d821135d82d95` |
| 27 | `theorem` | [isCobounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-ofbounded-iff--309199c643786019f96a1e17.md) | 253 | `result-track:309199c643786019f96a1e1785962b078a86f65a74ff933068ad6eae101529c3` |
| 28 | `theorem` | [isBounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-ofbounded-iff--01410d215edfc67cf113a8ba.md) | 258 | `result-track:01410d215edfc67cf113a8ba5d21b4b82cb632fd548825b76665c50722648158` |
| 29 | `theorem` | [isCobounded_biInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-biinter--acbfbd8c99e97d205e04b2ce.md) | 267 | `result-track:acbfbd8c99e97d205e04b2ce0f0c72fd9a824ee6a3290844a949dd503dc68491` |
| 30 | `theorem` | [isCobounded_biInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-biinter-finset--3d102299d7b0c85dff8d6691.md) | 273 | `result-track:3d102299d7b0c85dff8d6691d6b706a031ddde68d30acc669f81a0737a0cd58e` |
| 31 | `theorem` | [isCobounded_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-iinter--4aa65abef23512d49f00603d.md) | 279 | `result-track:4aa65abef23512d49f00603dce50b543bc1e1067f48491308a2d8afd327c605c` |
| 32 | `theorem` | [isCobounded_sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-sinter--f113e57d10cda3e7cb7c6a43.md) | 284 | `result-track:f113e57d10cda3e7cb7c6a4316d7d0332d7f281575a45e02ce780ea27c75c387` |
| 33 | `theorem` | [isBounded_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-biunion--e67c1717019506dcb8134921.md) | 289 | `result-track:e67c1717019506dcb8134921cd8f87dee578d8356bf9b8392255137d6b989147` |
| 34 | `theorem` | [isBounded_biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-biunion-finset--cbd9e5bf98d0da0552b7c3f3.md) | 294 | `result-track:cbd9e5bf98d0da0552b7c3f38ed8957e253948fd8bc0c9c753af50db989fda09` |
| 35 | `theorem` | [isBounded_sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-sunion--64856e023ac8fe930f047b9b.md) | 299 | `result-track:64856e023ac8fe930f047b9ba10a6da42e223caa6fa2e10b18fa6bea3d66883a` |
| 36 | `theorem` | [isBounded_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-iunion--53633f2afc9de60eb3361e07.md) | 304 | `result-track:53633f2afc9de60eb3361e072b8049f18ed149660d945f7b2b5b3aaa7fc54d01` |
| 37 | `theorem` | [Set.Finite.isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/set-finite-isbounded--58b4a05bcfea1efbc49a5e77.md) | 312 | `result-track:58b4a05bcfea1efbc49a5e772067d4287a3f574583263874e074d54204d831e1` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/instance--703af422384149e5b7899136.md) | 316 | `declaration-track:703af422384149e5b7899136d9a9baac31d5aaab7a432e2ee7e4eff59b7c1a9b` |
| 39 | `def` | [Bornology.cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/bornology-cofinite--b03c95b950f73c202d853cca.md) | 321 | `declaration-track:b03c95b950f73c202d853cca0cf6647ead712dfea6f50dd1502ebdaa6dd6a59a` |
| 40 | `class` | [BoundedSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/boundedspace--8a58ef28a5c03746f52d8736.md) | 328 | `declaration-track:8a58ef28a5c03746f52d87362d18f9bb7cdb18375d8fe28770aa2f9afbbfd122` |
| 41 | `theorem` | [isBounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-univ--ba7178c1655ddc4fe42052f7.md) | 337 | `result-track:ba7178c1655ddc4fe42052f7e6fd97638b74f50b217a8a2e655f8be596ae31ec` |
| 42 | `theorem` | [cobounded_eq_bot_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/cobounded-eq-bot-iff--be037e7285c11f3370406027.md) | 341 | `result-track:be037e7285c11f3370406027dc492d850082e3279cdbb4ea9e286ed1bb52e824` |
| 43 | `theorem` | [IsBounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/isbounded-all--4cf80340e25d6d123d020a99.md) | 347 | `result-track:4cf80340e25d6d123d020a99831aad31f4821286bb66573bf6feb22f6ba3a20e` |
| 44 | `theorem` | [IsCobounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/iscobounded-all--1770de77a321404c84146f6c.md) | 351 | `result-track:1770de77a321404c84146f6c6c41e1e694124e27b2cac3781276de3ef7601ffd` |
| 45 | `theorem` | [cobounded_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantac22771e0b11140f16e0e0100502a8dab50b691f0449af95446d7eca058ce148.lean/declarations/cobounded-eq-bot--b72d0af74cb4c00a5e83ec50.md) | 358 | `result-track:b72d0af74cb4c00a5e83ec5001f1fc6c1008bec8acec9cb82f3465865ea2566c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
