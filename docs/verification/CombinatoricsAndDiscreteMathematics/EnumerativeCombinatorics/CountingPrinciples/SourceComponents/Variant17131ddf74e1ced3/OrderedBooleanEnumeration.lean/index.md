# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant17131ddf74e1ced3.OrderedBooleanEnumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "893624f09af250619535748fd5dbba0477c4c71d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `893624f09af250619535748fd5dbba0477c4c71d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 19; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant17131ddf74e1ced3.FiniteBooleanCarriers`](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/SourceComponents/Variant17131ddf74e1ced3/FiniteBooleanCarriers.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hypercube.vertices](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-vertices--7d02324e27077be1a2592440.md) | 30 | `declaration-track:7d02324e27077be1a25924401ce99eb0ac7828565ba8ceb4dbc032bb17bcb31c` |
| 2 | `theorem` | [Hypercube.vertices_length](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-vertices-length--a468e9f3d36817381ddd6386.md) | 36 | `result-track:a468e9f3d36817381ddd6386f4d089f2d4edef9a501f75b4e3194e8e393d8d2e` |
| 3 | `theorem` | [Hypercube.bitAtNat_two_mul_succ](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-bitatnat-two-mul-succ--a7a08c08d7452521984e4a5e.md) | 55 | `result-track:a7a08c08d7452521984e4a5e88a9314af8cde536f87f7e469454a4bbc782dc64` |
| 4 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_succ](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-bitatnat-two-mul-add-one-succ--f095401a0c219392ff8975d1.md) | 61 | `result-track:f095401a0c219392ff8975d1ee102537a9f49d9837cbb1a7cee520375b3ec8ba` |
| 5 | `theorem` | [Hypercube.bitAtNat_two_mul_zero](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-bitatnat-two-mul-zero--8ee8ca0ea71b328cde162747.md) | 67 | `result-track:8ee8ca0ea71b328cde162747248f11586dacdf270abb20d451e567f125177dbe` |
| 6 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_zero](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-bitatnat-two-mul-add-one-zero--9323427a5658d01f6c376308.md) | 71 | `result-track:9323427a5658d01f6c3763083b7ea4d329c94c76c9d89922945fde24d37f52a8` |
| 7 | `theorem` | [Hypercube.pointOfIndex_two_mul](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-pointofindex-two-mul--38a5d71bf1e882f05f703d8d.md) | 75 | `result-track:38a5d71bf1e882f05f703d8d2e2ded19e6e338cf47df49b8701f3e36098322b2` |
| 8 | `theorem` | [Hypercube.pointOfIndex_two_mul_add_one](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-pointofindex-two-mul-add-one--34dc41e000c1942862032fde.md) | 90 | `result-track:34dc41e000c1942862032fde2a7ebad5b489e616b7001639bf8ca7ab32246231` |
| 9 | `theorem` | [Hypercube.range_two_mul](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-range-two-mul--2209ac440287e2bc29f7b35e.md) | 105 | `result-track:2209ac440287e2bc29f7b35eb9ea472ac121d624278523e97d7709a4da4dccf0` |
| 10 | `theorem` | [Hypercube.vertices_eq_range_map_pointOfIndex](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/declarations/hypercube-vertices-eq-range-map-pointofindex--df3da0f5a6076d56f77e751b.md) | 119 | `result-track:df3da0f5a6076d56f77e751b5c2ba5562bd805badd2e602c5a809df4a6c085a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
