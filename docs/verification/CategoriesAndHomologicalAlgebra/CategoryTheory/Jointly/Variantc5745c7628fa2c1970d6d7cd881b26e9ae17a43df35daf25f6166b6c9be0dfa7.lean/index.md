# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Jointly.Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a722106d022c8a908854dd04c10b11e1d43dd5a9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a722106d022c8a908854dd04c10b11e1d43dd5a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean.json)

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
| 1 | `structure` | [JointlyReflectIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectisomorphisms--d6690db518895c0b8d45b426.md) | 41 | `declaration-track:d6690db518895c0b8d45b426b65d2cc793af4fa580f04dcab84435d3f5dc9ddd` |
| 2 | `structure` | [JointlyReflectMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectmonomorphisms--51e881cd5bcac4ad5e329d2c.md) | 46 | `declaration-track:51e881cd5bcac4ad5e329d2ca33ad5d3c2d48606bc146052c2390f65877aaafb` |
| 3 | `structure` | [JointlyReflectEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectepimorphisms--fef921ff685df0039f792ce8.md) | 51 | `declaration-track:fef921ff685df0039f792ce8318b36d60a73b656d41761346c6a4c7c95e71e32` |
| 4 | `structure` | [JointlyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyfaithful--abb317ed11b4db6097cb4d6d.md) | 56 | `declaration-track:abb317ed11b4db6097cb4d6d189ef80a8af8539f1584dc765615be12c5077027` |
| 5 | `lemma` | [JointlyFaithful.of_jointly_reflects_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyfaithful-of-jointly-reflects-isiso-of-mono--0f91d727f79723621b16d7e0.md) | 62 | `result-track:0f91d727f79723621b16d7e0e0729ba50afeaef8265e4342e25794e26ed1a76b` |
| 6 | `lemma` | [isIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/isiso-iff--3852aee411b5be6813b96824.md) | 81 | `result-track:3852aee411b5be6813b96824f73924fba9dd336b6bbdcd890b5fbd5f52d29634` |
| 7 | `lemma` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/mono--f7e30e83ac652f411a5e5e7c.md) | 85 | `result-track:f7e30e83ac652f411a5e5e7c942709940b647d64327bb436f97ec1e67886680f` |
| 8 | `lemma` | [jointlyReflectMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectmonomorphisms--1763ed6b8baa3f8978438275.md) | 94 | `result-track:1763ed6b8baa3f897843827515dc99aaf43656322ddbd8c9ed62b8aa53aebdbb` |
| 9 | `lemma` | [epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/epi--4793a48844725ef648cb059b.md) | 99 | `result-track:4793a48844725ef648cb059b09cbcb2574cc9da256a106abb282878801a4eaf4` |
| 10 | `lemma` | [jointlyReflectEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectepimorphisms--d82dda8a8ce23e4dba2f402a.md) | 107 | `result-track:d82dda8a8ce23e4dba2f402ad72a2771dbaa365c90df6da6596a7165391d6efd` |
| 11 | `lemma` | [jointlyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyfaithful--0dc2fb3d12cc7bb7a91851b6.md) | 112 | `result-track:0dc2fb3d12cc7bb7a91851b6f585f260eafa31e6eb92b17f2d50dfe5f958df28` |
| 12 | `lemma` | [JointlyReflectMonomorphisms.mono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectmonomorphisms-mono-iff--f871250ad1077c14b062ed6d.md) | 118 | `result-track:f871250ad1077c14b062ed6d1b56a1fdd316bd80f532a19135169c6f85ae46e4` |
| 13 | `lemma` | [JointlyReflectEpimorphisms.epi_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectepimorphisms-epi-iff--3eb782f8e5fad548d857512f.md) | 123 | `result-track:3eb782f8e5fad548d857512fa0280f568bfd26e8deeb4e5d9706da01436bcdc5` |
| 14 | `lemma` | [jointlyReflectMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectmonomorphisms--b8f1af17136e550a22d65b21.md) | 130 | `result-track:b8f1af17136e550a22d65b21dbaa91c2f477d23453f467e7b1a0dddcfe2c21da` |
| 15 | `lemma` | [jointlyReflectEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectepimorphisms--4c3d3937228c77b1238376b5.md) | 135 | `result-track:4c3d3937228c77b1238376b5c40f2bc337484a40914a25e6f17a350437d7ff6f` |
| 16 | `lemma` | [jointlyReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variantc5745c7628fa2c1970d6d7cd881b26e9ae17a43df35daf25f6166b6c9be0dfa7.lean/declarations/jointlyreflectsisomorphisms--3976fd7b02a0f40dc11b67df.md) | 140 | `result-track:3976fd7b02a0f40dc11b67df0ae76b59bafe5918df73f8a321093d21f3c7e2ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
