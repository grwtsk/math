# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f364e12f95e6a7105a9c49ecd761f72dda12494b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f364e12f95e6a7105a9c49ecd761f72dda12494b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Slice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/shadow--32732f729e26e58586abaef2.md) | 67 | `declaration-track:32732f729e26e58586abaef2356d974dc65347a73fd5e294904304d16edebf7e` |
| 2 | `theorem` | [shadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/shadow-empty--54d382467ea04991c089cf7c.md) | 78 | `result-track:54d382467ea04991c089cf7c788ec86caf8c22bc00153780b58b3b857fb707d1` |
| 3 | `theorem` | [shadow_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/shadow-singleton-empty--b5bb7b728f2e6d063542be4f.md) | 83 | `result-track:b5bb7b728f2e6d063542be4f995bd312404b2f0c14c04f3f818a93aec722119f` |
| 4 | `theorem` | [shadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/shadow-monotone--21995ad14b6949f6b553ac06.md) | 90 | `result-track:21995ad14b6949f6b553ac06ce250ce5e72e609490c83549a03572cb9e7e2793` |
| 5 | `theorem` | [mem_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-shadow-iff--d92a4363ee77aea150c2cf4f.md) | 96 | `result-track:d92a4363ee77aea150c2cf4f79d62e3763d7caae612ecb2c3fcce9d72e967444` |
| 6 | `theorem` | [erase_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/erase-mem-shadow--ec4592b6d5f7b8017e239938.md) | 100 | `result-track:ec4592b6d5f7b8017e2399380bc5f15103bc5d562462f1a5a51646af63bcf596` |
| 7 | `theorem` | [mem_shadow_iff_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-shadow-iff-insert-mem--28a57e462e235df65efe2717.md) | 106 | `result-track:28a57e462e235df65efe27171023810b6b8745d76c4ee9be15712036ef6a9589` |
| 8 | `theorem` | [Set.Sized.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/set-sized-shadow--c077588af03d2f9f451ad4ff.md) | 116 | `result-track:c077588af03d2f9f451ad4ff571a610913703924aff89f809ee0e3ee053db2a4` |
| 9 | `theorem` | [sized_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/sized-shadow-iff--c1d616957c8b9c118063ce1a.md) | 123 | `result-track:c1d616957c8b9c118063ce1af48e21c37584490235e06e6c24a702db1e231033` |
| 10 | `theorem` | [mem_shadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-shadow-iff-exists-mem-card-add-one--ffe93808fc3659483c1f2264.md) | 131 | `result-track:ffe93808fc3659483c1f2264435e432bd8c5afe2ef5e336bc45a77dbf36a71e7` |
| 11 | `theorem` | [exists_subset_of_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/exists-subset-of-mem-shadow--b34555a3cd484df2b5d42c81.md) | 145 | `result-track:b34555a3cd484df2b5d42c81166528693bbadd1c79102304d497cdea4c222c34` |
| 12 | `theorem` | [mem_shadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-shadow-iff-exists-mem-card-add--90f1bd2470b9cf73212aaa59.md) | 151 | `result-track:90f1bd2470b9cf73212aaa5987ccc976183cdb58e6c2f30c2a3bd60e360a413b` |
| 13 | `def` | [upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/upshadow--da6fc80c6b98f44ad603d4bc.md) | 190 | `declaration-track:da6fc80c6b98f44ad603d4bc09955b67b06f8640c4da5f3a283f9d9912492f59` |
| 14 | `theorem` | [upShadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/upshadow-empty--d3d817a26de23082e3e43683.md) | 199 | `result-track:d3d817a26de23082e3e436837c4ccadfd8be104ce96d5756650827c2ca9aa055` |
| 15 | `theorem` | [upShadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/upshadow-monotone--c875c5d00a48ed653a7ef4d8.md) | 205 | `result-track:c875c5d00a48ed653a7ef4d8af36d3b64122016407e9eb03a2fc18a339e352a4` |
| 16 | `theorem` | [mem_upShadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-upshadow-iff--2035ff7700d798830ba88158.md) | 211 | `result-track:2035ff7700d798830ba88158892de3a516febffe7798915b18604460ecf4bbaa` |
| 17 | `theorem` | [insert_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/insert-mem-upshadow--90c8e323e9c8cf7bf60e55b1.md) | 215 | `result-track:90c8e323e9c8cf7bf60e55b1cd60c78896966e8965fb9245932079263eb7f9df` |
| 18 | `theorem` | [Set.Sized.upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/set-sized-upshadow--391f3ebdb0db104618cffa17.md) | 220 | `result-track:391f3ebdb0db104618cffa174e23423a21c32dccd5cb52ff5ce0824bb25277e8` |
| 19 | `theorem` | [mem_upShadow_iff_erase_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-upshadow-iff-erase-mem--a2b46f544e81bad7d868aa9d.md) | 229 | `result-track:a2b46f544e81bad7d868aa9dff7a7bcd1e0942207b0d2cee6968e28e1b62622f` |
| 20 | `theorem` | [mem_upShadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-upshadow-iff-exists-mem-card-add-one--39a7ed871645d094b476e571.md) | 239 | `result-track:39a7ed871645d094b476e571f5254eaba7f810b09fe538089dae2cfc568acc12` |
| 21 | `theorem` | [exists_subset_of_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/exists-subset-of-mem-upshadow--a18663383270bcc39f380481.md) | 252 | `result-track:a18663383270bcc39f38048124aeab1ac9b67317bc6a6d6c719f15bead401c10` |
| 22 | `theorem` | [mem_upShadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/mem-upshadow-iff-exists-mem-card-add--2fa35166a88f9fe904c83ffa.md) | 258 | `result-track:2fa35166a88f9fe904c83ffae476f0d91e7f76f3432f1b3dafbe5565a654fc19` |
| 23 | `theorem` | [shadow_image_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/shadow-image-compl--5c3af652167a2abcb9d69241.md) | 287 | `result-track:5c3af652167a2abcb9d69241a13b44052ebbac7cba4bfbfef08a12e3bc8f0b31` |
| 24 | `theorem` | [upShadow_image_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/declarations/upshadow-image-compl--585b816fb755d1d649b64298.md) | 298 | `result-track:585b816fb755d1d649b642981f19aaa537a75e828d799ff640a3e4b53f5f1067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
