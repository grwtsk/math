# Verification target: GRWTSK.Algebra.LinearAlgebra.Subalgebra.Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ddfb5259e9732e758e5abb0d22d438096cb3d59",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ddfb5259e9732e758e5abb0d22d438096cb3d59`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/ltensorbot--ca2b4307d109f5106568a0ac.md) | 56 | `declaration-track:ca2b4307d109f5106568a0acf130fc58ab2794a75a10c6018e61ed86fd145905` |
| 2 | `theorem` | [lTensorBot_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/ltensorbot-tmul--e0f663ee05cacc56ddd98399.md) | 73 | `result-track:e0f663ee05cacc56ddd9839967372f04fac427563cde9ed9c5b70f0e7ec353c5` |
| 3 | `theorem` | [lTensorBot_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/ltensorbot-one-tmul--2ef8e6bd0b79d8c4f38ef1f2.md) | 77 | `result-track:2ef8e6bd0b79d8c4f38ef1f25369dfac80b89772e6c51abceac617cb0ac06e8f` |
| 4 | `theorem` | [lTensorBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/ltensorbot-symm-apply--2337a61acc4cfb3871a33bb7.md) | 81 | `result-track:2337a61acc4cfb3871a33bb7e7c7fdb4f41a6b62fa46aead7777d8df67b64bd9` |
| 5 | `def` | [rTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/rtensorbot--acd3f8db52ca7157d3ebc3cc.md) | 89 | `declaration-track:acd3f8db52ca7157d3ebc3cca070baaa630ecebe55251b55b9020ade58168f7b` |
| 6 | `theorem` | [rTensorBot_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/rtensorbot-tmul--51932e24e42ed5c58f5ea09c.md) | 104 | `result-track:51932e24e42ed5c58f5ea09cb0530a74928fc712906ca30a4e949337adbc7d8f` |
| 7 | `theorem` | [rTensorBot_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/rtensorbot-tmul-one--373dc06648d737448eef9c95.md) | 108 | `result-track:373dc06648d737448eef9c95513ec88fa2a31529addb9855fba396ca494e9613` |
| 8 | `theorem` | [rTensorBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/rtensorbot-symm-apply--f90240c2d9cc84b425a217a5.md) | 112 | `result-track:f90240c2d9cc84b425a217a5ca66adec56f9ba111c3647368c32e51033ee3b4e` |
| 9 | `theorem` | [comm_trans_lTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/comm-trans-ltensorbot--968e75475ad999d46cee84a6.md) | 117 | `result-track:968e75475ad999d46cee84a6056f1e31d0ce953a07074c700843a1d88b5ecaa7` |
| 10 | `theorem` | [comm_trans_rTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/comm-trans-rtensorbot--bde5219efa59f6eaa171b80f.md) | 122 | `result-track:bde5219efa59f6eaa171b80f2a2d7e400e38c9e315a20d1f28b55e357c03c856` |
| 11 | `def` | [linearEquivIncludeRange](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/linearequivincluderange--8951e91c5c1001d3cf565366.md) | 135 | `declaration-track:8951e91c5c1001d3cf565366994ef4ffd3a9058a9c4cd239ab7acaff69cefacd` |
| 12 | `theorem` | [linearEquivIncludeRange_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/linearequivincluderange-tolinearmap--643238684d47d5d6a1e920eb.md) | 153 | `result-track:643238684d47d5d6a1e920eb22e06cb85d1e6cb85a00d39abdb7957528bae6eb` |
| 13 | `theorem` | [linearEquivIncludeRange_symm_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/linearequivincluderange-symm-tolinearmap--79893c0c0115da2150d0beeb.md) | 158 | `result-track:79893c0c0115da2150d0beebc224354535b58544d6dd978685bae658e3b5f290` |
| 14 | `theorem` | [linearEquivIncludeRange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/linearequivincluderange-tmul--5d6a074c70434690e6653063.md) | 163 | `result-track:5d6a074c70434690e6653063a64d35d1a6528f2e5ce3adf165ef85ecebab16a8` |
| 15 | `theorem` | [linearEquivIncludeRange_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/linearequivincluderange-symm-tmul--d9d75c13c98f7f4ddb3d24cc.md) | 169 | `result-track:d9d75c13c98f7f4ddb3d24cce83ebcea238335252cd1d2ed3b94daab93b97f94` |
| 16 | `def` | [algEquivIncludeRange](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/algequivincluderange--686848cebb714b1c8b6cd30d.md) | 174 | `declaration-track:686848cebb714b1c8b6cd30d057a1d2069533cc50dd0abbe061e7fefaeaac9df` |
| 17 | `theorem` | [algEquivIncludeRange_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/algequivincluderange-toalghom--23cdb5782780a15966681eee.md) | 179 | `result-track:23cdb5782780a15966681eee418af473172777ec544ce523eb41f35821bb3dd2` |
| 18 | `theorem` | [algEquivIncludeRange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/algequivincluderange-tmul--f2a41c6aa847af7b0be51b2e.md) | 184 | `result-track:f2a41c6aa847af7b0be51b2e8a00b143ca2be062083fbcaf0a59d2f7b5491a02` |
| 19 | `theorem` | [algEquivIncludeRange_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/algequivincluderange-symm-tmul--3f17823e07dbc67d12bf6068.md) | 190 | `result-track:3f17823e07dbc67d12bf606841d80dd53890f7d7af050d3c72b1fecb63472ae0` |
| 20 | `def` | [Subalgebra.mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/subalgebra-mulmap--eac873d879178ea83228868f.md) | 206 | `declaration-track:eac873d879178ea83228868f46178ac3ce46503933c8db6960d99c9ab136e4b9` |
| 21 | `theorem` | [Algebra.TensorProduct.algEquivIncludeRange_symm_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/algebra-tensorproduct-algequivincluderange-symm-toalghom--86fd7ec81eaebd27b7dbca08.md) | 209 | `result-track:86fd7ec81eaebd27b7dbca08cf2089e28630f5b1fc2d23348c7c2ec797c371c5` |
| 22 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-tmul--8ffb754b9408b20c24433e00.md) | 216 | `result-track:8ffb754b9408b20c24433e005ef41f4cdbd572f88d3f93e261e00207e221ff11` |
| 23 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-map-comp-eq--cd79c54aaa6c07a8f000598b.md) | 218 | `result-track:cd79c54aaa6c07a8f000598bcefc62d873c452e8116056426117fe14bebfbe43` |
| 24 | `theorem` | [mulMap_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-tolinearmap--1e6f45a183936559fd851357.md) | 224 | `result-track:1e6f45a183936559fd85135743ae09e9886252071472ba3134b1413f55877264` |
| 25 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-comm--6c7d505f158cf5587e2081da.md) | 227 | `result-track:6c7d505f158cf5587e2081da87d78a14c45b48e5ccc8a2352a7ff9530a7f682b` |
| 26 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-range--c738c977f0fab9e917b17c26.md) | 230 | `result-track:c738c977f0fab9e917b17c268893c0977999255757ae847122f90a49010c65c7` |
| 27 | `theorem` | [mulMap_bot_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-bot-left-eq--8d5d403c774fabeb616bc0b8.md) | 233 | `result-track:8d5d403c774fabeb616bc0b8ff9cde2ee7d7a756db8bbcad8e696f020be6f452` |
| 28 | `theorem` | [mulMap_bot_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-bot-right-eq--a75b640c145d57e28e519410.md) | 236 | `result-track:a75b640c145d57e28e519410a847f0d38828f9c3e16101c895c1fdce3ed6dd31` |
| 29 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap--4ebd781350fd3144d155428f.md) | 243 | `declaration-track:4ebd781350fd3144d155428f96d9a809f87fe16121d51cde15d6e95455c43d79` |
| 30 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/val-mulmap-tmul--799627671c906bb0c56988a4.md) | 248 | `result-track:799627671c906bb0c56988a4cc2ff3e2435426feff5bea636525f3fcaf1a6272` |
| 31 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/declarations/mulmap-surjective--2e639e630765acd64161c715.md) | 250 | `result-track:2e639e630765acd64161c7157925c6622e026a1f6b11ffd1a8f894352c64e79d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
