# Verification target: GRWTSK.Algebra.UniversalAlgebra.Bound.Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4332d6ba099c16cabeb3bd96a8a641be0381df80",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4332d6ba099c16cabeb3bd96a8a641be0381df80`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/stepbound--aaa172280361523f34c63e3a.md) | 50 | `declaration-track:aaa172280361523f34c63e3ac39c82d2a62788ff3c80c8bbab08c56ef0515958` |
| 2 | `theorem` | [le_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/le-stepbound--7e2867b9b6352e315e53e680.md) | 53 | `result-track:7e2867b9b6352e315e53e680459acaa276470d4dfd659921b1aea2fbba14a7a2` |
| 3 | `theorem` | [stepBound_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/stepbound-mono--3fd816c1b0d71f0d1856577c.md) | 56 | `result-track:3fd816c1b0d71f0d1856577c683a3bd0aabd2c574e5024e5c16a39ab4b6f8fe5` |
| 4 | `theorem` | [stepBound_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/stepbound-pos-iff--bad658b4df718f56a218a30f.md) | 58 | `result-track:bad658b4df718f56a218a30f6ff6056847a5d51790d52283e4a9500f8e997280` |
| 5 | `lemma` | [coe_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/coe-stepbound--6e9d67fc0b7d94b5365add78.md) | 63 | `result-track:6e9d67fc0b7d94b5365add78d58eee07a5bc89e438795c971ec4f0345efa46b0` |
| 6 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/eps-pos--31c7cd5dbf8e83bd930a9205.md) | 80 | `result-track:31c7cd5dbf8e83bd930a9205b257f903a8e391e6f077d91da1edae3632c1bcfc` |
| 7 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/m-pos--0f514208d1129544bf0fe70a.md) | 85 | `result-track:0f514208d1129544bf0fe70af45d3fc641d2fcb6a6c949f1e1a4274d27383562` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/macro--3591b277ec482a1879851771.md) | 91 | `declaration-track:3591b277ec482a1879851771f55aa8d1121a365a7c58c6fe25d302490a9c64e6` |
| 9 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/m-pos--658fbe59e61ccf821c97e7da.md) | 116 | `result-track:658fbe59e61ccf821c97e7da2cc3fdd0de8c355d36e4cfc1319a88768fdd394f` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/coe-m-add-one-pos--fd1ec5bede251f507b78d30b.md) | 119 | `result-track:fd1ec5bede251f507b78d30b3af7961db58d3f591bd3bbb050e50363e5315419` |
| 11 | `theorem` | [one_le_m_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/one-le-m-coe--e6b37067a380de190b584a0d.md) | 121 | `result-track:e6b37067a380de190b584a0dc0d8af0db90be8505320c579253b7ef7ac9470e1` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/eps-pow-five-pos--b9bb57d90827dd72de0d4eaa.md) | 124 | `result-track:b9bb57d90827dd72de0d4eaa2eac9e4ab639bb9d983efb07ff95599e9e16549d` |
| 13 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/eps-pos--cc4e380369a404fcc86c4b91.md) | 127 | `result-track:cc4e380369a404fcc86c4b911ac30ea199a6e8edf7b58782920325b04eaf65c2` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/hundred-div-pow-five-le-m--afd07d315831ef53c90175b8.md) | 130 | `result-track:afd07d315831ef53c90175b83f765368519892a2e4437563420b105c1e793235` |
| 15 | `theorem` | [hundred_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/hundred-le-m--b379366caf8bd6c5273feac2.md) | 137 | `result-track:b379366caf8bd6c5273feac28c10fbcb1408f42d1c496ef2fac6e4c92582abd5` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/a-add-one-le-four-pow-parts-card--b7e917896a7d0744abd15097.md) | 143 | `result-track:b7e917896a7d0744abd15097487eacf12d2a24f0dec0f5e710a43c70315a43d0` |
| 17 | `theorem` | [card_aux₁](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/card-aux--a070a13bb3f7f7d8169270ff.md) | 150 | `result-track:a070a13bb3f7f7d8169270ff398f8786811852642e3046ad0e6ffc8426f4ad71` |
| 18 | `theorem` | [card_aux₂](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/card-aux--c479601f2fd53d1d3c103bc0.md) | 155 | `result-track:c479601f2fd53d1d3c103bc0b17c85f9ca6c2304e8f44c20412e42b46eab9597` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/pow-mul-m-le-card-part--d08c21d589175e01fd272948.md) | 165 | `result-track:d08c21d589175e01fd27294848fdfc54e011f6bb82410e13b5ee76c94f8412a2` |
| 20 | `def` | [initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/initialbound--c492620f30753e4d95164305.md) | 175 | `declaration-track:c492620f30753e4d95164305583d224379e8c5298f27c66301aa0c61f627fb43` |
| 21 | `theorem` | [le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/le-initialbound--0f32257b393a0d9ade9812bb.md) | 178 | `result-track:0f32257b393a0d9ade9812bb16bfed4b9c86065a4aafe143ac50e49afeb310e8` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/seven-le-initialbound--d08ffa1d400e8787044ad60c.md) | 181 | `result-track:d08ffa1d400e8787044ad60cf85bb037b1c0efaa1fd028b29f732e8f481737a5` |
| 23 | `theorem` | [initialBound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/initialbound-pos--7a349082786f6647572f12c7.md) | 184 | `result-track:7a349082786f6647572f12c7c409d275516e1b172c854836656ef9299caf72de` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/hundred-lt-pow-initialbound-mul--7045821a999df4038a3d7416.md) | 187 | `result-track:7045821a999df4038a3d7416cfe90656a7a48f9ddb69d5de884ee836c1f900df` |
| 25 | `def` | [bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/bound--ce52366dfc415ed676b8a635.md) | 198 | `declaration-track:ce52366dfc415ed676b8a63570c4fd8340380f99ff2341f5581fc7cdb147b256` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/initialbound-le-bound--e7cbd83f7546af28cf1f99bc.md) | 202 | `result-track:e7cbd83f7546af28cf1f99bc5a5a4a36bfec9de7bdcf06c029e2d8b5d67dbd38` |
| 27 | `theorem` | [le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/le-bound--3dd53447184b74db2749cd76.md) | 205 | `result-track:3dd53447184b74db2749cd76f754fa64272cf4e5834fdc1695afee3ff313ad79` |
| 28 | `theorem` | [bound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/bound-pos--5abd5313e9feb4961cd8b480.md) | 208 | `result-track:5abd5313e9feb4961cd8b480ef39e4bab9fffd39a0a756493a621e919509a300` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/mul-sq-le-sum-sq--0ad82eef72c5751557825714.md) | 213 | `result-track:0ad82eef72c5751557825714ee9dcd35791b0841e794f55aa3224627df81d7fb` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/add-div-le-sum-sq-div-card--904389fdd03be3513c992529.md) | 221 | `result-track:904389fdd03be3513c9925290f339fc9d2edeee5726a773012bf33e789c27f34` |
| 31 | `def` | [evalInitialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/evalinitialbound--a5a4866a634ba32b3ed82bef.md) | 250 | `declaration-track:a5a4866a634ba32b3ed82befd30083eedfa6c795b2b8a48d74217569fcc69388` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/example--cd5e8708f5b436848bddc265.md) | 259 | `declaration-track:cd5e8708f5b436848bddc265c7fb8527a432a4f759d14073989dd5ad562edc8d` |
| 33 | `def` | [evalBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/evalbound--10b13459948809c2ac72c2be.md) | 263 | `declaration-track:10b13459948809c2ac72c2beb5418ae86923c7c79018b33e05f3d219840c769f` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/declarations/example--e032bf9d5801d8ff0f3e669e.md) | 271 | `declaration-track:e032bf9d5801d8ff0f3e669e1389227fc0c4bdcd562997d1900267ec59cad842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
