# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocalizerMorphism.Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e73bc93bc18354b9603e6d75f4a13ff4c82d20d5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e73bc93bc18354b9603e6d75f4a13ff4c82d20d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Equivalence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalizerMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/localizermorphism--02da2f90ba151fe31cc9f9f6.md) | 47 | `declaration-track:02da2f90ba151fe31cc9f9f68551dc822a4ba6c52bc9680e10410397af777568` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/id--dc11b24643c3940a0fed6b1d.md) | 57 | `declaration-track:dc11b24643c3940a0fed6b1d707816880bc9b2af2c7a63c8d7b05252107f36f5` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/comp--afad36548ff17979d2b98a3e.md) | 65 | `declaration-track:afad36548ff17979d2b98a3ee6a9a7adc0cb047a3143494a8608efb5a990592f` |
| 4 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/op--5c909f87564b87baa625437f.md) | 75 | `declaration-track:5c909f87564b87baa625437ffc4051895fbe4ed1ef81a768978fde05a472a561` |
| 5 | `lemma` | [inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/inverts--ac06c18734e78656e31074e9.md) | 81 | `result-track:ac06c18734e78656e31074e9d9bf31232c240d3ca2b110f12f670722611b2f2f` |
| 6 | `def` | [localizedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/localizedfunctor--70e0493503137ab04cca4bae.md) | 87 | `declaration-track:70e0493503137ab04cca4bae4e291a53600aaf9318735138565c3020adcbeb35` |
| 7 | `instance` | [liftingLocalizedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/liftinglocalizedfunctor--065ef2b7a023d76c28b03bfa.md) | 90 | `declaration-track:065ef2b7a023d76c28b03bfa296c3c790b661861f703d1705d77ad8a0f1c4c5a` |
| 8 | `instance` | [catCommSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/catcommsq--989e95ec570dbcce202956d0.md) | 97 | `declaration-track:989e95ec570dbcce202956d0659f6bd796fa5c395a6ceae4ba06809abe403db0` |
| 9 | `lemma` | [isEquivalence_imp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/isequivalence-imp--73f1c3927d09b79c98205f5c.md) | 113 | `result-track:73f1c3927d09b79c98205f5c6b28da985dbfeaf57a63e18d904276dfbd2466ab` |
| 10 | `lemma` | [isEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/isequivalence-iff--6e140e9726d8cf1a1a9bd3bc.md) | 130 | `result-track:6e140e9726d8cf1a1a9bd3bc7fd0316e2702197f58e47bfb096626ee591b0021` |
| 11 | `class` | [IsLocalizedEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/islocalizedequivalence--c04009d70bd97652ca1a71dc.md) | 137 | `declaration-track:c04009d70bd97652ca1a71dc5ef4ecd71752ad6153467ca32f5646d3cbb5209d` |
| 12 | `lemma` | [IsLocalizedEquivalence.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/islocalizedequivalence-mk--cb1a79d839ce426744ed917a.md) | 141 | `result-track:cb1a79d839ce426744ed917a8d32ea8628790299950e3c4d0217c4e2621ee235` |
| 13 | `lemma` | [isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/isequivalence--9afe2a176767060fa29f3d41.md) | 149 | `result-track:9afe2a176767060fa29f3d415bcc6de287db3d7582aaec8135258f27882dd378` |
| 14 | `instance` | [localizedFunctor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/localizedfunctor-isequivalence--ea3a3c4330ad93b22ccb7a72.md) | 156 | `declaration-track:ea3a3c4330ad93b22ccb7a72813fc70e1e17da9422f4e7e9ab772138c80a6612` |
| 15 | `lemma` | [IsLocalizedEquivalence.of_isLocalization_of_isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/islocalizedequivalence-of-islocalization-of-islocalization--0f6784ec4f6e83792726af0e.md) | 162 | `result-track:0f6784ec4f6e83792726af0e625c10a288976c98630ba29d23057851fdb80fd3` |
| 16 | `lemma` | [IsLocalizedEquivalence.of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/islocalizedequivalence-of-equivalence--1e0cde6980d5726f67a750ee.md) | 172 | `result-track:1e0cde6980d5726f67a750ee894eca84cea0fbed5a2b1d4ae75485ff4f33e136` |
| 17 | `instance` | [IsLocalizedEquivalence.isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/islocalizedequivalence-islocalization--a3e8fccfa2a483c848a17f55.md) | 184 | `declaration-track:a3e8fccfa2a483c848a17f554b96651d90ae718d774942c2e07aa81f22ebfd9b` |
| 18 | `def` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/declarations/arrow--1a2677a5f3357ddd67a7c2ae.md) | 191 | `declaration-track:1a2677a5f3357ddd67a7c2aeb640cb7b915bca0dbef9a4e83e3352eaab4cd84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
