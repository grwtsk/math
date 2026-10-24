# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1adb7471c009cb264f7cdc2b592a526503c72d95",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1adb7471c009cb264f7cdc2b592a526503c72d95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.BifunctorAssociator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Monoidal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/hastensor--108b950c844f2d72e83902c4.md) | 37 | `declaration-track:108b950c844f2d72e83902c4bc8ddd55a5465615b47ea390e343dd34102310d7` |
| 2 | `abbrev` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensorobj--91bb9bd6b4faf36ff1f249e2.md) | 44 | `declaration-track:91bb9bd6b4faf36ff1f249e280cf66c21f9d445cbe5fbb09d7c52791e5b53b16` |
| 3 | `abbrev` | [ιTensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensorobj--bceaa65af22713ae2fa04859.md) | 50 | `declaration-track:bceaa65af22713ae2fa04859bb68f8225f8738f0b6e38aafd5092aa0ab725bbb` |
| 4 | `abbrev` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensorhom--c37fb3dcbd1bad5b1d2e8967.md) | 56 | `declaration-track:c37fb3dcbd1bad5b1d2e896703cee1e04f03b257eeead7be4fa7ef76407e5c62` |
| 5 | `abbrev` | [HasGoodTensor₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/hasgoodtensor--3b88b5ae8ae92d38ce2ed216.md) | 64 | `declaration-track:3b88b5ae8ae92d38ce2ed216e247e526aeb2cd11feac68f210a75a1de1cf26c5` |
| 6 | `abbrev` | [HasGoodTensor₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/hasgoodtensor--4cffc6478bbc6fa60e9f0266.md) | 70 | `declaration-track:4cffc6478bbc6fa60e9f026664293d4ae2d03398c7e50407f2892ad5867adb48` |
| 7 | `abbrev` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/associator--a6998f75595c8fad570129e5.md) | 74 | `declaration-track:a6998f75595c8fad570129e5fb6a1921fe57dbcfb6023b7f30a85644a31e6092` |
| 8 | `abbrev` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensorunit--8a2c6cabb14e41bfeb4cb4b7.md) | 83 | `declaration-track:8a2c6cabb14e41bfeb4cb4b776391b02b7b119ebdedb9984a0f965f377cae5a6` |
| 9 | `def` | [tensorUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensorunitiso--ece60393adb0a89b64ca41c3.md) | 88 | `declaration-track:ece60393adb0a89b64ca41c37a68900217cdbd8b308fdf9bc225d4edf4c463dc` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--21c2066a35ca63ad9cc2be0f.md) | 102 | `declaration-track:21c2066a35ca63ad9cc2be0f1ae8b0ec7b096d799e2617e7a713ccbe3d4404fa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--7cdbc36a32134189245df695.md) | 106 | `declaration-track:7cdbc36a32134189245df695d232dfc851059ec3cf00baef033452f0e494cf51` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--75e2865609db5250d437bbea.md) | 111 | `declaration-track:75e2865609db5250d437bbeac5b81c72cb35923668c764677c1acac15098128e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--8167cd0a88cd386d6b0c9f2f.md) | 124 | `declaration-track:8167cd0a88cd386d6b0c9f2f58e4d62f0423a362ab6095bf3b15438e4f920ab3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--e5e1ada2a8173e64eb6a7bef.md) | 127 | `declaration-track:e5e1ada2a8173e64eb6a7bef5ab1295f04b1f59289f0732fab90e098196e633e` |
| 15 | `lemma` | [unit_tensor_d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/unit-tensor-d--b9629b82b77a579bafdb3bf0.md) | 131 | `result-track:b9629b82b77a579bafdb3bf0599cf2cc5a395eee34fda606dc2f3b9046a3983b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--149680189dc46019b5991f37.md) | 146 | `declaration-track:149680189dc46019b5991f37055fc4f827c2f21306b0ddc149223c464e8d7699` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/instance--f23454e78bcde8c8271e11d5.md) | 149 | `declaration-track:f23454e78bcde8c8271e11d5cbfdf90172977c4367d381c02bc2c274a7beb5b6` |
| 18 | `lemma` | [tensor_unit_d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/tensor-unit-d--9c34258d5a932d44981c8abe.md) | 153 | `result-track:9c34258d5a932d44981c8abea4912fd930d8879d4eb12b4047ec0d1f6cbb4f63` |
| 19 | `def` | [leftUnitor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/leftunitor--f17c62471e3ba40232a3ee22.md) | 175 | `declaration-track:f17c62471e3ba40232a3ee22bbe2136c9a2848fcedb962757b1c58b642e229d3` |
| 20 | `lemma` | [leftUnitor'_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/leftunitor-inv--3b3d780deacf13779d65211b.md) | 180 | `result-track:3b3d780deacf13779d65211b74b1d27f83a84504ca7d60be84e003dd3b6a4680` |
| 21 | `lemma` | [leftUnitor'_inv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/leftunitor-inv-comm--42dfb005215fbc47ac7fafe7.md) | 195 | `result-track:42dfb005215fbc47ac7fafe787130f7a30a064d57806867a9fc0d714523b7718` |
| 22 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/leftunitor--59caf63436575fadb2056523.md) | 209 | `declaration-track:59caf63436575fadb2056523b18454dbd67a46ce3f7e06ba0ce806beecc1edb6` |
| 23 | `def` | [rightUnitor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/rightunitor--ca44b7249a1c816a8812edbd.md) | 221 | `declaration-track:ca44b7249a1c816a8812edbda860899919906c5ff7a08bb7e8c955c4790e8e42` |
| 24 | `lemma` | [rightUnitor'_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/rightunitor-inv--7f9553f24c9c0a16b70f6006.md) | 226 | `result-track:7f9553f24c9c0a16b70f6006d063b8ae7cd8adbeaf0d47488ea1f60813c7f38b` |
| 25 | `lemma` | [rightUnitor'_inv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/rightunitor-inv-comm--2a5e661a6fc30cfe83da80a2.md) | 240 | `result-track:2a5e661a6fc30cfe83da80a28f199c57ca6dbbf3d20bfea35995e810e101f912` |
| 26 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/rightunitor--0d471f5ed336b692867d4a6a.md) | 254 | `declaration-track:0d471f5ed336b692867d4a6acc7ad5c99c32a973342c775e41c1cd34fca03889` |
| 27 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/monoidalcategorystruct--4c24791ec828391423a19f35.md) | 271 | `declaration-track:4c24791ec828391423a19f35a959b5339db49c59dcd45f39e8ebac9266b591d4` |
| 28 | `def` | [Monoidal.inducingFunctorData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/monoidal-inducingfunctordata--4c207b3f1fbe00b789501d63.md) | 285 | `declaration-track:4c207b3f1fbe00b789501d630108cb5132d3290b768b56dc8677796fb9140517` |
| 29 | `instance` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/monoidalcategory--d843f8dd707121998b4c6afb.md) | 322 | `declaration-track:d843f8dd707121998b4c6afba45b8a221b96dc4be862eba1ce4d5c54c49872c5` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantb222820bfaa3a126d0f7337c4e051f32d79d45bbf5411b8196177db96ae655fa.lean/declarations/example--95fa44665510b99ea46b90ab.md) | 325 | `declaration-track:95fa44665510b99ea46b90ab4f42e04d733fda22955dfb47f9afffabf90e8172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
