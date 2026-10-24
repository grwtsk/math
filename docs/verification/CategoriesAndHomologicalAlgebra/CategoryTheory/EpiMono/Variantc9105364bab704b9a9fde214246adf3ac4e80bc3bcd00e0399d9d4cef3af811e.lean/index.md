# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4763cf94ed93f51d03a1e7d845000bb13cfa0be5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4763cf94ed93f51d03a1e7d845000bb13cfa0be5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Concrete` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/mono-of-injective--229f15d0a576d737d45b1543.md) | 46 | `result-track:229f15d0a576d737d45b154309e3c58847466e44de8a56fa3cb8ac98038e50e6` |
| 2 | `instance` | [forget₂_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/forget-preservesmonomorphisms--afb9b82545706bcaf98019b5.md) | 50 | `declaration-track:afb9b82545706bcaf98019b5fc2304d0f5a4e914c806c7b21e847bc46eba1a7d` |
| 3 | `instance` | [forget₂_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/forget-preservesepimorphisms--45c7fdca1c366f57d8d6b387.md) | 59 | `declaration-track:45c7fdca1c366f57d8d6b38769b29e860d928ce854697e371f37129b7d0ca4cd` |
| 4 | `lemma` | [surjective_le_epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/surjective-le-epimorphisms--3c2b3d1f10c3cd388dc6febe.md) | 70 | `result-track:3c2b3d1f10c3cd388dc6febe31810f0358cd01e7e273e02b3e2210fbcbadb7e3` |
| 5 | `lemma` | [injective_le_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/injective-le-monomorphisms--c111540cee84942af11d1e0f.md) | 74 | `result-track:c111540cee84942af11d1e0f2702abea83febfec3f1ef24d3092941d9f7b2fd2` |
| 6 | `lemma` | [surjective_eq_epimorphisms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/surjective-eq-epimorphisms-iff--b00c3d73f60de2df0798d085.md) | 78 | `result-track:b00c3d73f60de2df0798d085db6edf8918ca938836f3d067c4bb33b47fc93df3` |
| 7 | `lemma` | [injective_eq_monomorphisms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/injective-eq-monomorphisms-iff--fbf6d295cf251ed68859861f.md) | 95 | `result-track:fbf6d295cf251ed68859861f49b7e36127b320f4529616acd91be293f9e0f1b9` |
| 8 | `lemma` | [injective_eq_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/injective-eq-monomorphisms--0e73966c5c71d84318de9d58.md) | 112 | `result-track:0e73966c5c71d84318de9d58c5043a80d2cee69f959d099ed774d3539ab730f1` |
| 9 | `lemma` | [surjective_eq_epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/surjective-eq-epimorphisms--5f091e4da2f93262854237d6.md) | 117 | `result-track:5f091e4da2f93262854237d6bae9755144ac3e521ef98109792adbc1f3c615c5` |
| 10 | `def` | [functorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/functorialsurjectiveinjectivefactorizationdata--bd6b8e7df49c9f9e51e91f10.md) | 128 | `declaration-track:bd6b8e7df49c9f9e51e91f105879142c6ca00308c35f140654d33227c7a456d0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/instance--37ff420c1dd8f623574e15a2.md) | 134 | `declaration-track:37ff420c1dd8f623574e15a25f031965a30e8606b1bc8bae30614480ae411e5f` |
| 12 | `theorem` | [injective_of_mono_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/injective-of-mono-of-preservespullback--27907d333e9de0bd1ca4ae7a.md) | 144 | `result-track:27907d333e9de0bd1ca4ae7a028bf508408a3d9e54a91d033ee20836c8ed7b68` |
| 13 | `theorem` | [mono_iff_injective_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/mono-iff-injective-of-preservespullback--0cf61bcd7091e95e49c2bd96.md) | 148 | `result-track:0cf61bcd7091e95e49c2bd968c08695750ef696e61cb29ecbdc21a4e2be197ce` |
| 14 | `theorem` | [epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/epi-of-surjective--fb0b42e7a542f31e48a1c1dd.md) | 153 | `result-track:fb0b42e7a542f31e48a1c1dd1ba3c77587ae3a65cf0a24cb31993aedfc2cbdc1` |
| 15 | `theorem` | [surjective_of_epi_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/surjective-of-epi-of-preservespushout--62290f3ea2e2ab7688f5865e.md) | 157 | `result-track:62290f3ea2e2ab7688f5865e2288dfb9a2aa1e4167d589d4943b93ffe2908122` |
| 16 | `theorem` | [epi_iff_surjective_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/epi-iff-surjective-of-preservespushout--2813512213588608ced30db8.md) | 161 | `result-track:2813512213588608ced30db8352f7d30c04212e65cd25609a5d6a09edde6a5b1` |
| 17 | `theorem` | [bijective_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/bijective-of-isiso--a76978639cbb15c6ab4c04b4.md) | 165 | `result-track:a76978639cbb15c6ab4c04b444bbf4fc4951020fa7100071e15ab53d6fdb086b` |
| 18 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc9105364bab704b9a9fde214246adf3ac4e80bc3bcd00e0399d9d4cef3af811e.lean/declarations/isiso-iff-bijective--b450bfbcfe428f30b812bf69.md) | 172 | `result-track:b450bfbcfe428f30b812bf693c035614eb1cf4b7ed231e6f93f6d497165a7100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
