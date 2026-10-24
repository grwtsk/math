# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1453f6fba97ae47b349a9d0fb923b0693cd2bb9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1453f6fba97ae47b349a9d0fb923b0693cd2bb9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.OfSection` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isgeneratedby--eb5476abe4e1e788ab6ee84a.md) | 45 | `declaration-track:eb5476abe4e1e788ab6ee84a2453243e064a4d9d5210968f49db8acd872c4025` |
| 2 | `lemma` | [isGeneratedBy_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isgeneratedby-iff--3795b14059ea7eabc7d1aac2.md) | 47 | `result-track:3795b14059ea7eabc7d1aac2c60daf42c67105279d7171bed5f3050d98d1badf` |
| 3 | `lemma` | [iSup_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isup-eq--25c042e9cc5a6d8278230eac.md) | 54 | `result-track:25c042e9cc5a6d8278230eac05e88d231cf3206380af67a7cfaaa2766f147bca` |
| 4 | `lemma` | [ofSection_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/ofsection-le--8b8da7a024b47efa77120661.md) | 56 | `result-track:8b8da7a024b47efa7712066137977181f274fd779749384aabe80855d444e3b3` |
| 5 | `lemma` | [mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/mem--c40fdc02013a79ff1b3e55cd.md) | 60 | `result-track:c40fdc02013a79ff1b3e55cd018933c12796c84be75786c315a4ef96b9a204d9` |
| 6 | `lemma` | [of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/of-equiv--585fc9e685b439db753d4877.md) | 64 | `result-track:585fc9e685b439db753d48771f53b052ac51a8a187139de02dc533cf7f80277d` |
| 7 | `lemma` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/image--bf05c46e7eb238d0eb963a19.md) | 75 | `result-track:bf05c46e7eb238d0eb963a198084751ec9172842a834276c340e22cc1482b1f5` |
| 8 | `class` | [IsFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isfinite--d966b1778ac3fe42e8c56dcf.md) | 84 | `declaration-track:d966b1778ac3fe42e8c56dcfa2fa7dbb16bd8b98893d0f7d386ae0ca4a520c95` |
| 9 | `def` | [Index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/index--3014f916d8f339a900774e2f.md) | 94 | `declaration-track:3014f916d8f339a900774e2f0507ecf81f2ea1fad0d58908a6b47380e853ba1d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/instance--b369c2763d7ac8d99aaba591.md) | 96 | `declaration-track:b369c2763d7ac8d99aaba591110761ade4f2ba9dbb699834b57a0427bdf51191` |
| 11 | `def` | [X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/x--ea7da50cf79b95d62bf0d111.md) | 102 | `declaration-track:ea7da50cf79b95d62bf0d1116920624f708316bb69ce44cf0f77303f642963a6` |
| 12 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/x--851e5ac2084e835766e8b02e.md) | 106 | `declaration-track:851e5ac2084e835766e8b02eb4220dee836506de71b9136957e6de5818017b45` |
| 13 | `lemma` | [isGeneratedBy_of_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isgeneratedby-of-isfinite--40fe1a99cc82aa0851cae9c8.md) | 111 | `result-track:40fe1a99cc82aa0851cae9c837dccde1f4da831a0583adf2b303110bfdbd575b` |
| 14 | `lemma` | [IsGeneratedBy.isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/isgeneratedby-isfinite--028df22da7c0d33e311c8e2e.md) | 115 | `result-track:028df22da7c0d33e311c8e2e5d1caa525ade05a098f29f53b448b3f1058ef634` |
| 15 | `lemma` | [image_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/image-isfinite--481e467d5da68550a0605fd4.md) | 121 | `result-track:481e467d5da68550a0605fd4032a608b97096aedc186028666ceba6a8635e821` |
| 16 | `abbrev` | [PresheafIsGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/presheafisgeneratedby--b4ee91d5de0b1e0268774953.md) | 135 | `declaration-track:b4ee91d5de0b1e0268774953ea231adcf8f5d5fcf86064bfbe794364dc983142` |
| 17 | `lemma` | [range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/range--2b0e780c337c48ccbbc1b847.md) | 143 | `result-track:2b0e780c337c48ccbbc1b84707bc28db484cae808a809607fede679cffa26194` |
| 18 | `lemma` | [of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/of-epi--3cede8788a7092171abf19b4.md) | 146 | `result-track:3cede8788a7092171abf19b435e41164752ea0d3da4d4fc5bc9ad1ac03c4eb7e` |
| 19 | `abbrev` | [PresheafIsFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/presheafisfinite--035079975a30a4b537932c6e.md) | 154 | `declaration-track:035079975a30a4b537932c6ea56a1c6532e3dd10c40642d75284fc99bc543cbe` |
| 20 | `lemma` | [presheafIsGeneratedBy_of_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/presheafisgeneratedby-of-isfinite--5a201b74919cb59fe060f8ec.md) | 156 | `result-track:5a201b74919cb59fe060f8ecefbb51618aeffcf70280e11c43b30a5e11924ebb` |
| 21 | `lemma` | [Subpresheaf.range_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/subpresheaf-range-isfinite--61702a5e9cf4db3089ca3315.md) | 160 | `result-track:61702a5e9cf4db3089ca33158f7e87251688270b2d3b5d2c37b695a6ac78fc23` |
| 22 | `lemma` | [presheafIsFinite_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/presheafisfinite-of-epi--6e96c0f0aa7ed6a9306578f7.md) | 164 | `result-track:6e96c0f0aa7ed6a9306578f783c7fd87634b86df4066ad738cc68c925b84a6ef` |
| 23 | `lemma` | [yoneda_obj_isGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/yoneda-obj-isgeneratedby--c1f04f7baba6f03898fe58b0.md) | 168 | `result-track:c1f04f7baba6f03898fe58b05756d2f7ade87f68927bb939e25d5cf35ff2c9e9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantdf38fab717fb698fa156bceddfbb8acf52ce8978c1421c4d4552856af4e12951.lean/declarations/instance--c1ae9e3b1b4bfe1563f01344.md) | 176 | `declaration-track:c1ae9e3b1b4bfe1563f0134410f63e6ee68ebbb4978feb87cdcc73d24141803f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
