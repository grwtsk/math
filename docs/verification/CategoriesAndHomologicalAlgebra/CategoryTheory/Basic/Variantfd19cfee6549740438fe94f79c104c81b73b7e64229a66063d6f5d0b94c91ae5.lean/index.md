# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449f55e37eafa65c5533853732a0e9f14f6b90e8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449f55e37eafa65c5533853732a0e9f14f6b90e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean.json)

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
| 1 | `class` | [ConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/concretecategory--75b155256fded2d012509350.md) | 69 | `declaration-track:75b155256fded2d0125093509f2d5ea6eddba8881165a0f824051f6daed96732` |
| 2 | `abbrev` | [ToType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/totype--2e4f9080db516a06921987a3.md) | 92 | `declaration-track:2e4f9080db516a06921987a3afd7bdaeebbda7757b0411a86bb6480c31d83160` |
| 3 | `abbrev` | [ToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/tohom--9a8913fe2adcad83f0cfe5af.md) | 99 | `declaration-track:9a8913fe2adcad83f0cfe5af9de7452bc7482179dd44bdbc33b203979770c74e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/instance--70dcc9b020fc4511da479667.md) | 108 | `declaration-track:70dcc9b020fc4511da4796678b2400e7b68a18fb0a0f4023a83057f59fef7522` |
| 5 | `abbrev` | [instFunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/instfunlike--6b1438999f3dbb5f9992070d.md) | 113 | `declaration-track:6b1438999f3dbb5f9992070d079c88e620b9c3cb4771b8095a88e54cec71a20b` |
| 6 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/homequiv--4a29896db0a2b2df4e7e2fa3.md) | 126 | `declaration-track:4a29896db0a2b2df4e7e2fa360fb1a2651cceee43255fcd9431230dce82cba67` |
| 7 | `lemma` | [hom_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-bijective--adbf191c64e88c9f1d717c5d.md) | 132 | `result-track:adbf191c64e88c9f1d717c5dac06d402ab18a7cc6f24262c625212ebb94c7ea1` |
| 8 | `lemma` | [hom_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-injective--e45f115caa370c2b021ae504.md) | 135 | `result-track:e45f115caa370c2b021ae5040dcea4cf6e0e0196ae243ecb46dbd270b9bc76cb` |
| 9 | `lemma` | [hom_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-surjective--9fa14cc4b523e0e1873627e8.md) | 138 | `result-track:9fa14cc4b523e0e1873627e8940de8080bbf0ea78b99945495362644b2a4199c` |
| 10 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/ext--0b8a39f2455ea467ce67a1b0.md) | 142 | `result-track:0b8a39f2455ea467ce67a1b06d3d58103c61cc57d6d0291eeae2e1efa8bd4543` |
| 11 | `lemma` | [coe_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/coe-ext--4eb2f4b3dd668f65644e739f.md) | 145 | `result-track:4eb2f4b3dd668f65644e739f4663a8ed42fab14d74d2d0a917416e2eae742cb7` |
| 12 | `lemma` | [ext_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/ext-apply--3d2e35c26191512527cc699d.md) | 148 | `result-track:3d2e35c26191512527cc699d4b5c52bfa1bc71e593d37a98d640ff86c4c23c55` |
| 13 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-ext--7848b3b637d7692a960f3e85.md) | 153 | `result-track:7848b3b637d7692a960f3e8571acb29cede5883410d895ed8d90b638113d01f0` |
| 14 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/congr-hom--8a6ca286aebe19624bc63ec9.md) | 159 | `result-track:8a6ca286aebe19624bc63ec9aa3fafab3f2feb7cffa72f829bfbd3b058524604` |
| 15 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/coe-id--9ecc441998a4237de8bbeb21.md) | 162 | `result-track:9ecc441998a4237de8bbeb218c3e83a4f076e49e0c671f7611fa4ead2d2f2e7e` |
| 16 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/coe-comp--f976777cf88d154d14f8b26e.md) | 166 | `result-track:f976777cf88d154d14f8b26e4a75248bdd702f03f1129e838a21e19ef4dd33b0` |
| 17 | `theorem` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.CategoryTheory.id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-concretecateg--5e803f8c8d9ae45ec0c31f89.md) | 170 | `result-track:5e803f8c8d9ae45ec0c31f893cc9c27f811109a457e30bcdde7418e4fdfe5501` |
| 18 | `theorem` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.CategoryTheory.comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-concretecateg--c88ffdffe905362dcc334064.md) | 174 | `result-track:c88ffdffe905362dcc334064802f7e8ab8eae580c868188da4ff62a64bc4eef3` |
| 19 | `theorem` | [congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/congr-arg--d08f31f1547bf72634b76399.md) | 178 | `result-track:d08f31f1547bf72634b763998ea839aff30e507c22c7ccb0467393279034db33` |
| 20 | `theorem` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-id--79b1a241603f80fd0cb5b848.md) | 183 | `result-track:79b1a241603f80fd0cb5b848b5865c009faf5a5520b694755b9f0b08ac910248` |
| 21 | `theorem` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/hom-comp--c5bbd63259a639393840ac49.md) | 187 | `result-track:c5bbd63259a639393840ac49baa90ca8c9c04b3a764e7d53ffbdef276f2d5356` |
| 22 | `instance` | [InducedCategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/inducedcategory-concretecategory--2ea7c20ff89686cffd468b52.md) | 193 | `declaration-track:2ea7c20ff89686cffd468b52e2cc30cece4aa36bbb2cc6353fb457ad314656a7` |
| 23 | `instance` | [ObjectProperty.FullSubcategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/objectproperty-fullsubcategory-concretecategory--f88a6850daea72a803bdb829.md) | 204 | `declaration-track:f88a6850daea72a803bdb829f0946a96133671bf2f6848548009e01a7992aa50` |
| 24 | `lemma` | [NatTrans.naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd19cfee6549740438fe94f79c104c81b73b7e64229a66063d6f5d0b94c91ae5.lean/declarations/nattrans-naturality-apply--d85dc8c847bb1cb01865b9b3.md) | 227 | `result-track:d85dc8c847bb1cb01865b9b3f2cb11f21516c7dc77f4d7d123b5ba197c6f80b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
