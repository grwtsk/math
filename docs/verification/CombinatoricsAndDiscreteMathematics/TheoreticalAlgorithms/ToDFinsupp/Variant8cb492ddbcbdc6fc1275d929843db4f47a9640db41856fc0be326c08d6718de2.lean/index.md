# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDFinsupp.Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d567c18dcac74dd1838e3d90e0480fafa23f679b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d567c18dcac74dd1838e3d90e0480fafa23f679b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean.json)

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
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupp-todfinsupp--fad23d57f96d713fe516f439.md) | 73 | `declaration-track:fad23d57f96d713fe516f439a8a406cf15739988207c43b88da6d409049044a9` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupp-todfinsupp-coe--7b9f3f8b04f636aef346c538.md) | 80 | `result-track:7b9f3f8b04f636aef346c5386cdea42dfc23460beb7e4cc3db642ec294b4ce6f` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupp-todfinsupp-single--764f0b55839bddd0a14c7c90.md) | 88 | `result-track:764f0b55839bddd0a14c7c9098c2c18f4afbaf11026e0ac3275745d542e057b4` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-support--2dd5e787ef36da909d168de8.md) | 96 | `result-track:2dd5e787ef36da909d168de80050bfca004ad43063fafd6ebafabb9f9a00fe42` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/dfinsupp-tofinsupp--9c9f9a60201a559a3549a3fa.md) | 105 | `declaration-track:9c9f9a60201a559a3549a3fa062e02a3447f79e5c7b2091328a124e59405852c` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/dfinsupp-tofinsupp-coe--4bf0e3e11f0e15fb379a4d11.md) | 109 | `result-track:4bf0e3e11f0e15fb379a4d111ab7ea8f551812310ad7ad9d124eba8ca3a49cbf` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/dfinsupp-tofinsupp-support--454ecc74bd91d51fcb6f857e.md) | 113 | `result-track:454ecc74bd91d51fcb6f857e554bf04115d3f3f52739832bd780f40bf0590e0c` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/dfinsupp-tofinsupp-single--024f85f7f1741cc965e16d12.md) | 118 | `result-track:024f85f7f1741cc965e16d1230c7e1ae07fa281d7fee4e9fb8f0d497681895f4` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupp-todfinsupp-tofinsupp--547f9a7b0d7997b9d3395f2e.md) | 124 | `result-track:547f9a7b0d7997b9d3395f2ecd88de8470da4c55e429fce081ea9caf60fa1002` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/dfinsupp-tofinsupp-todfinsupp--9225f9e27319f91a1a20447b.md) | 128 | `result-track:9225f9e27319f91a1a20447b41405ed7503b59eb7f8a172c72be5f68b661c0ac` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-zero--9bd84a1c802ffa0368e8f18a.md) | 143 | `result-track:9bd84a1c802ffa0368e8f18ae97b1d24b4b7618bf8516f1c97a12472ef0c5969` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-add--c009211f4bfa009087fcdd24.md) | 147 | `result-track:c009211f4bfa009087fcdd24136e0d4b3042594b83cb5233baa9d048739e4231` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-neg--d835d1a917bb10dcabda5c98.md) | 152 | `result-track:d835d1a917bb10dcabda5c98bf2e6db3b26ace9b5d4ed23101638aad7d16fdaf` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-sub--040189295b700028b3b4c78a.md) | 156 | `result-track:040189295b700028b3b4c78ad72d6b14b240a3454768b24ba5344cc79f472f3e` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/todfinsupp-smul--8a18caf24a12c85a427f7732.md) | 161 | `result-track:8a18caf24a12c85a427f7732e669b9f64d4b54e552f95f53cb9a9330a1a2f9e2` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/tofinsupp-zero--975d7c4f1745594055033775.md) | 172 | `result-track:975d7c4f174559405503377571f5f71a21f7df597d369da8741616380b6008f0` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/tofinsupp-add--c3c4474a75fc7af23a8e01c0.md) | 176 | `result-track:c3c4474a75fc7af23a8e01c07d95c152ad0aac84aa758872fd8b4c5db77d198c` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/tofinsupp-neg--33e3c3373173cbebc3043657.md) | 181 | `result-track:33e3c3373173cbebc30436574a8f53d6f124aaba5398f596385a16c9013e3258` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/tofinsupp-sub--59ca715cb8f12e4b830dcd5d.md) | 186 | `result-track:59ca715cb8f12e4b830dcd5d06d9f639169f4c108d5b27c085c25f60d170d682` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/tofinsupp-smul--1b3606f0033267b037ab0373.md) | 191 | `result-track:1b3606f0033267b037ab0373cd17b7114ca6b3c512e04ae41806d5df82fc0383` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsuppequivdfinsupp--b2e33e06befb19bb23ce2496.md) | 206 | `declaration-track:b2e33e06befb19bb23ce2496ba1ca3825900ea0502e8d1452708ef1b1db944ca` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsuppaddequivdfinsupp--7ed1519ad38eca1bc3af1402.md) | 216 | `declaration-track:7ed1519ad38eca1bc3af140237a6bc84ba9f5f946cfdac39e87e161ea731cd40` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupplequivdfinsupp--fecfed54dcbb55c58ae3d2f5.md) | 227 | `declaration-track:fecfed54dcbb55c58ae3d2f585cccd44d105c83ab9e7721b42c43a3a6e899197` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupplequivdfinsupp-apply-apply--fc67d1adcc467831e41bf676.md) | 236 | `result-track:fc67d1adcc467831e41bf67676a880ee7976dd902e85f70c77c56ed96d7c548e` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/finsupplequivdfinsupp-symm-apply--e5e05ab44630e332ce74205b.md) | 241 | `result-track:e5e05ab44630e332ce74205b281447f72c55546982564a2147a575573a8b8e4f` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp--d84688ee3914d3b3304a7ac0.md) | 256 | `declaration-track:d84688ee3914d3b3304a7ac01821a3f41ec56f9235d30c54b05f512f96e16320` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-apply--9fef2998e4c488216d08eded.md) | 275 | `result-track:9fef2998e4c488216d08ededba4b3f2a1e47f67b01d16bb7679e4a0d25792433` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--a4374d6d6fdfbfc6cf120ef9.md) | 280 | `result-track:a4374d6d6fdfbfc6cf120ef993d013cc541200773650b4edc3ec5ffad2c6c59f` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-support--80f61003230639c707ef4090.md) | 285 | `result-track:80f61003230639c707ef409021444ab3da2eef0a52e81bea8b58f809f1dcd9c4` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-single--ff5220418bbef79859bbb70b.md) | 293 | `result-track:ff5220418bbef79859bbb70bd342bc6ab437e7493adb938303179b1ad3cbf169` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-add--9b2a42101ebfff31ef720618.md) | 310 | `result-track:9b2a42101ebfff31ef72061817b40e79663574b11d11d372c41ebec982a394c4` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppaddequivdfinsupp--552f54d8c561f123ff70548a.md) | 318 | `declaration-track:552f54d8c561f123ff70548a25de5d51393ef98fe0c7dcc0b2dabe624f52396a` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsuppequivdfinsupp-smul--a0778bb73e9a5b630d0ceffe.md) | 327 | `result-track:a0778bb73e9a5b630d0ceffe7680dbcdf549d3e792bd88bed69926d7b552e9c3` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant8cb492ddbcbdc6fc1275d929843db4f47a9640db41856fc0be326c08d6718de2.lean/declarations/sigmafinsupplequivdfinsupp--c43a77176a821e8d7bfeb6fe.md) | 337 | `declaration-track:c43a77176a821e8d7bfeb6fe6c90dedb600280033d4566b72175c722f7690007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
