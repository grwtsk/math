# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47e38e5bfb0f3a78a44f8284334a3c8257a51e7a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47e38e5bfb0f3a78a44f8284334a3c8257a51e7a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Types` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory--7737493a41dec15aae483970.md) | 63 | `declaration-track:7737493a41dec15aae483970889f81b557b7f5a3764abe84f38e45640ba0d403` |
| 2 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget--5d4c1f245a7a996ce22cef78.md) | 76 | `declaration-track:5d4c1f245a7a996ce22cef78bed3b38f5d46d041209d382cc10ef42c7a8226da` |
| 3 | `instance` | [ConcreteCategory.types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-types--dac2186d26f8ec819460ea59.md) | 82 | `declaration-track:dac2186d26f8ec819460ea5963ec57fa0ba0d35dd022d5442028bb6dfae14650` |
| 4 | `def` | [ConcreteCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-hascoetosort--fa7350691ab31cfa85ccb507.md) | 94 | `declaration-track:fa7350691ab31cfa85ccb507b020cba844bd2e30ccb01b74b3d795466a60c251` |
| 5 | `def` | [ConcreteCategory.funLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-funlike--10a4a39685a87226ef9cdd07.md) | 109 | `declaration-track:10a4a39685a87226ef9cdd07080e4dacdd9c1e517630a01f447b21831c25b24a` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-hom-ext--3332f047930d51a970d59fe8.md) | 116 | `result-track:3332f047930d51a970d59fe8e61f489c4e7d521fb57a062565da6e5d47af9a47` |
| 7 | `theorem` | [forget_map_eq_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget-map-eq-coe--bb4e704f2953a228b7a8455a.md) | 123 | `result-track:bb4e704f2953a228b7a8455a8b5cd5cab546e879f7aa466ae90681a27550a0b4` |
| 8 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/congr-hom--94ab06a0648fd553b230247d.md) | 129 | `result-track:94ab06a0648fd553b230247d9c4137fa936ec20385cf6b7c68910706e404c305` |
| 9 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/coe-id--3a53630fefa204a0acadad33.md) | 133 | `result-track:3a53630fefa204a0acadad33ee911ffec55c5e54c4f0d9d86264911fd973c172` |
| 10 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/coe-comp--bcfa261b856574e0b652486d.md) | 137 | `result-track:bcfa261b856574e0b652486de8aa5fbee4de115ed2c4188dc90dd56d5dd0cd6a` |
| 11 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/id-apply--1e50198aa1a554a0ce1ed393.md) | 141 | `result-track:1e50198aa1a554a0ce1ed393f200c3cfc00ec7b8aa566b8c8a99d292c3ac0f4d` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/comp-apply--51466fc953c2305ec469c1ca.md) | 145 | `result-track:51466fc953c2305ec469c1ca31669b38c8070a6fcb10a9125f7bcf58fcb5b5df` |
| 13 | `theorem` | [comp_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/comp-apply--d52bbb581657b7f3ebfc551e.md) | 149 | `result-track:d52bbb581657b7f3ebfc551e8dff625e5a10214fb3812ae6ac63ae5a0b2ebb9a` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-congr-hom--f7df6462bd04eaea488e6224.md) | 152 | `result-track:f7df6462bd04eaea488e6224b4b2954a0651c33da9dcb040eded850d86f4aa27` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-congr-arg--2ef71a7583ccf3b3ef897845.md) | 156 | `result-track:2ef71a7583ccf3b3ef897845049cd89c8c95dfeb97d790aa1247b18604bfc950` |
| 16 | `theorem` | [ConcreteCategory.mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-mono-of-injective--47b7f419ed5cb1e1324fe43e.md) | 161 | `result-track:47b7f419ed5cb1e1324fe43e5e3d44e19451cd83341a484e75ea41393cd89d07` |
| 17 | `theorem` | [ConcreteCategory.injective_of_mono_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-injective-of-mono-of-preservespullback--e9fbc07a3059ecb83b807766.md) | 166 | `result-track:e9fbc07a3059ecb83b807766d630b838806023fe9528c2fbb904bd9f121189fc` |
| 18 | `theorem` | [ConcreteCategory.mono_iff_injective_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-mono-iff-injective-of-preservespullback--48b57e1083f9a3de4860c2e7.md) | 171 | `result-track:48b57e1083f9a3de4860c2e7b2d9d66d58c250b773776db3a4e042020d82d554` |
| 19 | `theorem` | [ConcreteCategory.epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-epi-of-surjective--e859e2751d0610ecd25f616b.md) | 177 | `result-track:e859e2751d0610ecd25f616b65f9dec3aa660b294acad8d2fc28564a139d4d8e` |
| 20 | `theorem` | [ConcreteCategory.surjective_of_epi_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-surjective-of-epi-of-preservespushout--a720ed4817411b60d846c77b.md) | 182 | `result-track:a720ed4817411b60d846c77bc2d96487a0e7e7c7f5e014b010f49b1a3dd0c5c8` |
| 21 | `theorem` | [ConcreteCategory.epi_iff_surjective_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-epi-iff-surjective-of-preservespushout--f9d4fec945b3ba4e609c5d65.md) | 187 | `result-track:f9d4fec945b3ba4e609c5d65704ca2f61899a397943e78ab050a3bde027357d2` |
| 22 | `theorem` | [ConcreteCategory.bijective_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-bijective-of-isiso--d5f5ba1e1b7ef42cc180805e.md) | 192 | `result-track:d5f5ba1e1b7ef42cc180805efd8e8ac15da011960bd6c22026771121325241e1` |
| 23 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/concretecategory-hascoetofun-type--e5c457d8051e28db65089225.md) | 199 | `result-track:e5c457d8051e28db650892258d079a37a3ce0e47418b3f9115d3e0797c7ee1c8` |
| 24 | `class` | [HasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/hasforget--ca3546eff26bf35cb79935fc.md) | 207 | `declaration-track:ca3546eff26bf35cb79935fcee6f822a112fcd6d990b89078629088949a25052` |
| 25 | `def` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget--f48007a86bebfa64f84b5359.md) | 218 | `declaration-track:f48007a86bebfa64f84b535919f2ce1936b894f60952649fe0b42ff24a4b406c` |
| 26 | `instance` | [forget₂_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget-faithful--854d78a291ac87440b388006.md) | 223 | `declaration-track:854d78a291ac87440b388006f0234bc58be6b8768ed84d44335b94839bd8af3b` |
| 27 | `instance` | [forget₂_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget-preservesmonomorphisms--1c70544c0dab65c925d93b3a.md) | 228 | `declaration-track:1c70544c0dab65c925d93b3aa99e07813555d0cf9006abfbaa4f1efc594020ff` |
| 28 | `instance` | [forget₂_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/forget-preservesepimorphisms--a00aa68b2190ff7a431151a6.md) | 238 | `declaration-track:a00aa68b2190ff7a431151a6f96cc786c03262c271fdd84a4f3363cf4a8e0c85` |
| 29 | `instance` | [InducedCategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/inducedcategory-concretecategory--bec800c7253981f287efaa15.md) | 248 | `declaration-track:bec800c7253981f287efaa15705a04e018f2a45a635061d5e546be910b9183b3` |
| 30 | `instance` | [InducedCategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/inducedcategory-hasforget--f3bbb73b8eee95f2f22f351c.md) | 254 | `declaration-track:f3bbb73b8eee95f2f22f351ca052181306e2647403025963b07b4afd5250e4ca` |
| 31 | `instance` | [FullSubcategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/fullsubcategory-concretecategory--a7ee3715e93e896b57ee1039.md) | 260 | `declaration-track:a7ee3715e93e896b57ee10395c51aa849605cb80b7d660b1708d1aac7b784004` |
| 32 | `instance` | [FullSubcategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/fullsubcategory-hasforget--3e303565614134c7d066d86e.md) | 265 | `declaration-track:3e303565614134c7d066d86e22bc12291620d24a6a5860e46e885e4f9ae65580` |
| 33 | `def` | [HasForget₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/hasforget-mk--d243a93c820421726c8df27e.md) | 274 | `declaration-track:d243a93c820421726c8df27e0e38ac4dc768257949b29eee8536bbbc38f5a87e` |
| 34 | `def` | [hasForgetToType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/declarations/hasforgettotype--d0ae9158f658ebff47aae001.md) | 286 | `declaration-track:d0ae9158f658ebff47aae001a173c0b7805c339bc1f03bfa575245308195f324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
