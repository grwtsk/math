# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coverage.Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00bf0da536dbd538c0d37e6d10a8db7875604927",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00bf0da536dbd538c0d37e6d10a8db7875604927`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThruAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/factorsthrualong--bd913ae90fcd2a412d81a009.md) | 65 | `declaration-track:bd913ae90fcd2a412d81a0092f6cc8212f16529a32b235b31abb203995190605` |
| 2 | `def` | [FactorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/factorsthru--23922059302ea7f864d26dfb.md) | 77 | `declaration-track:23922059302ea7f864d26dfb0f52c6e779240175afbe39762460c4442ac12679` |
| 3 | `lemma` | [factorsThruAlong_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/factorsthrualong-id--1d90964df011a74eb7cf1604.md) | 82 | `result-track:1d90964df011a74eb7cf16042c0681eb6af41881a4f10a4dfb15b078b1cbde1c` |
| 4 | `lemma` | [factorsThru_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/factorsthru-of-le--c0b4fca06aa23e12213d42a8.md) | 86 | `result-track:c0b4fca06aa23e12213d42a801d6641c60c104cd1929dd5d83523ad577dedc80` |
| 5 | `lemma` | [le_of_factorsThru_sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/le-of-factorsthru-sieve--e73c1737560dffd83049bbd5.md) | 90 | `result-track:e73c1737560dffd83049bbd5a2a83f73fe7008e1cd71bf310b1cf0b846839ead` |
| 6 | `lemma` | [factorsThru_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/factorsthru-top--3978e71c7a2199f9ebe3c8db.md) | 96 | `result-track:3978e71c7a2199f9ebe3c8db1abfe871c137ae143614f2e525650d5b47e3d09b` |
| 7 | `lemma` | [isSheafFor_of_factorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/issheaffor-of-factorsthru--a702586fd2d3715467cf02d3.md) | 99 | `result-track:a702586fd2d3715467cf02d3115b7f47567d22867115f10750c02f1ae401c85d` |
| 8 | `structure` | [Coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/coverage--aa0961c6a98eadc907b555d0.md) | 145 | `declaration-track:aa0961c6a98eadc907b555d0a53f200637564c8bacf6963d46586867886ab35a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/instance--9c68178ca7f521927a467e5c.md) | 155 | `declaration-track:9c68178ca7f521927a467e5c037fcf169f5f656a7aaa052ceb235cd025abe2ed` |
| 10 | `def` | [ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/ofgrothendieck--09844b27a3c54a25539e548a.md) | 165 | `declaration-track:09844b27a3c54a25539e548ad65ddce0848e1bed96da55c434ad564cb2972f93` |
| 11 | `lemma` | [ofGrothendieck_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/ofgrothendieck-iff--115fed97aa589b6786b3307c.md) | 174 | `result-track:115fed97aa589b6786b3307c7b89a428eaae5d6fdcfcad27a349fbefd63ba293` |
| 12 | `inductive` | [Saturate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/saturate--d8dade67f9e3377f9c7135ba.md) | 181 | `declaration-track:d8dade67f9e3377f9c7135ba55fa5ba23cea29129ad9befb88e304f406405ac3` |
| 13 | `lemma` | [eq_top_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/eq-top-pullback--2539dbf47eb23b5317837b4d.md) | 189 | `result-track:2539dbf47eb23b5317837b4dd4bb371c6f8bcf2789d968c0b52383dd0f0ee4ff` |
| 14 | `lemma` | [saturate_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/saturate-of-superset--3869f927d0a3d9399472029a.md) | 197 | `result-track:3869f927d0a3d9399472029a16843e8f67c9a422d4898f8ffd7e8ef133c06019` |
| 15 | `def` | [toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/togrothendieck--7b17594da757bd5a4b73e86a.md) | 218 | `declaration-track:7b17594da757bd5a4b73e86a591a35ded7f962287f712603ec8ce95508c33857` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/instance--44f01d12aa970de69924dedc.md) | 241 | `declaration-track:44f01d12aa970de69924dedc064b56951d13a10986c2fdaf9d4fc35ed222c52a` |
| 17 | `def` | [gi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/gi--4eb22f07e295d9b3c59dabc5.md) | 253 | `declaration-track:4eb22f07e295d9b3c59dabc5703bbf45672105aa5981833aaa025e8ecda69ba0` |
| 18 | `theorem` | [toGrothendieck_eq_sInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/togrothendieck-eq-sinf--caf4b0cba700fab1c4465ef3.md) | 275 | `result-track:caf4b0cba700fab1c4465ef31fcf9cb233ef6e07cf2e111053d50a161c191746` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/instance--5a8b3f0ff4a64a19a9369422.md) | 288 | `declaration-track:5a8b3f0ff4a64a19a9369422b4892b1244bb38cbe2fca870b66e794114c83b95` |
| 20 | `lemma` | [sup_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/sup-covering--2945e5934b8cc91c8cc5e618.md) | 303 | `result-track:2945e5934b8cc91c8cc5e6189c253e7961b10b0f6139fda043b9075dd03ae67d` |
| 21 | `theorem` | [mem_toGrothendieck_sieves_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/mem-togrothendieck-sieves-of-superset--fa8e54f13129be9053f4ae73.md) | 311 | `result-track:fa8e54f13129be9053f4ae734f983124122306616499282dd3c7d7ea4ccb21ec` |
| 22 | `theorem` | [isSheaf_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/issheaf-coverage--e66e3a618140d6630403926f.md) | 326 | `result-track:e66e3a618140d6630403926f7c119eeb8450f36dde548ee79f7edef6352aa0bc` |
| 23 | `theorem` | [isSheaf_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/issheaf-sup--9e3b7dfb3384df626a565cd8.md) | 400 | `result-track:9e3b7dfb3384df626a565cd8151499d498c1a8e5b2446c0008e97ef8c0faa885` |
| 24 | `theorem` | [isSheaf_iff_isLimit_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/issheaf-iff-islimit-coverage--f5ecf14b7b6fd71497e25977.md) | 416 | `result-track:f5ecf14b7b6fd71497e25977d6c9aac4f838013c8fd41e25cc7632c8b33ffdcd` |
| 25 | `theorem` | [isSheaf_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/declarations/issheaf-sup--dbdc9c6841d4cfb1fa285a5b.md) | 424 | `result-track:dbdc9c6841d4cfb1fa285a5b0d7f2bf8e7de7a737d386ef0426502403a6e360d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
