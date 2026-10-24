# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Defs.Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "273be70d9aa496c4018c50848720695adabf113a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `273be70d9aa496c4018c50848720695adabf113a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplexCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/simplexcategory--4c0cdbb7242d48bd56efc736.md) | 47 | `declaration-track:4c0cdbb7242d48bd56efc7360e1af74ad4453849be520cf2164f5a5145189565` |
| 2 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/mk--508eb53692032cc818a37313.md) | 54 | `declaration-track:508eb53692032cc818a37313dce36b99337de07690106036389c6dac05019d75` |
| 3 | `def` | [len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/len--5857aab0f9e5932e86240cca.md) | 62 | `declaration-track:5857aab0f9e5932e86240ccacdc47f5702ee1d487a3039d454dd430a4fe0ffcd` |
| 4 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/ext--68d60b637f015094e5ca7dc3.md) | 66 | `result-track:68d60b637f015094e5ca7dc3e94b8b7ca12cc6e51730fb766d452db3b763696c` |
| 5 | `theorem` | [len_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/len-mk--193d26a4c32fff740499559a.md) | 74 | `result-track:193d26a4c32fff740499559a15339c1e06cc8d56c76af1c012f273246d4e4f3e` |
| 6 | `theorem` | [mk_len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/mk-len--5c4d80aac0df2242e0eb631d.md) | 78 | `result-track:5c4d80aac0df2242e0eb631dd222984390b2d16c2ba11d06d98c00a8b6e71eca` |
| 7 | `def` | [rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/rec--2a0abec7c3d81780d6c18b72.md) | 82 | `declaration-track:2a0abec7c3d81780d6c18b727cefdf50d630f048d200cc556302710b96a135ef` |
| 8 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/hom--c16e973da7a8552b9c989c43.md) | 86 | `declaration-track:c16e973da7a8552b9c989c4372a9feb9b8e56afa56432dc8927c36bf206f6c0e` |
| 9 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/mk--623255398b5ee163ba02b3d9.md) | 92 | `declaration-track:623255398b5ee163ba02b3d9e00de568a1ce05075c7eb6111353dfd2cad9c755` |
| 10 | `def` | [toOrderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/toorderhom--dabe091ef120903be651cd60.md) | 96 | `declaration-track:dabe091ef120903be651cd600f106ba193c5338651854967234667fcad962a94` |
| 11 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/ext--c500e3d9fc41489aca00126c.md) | 100 | `result-track:c500e3d9fc41489aca00126cdf43c16354972c281b80e8d5af0bcb097019d243` |
| 12 | `theorem` | [mk_toOrderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/mk-toorderhom--19294a0de7ce36f0c08f9bda.md) | 107 | `result-track:19294a0de7ce36f0c08f9bda9bffa635c21cdac6b426fb2b5c5a7ac773705b34` |
| 13 | `theorem` | [toOrderHom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/toorderhom-mk--e1390e9fc9599dc11ab02556.md) | 111 | `result-track:e1390e9fc9599dc11ab025567c46464685f97851f40d10724bad3f6252a7bebc` |
| 14 | `theorem` | [mk_toOrderHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/mk-toorderhom-apply--30ce476968208fccdfc3af12.md) | 115 | `result-track:30ce476968208fccdfc3af123211cf41eb169f4777a2a5f906bfe4f368f6cdd9` |
| 15 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/id--26017e04c138b02835150a58.md) | 121 | `declaration-track:26017e04c138b02835150a583b12a06227b6564e8962959ecea8586353853057` |
| 16 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/comp--f177310e95d7e27db8605170.md) | 126 | `declaration-track:f177310e95d7e27db86051709d7ac3af1ae57c9bb75cc19e8256d02b8409c8d9` |
| 17 | `instance` | [smallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/smallcategory--cb554a85bcf781914563fc58.md) | 132 | `declaration-track:cb554a85bcf781914563fc587f25a9b8634b1281d52e93bb671ba87ff6aa3a30` |
| 18 | `lemma` | [id_toOrderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/id-toorderhom--30e3a194571a1100c1207448.md) | 138 | `result-track:30e3a194571a1100c120744857ed9c3452543784b213011969f31102ecf1cc55` |
| 19 | `lemma` | [comp_toOrderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/comp-toorderhom--b3a00fb6245a6292665bb042.md) | 142 | `result-track:b3a00fb6245a6292665bb04226c13aa1f74be4cb62a11b896e40bb45e4444835` |
| 20 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/hom-ext--f1d8ce7eba070b142e968074.md) | 146 | `result-track:f1d8ce7eba070b142e9680745aba813f10d8ecbb0e19b1638a2214ac094cc321` |
| 21 | `def` | [Truncated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/truncated--37a3c3414d29b417de30a1ce.md) | 151 | `declaration-track:37a3c3414d29b417de30a1cee2ff055ef4274fdd34a45e3ad9ea197c88509ab8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/instance--dd2702e364b0fd065b609cdc.md) | 154 | `declaration-track:dd2702e364b0fd065b609cdc9c7f7fd87e8d0e2f6150db6a40bf865080a7ba22` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/instance--2fd8d8dfd058ca3fe083f071.md) | 159 | `declaration-track:2fd8d8dfd058ca3fe083f07153487241e67cd55a414e1489534017e76fc7f9f7` |
| 24 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/inclusion--2c283477b2eae83b2a320d2b.md) | 165 | `declaration-track:2c283477b2eae83b2a320d2be44af5260bbc1926e2fa3cbed5dec6b1d4b0567b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/instance--5fedf4b3eaaaa684241e61e2.md) | 168 | `declaration-track:5fedf4b3eaaaa684241e61e28cb80e4c8c5605a1d0787ca9171ff039305014c6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/instance--9f145857f5704466937f42f9.md) | 169 | `declaration-track:9f145857f5704466937f42f9ae264ecf979e3d6b5e5ffdf3ef76c0873b38fdd6` |
| 27 | `def` | [inclusion.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/inclusion-fullyfaithful--0843b442ac3b419f5ce02f7e.md) | 172 | `declaration-track:0843b442ac3b419f5ce02f7e03e0743b9ce3ba716031e4b841d5e651631f8d9d` |
| 28 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/hom-ext--569c0ea34671ce092656a9df.md) | 177 | `result-track:569c0ea34671ce092656a9dfedb5cf9d7cb3669512088b0089042ed82efae5b6` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/macro--a4a9adf1efe353f28c62eba3.md) | 181 | `declaration-track:a4a9adf1efe353f28c62eba34014a4a94c71b3a51235f599f5f5faa95c10cc92` |
| 30 | `macro_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/macro-rules--c1a5dcd3bf0eea93990b07fc.md) | 189 | `declaration-track:c1a5dcd3bf0eea93990b07fc444ebd4793ba38ecb5180070036039ec6a1bca8d` |
| 31 | `abbrev` | [Hom.tr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/hom-tr--b21d95751b6b981fac113d9c.md) | 199 | `declaration-track:b21d95751b6b981fac113d9c83d939e8b21ab777a6efa1cea2fb072f43c24244` |
| 32 | `lemma` | [Hom.tr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/hom-tr-comp--643aca4214e55087af83e73c.md) | 204 | `result-track:643aca4214e55087af83e73c7c86fba7c9e3ba7c2ee2af15cd866d6d33417cb9` |
| 33 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/incl--ced2abc158a5c71ac5553e3b.md) | 211 | `declaration-track:ced2abc158a5c71ac5553e3be5f81f90f6a71f7a969d2b5fa96a04f9cf48831d` |
| 34 | `def` | [inclCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/declarations/inclcompinclusion--268196deeb532aef74733bed.md) | 216 | `declaration-track:268196deeb532aef74733beda24ff33c3703952a628376b1c2ca141fd5a39919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
