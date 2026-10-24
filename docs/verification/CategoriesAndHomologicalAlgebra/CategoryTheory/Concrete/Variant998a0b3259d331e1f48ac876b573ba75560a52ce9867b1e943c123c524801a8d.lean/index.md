# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Concrete.Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cfd2cdde8f6b01db6a0143b8e69d59c14085eee",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cfd2cdde8f6b01db6a0143b8e69d59c14085eee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Factorization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/injective--303b5fec0321f4d25026d1e3.md) | 36 | `declaration-track:303b5fec0321f4d25026d1e356bdf3fe610671d3332b6e2c76f332eaf7b17e63` |
| 2 | `def` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/surjective--54ea3e572a7ac759d54a8209.md) | 39 | `declaration-track:54ea3e572a7ac759d54a8209e93a5c5634869eaeb47a21cb1a5b7996f59d966c` |
| 3 | `def` | [bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/bijective--d8d77bc4c53bbccc2945365e.md) | 42 | `declaration-track:d8d77bc4c53bbccc2945365e594efcaffa85e88f50d43d2bddd0973ca0158eb2` |
| 4 | `theorem` | [bijective_eq_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/bijective-eq-sup--cf8996b4ead54571ada322ac.md) | 44 | `result-track:cf8996b4ead54571ada322ac6e4c0e5175db9bfa8dfa38a1591e7226c72618a0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/instance--c55a47a39133c4cd6ea125bf.md) | 48 | `declaration-track:c55a47a39133c4cd6ea125bfad3fa3a49b6fc63d45fd734615093fc1b363f69f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/instance--63dbd22207d46ea1b239a28f.md) | 58 | `declaration-track:63dbd22207d46ea1b239a28f0bdea6598ee0b6649f0bbd79abf766f8ee64cd4a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/instance--a7705b97420317a82c9edf59.md) | 68 | `declaration-track:a7705b97420317a82c9edf59c9d2779d8b8caea7c791ac01f715c3710e9d657c` |
| 8 | `instance` | [injective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/injective-respectsiso--39f3c47bb9deaa82746c6b98.md) | 78 | `declaration-track:39f3c47bb9deaa82746c6b98e2883f1ebfc27d7f506a9eeeedb6cb1b23219cf5` |
| 9 | `instance` | [surjective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/surjective-respectsiso--962d59a13d1baa45f4eb2f7c.md) | 82 | `declaration-track:962d59a13d1baa45f4eb2f7cc5d3cd503689f7ee589e516385a8db64fc951d9a` |
| 10 | `instance` | [bijective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/bijective-respectsiso--d0b2e81b44690edfb147ed3f.md) | 86 | `declaration-track:d0b2e81b44690edfb147ed3fc8bfb820f2afe3438f1b9d34b077178cfb988ec2` |
| 11 | `abbrev` | [HasSurjectiveInjectiveFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/hassurjectiveinjectivefactorization--4f32f70c6618b03333d334ec.md) | 96 | `declaration-track:4f32f70c6618b03333d334ec6c05fe8dffacc1369505abedd818505a3fae0cc2` |
| 12 | `abbrev` | [HasFunctorialSurjectiveInjectiveFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/hasfunctorialsurjectiveinjectivefactorization--a703f27ecfe4a3b8a5c83cdd.md) | 101 | `declaration-track:a703f27ecfe4a3b8a5c83cddf5d842ee7a1f9979f3cfa14f32d6cdfdf00bf892` |
| 13 | `abbrev` | [FunctorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/functorialsurjectiveinjectivefactorizationdata--f6cc4cf281c343a438b9fd67.md) | 106 | `declaration-track:f6cc4cf281c343a438b9fd672bc3cba8f3d24f650b53f960205ddd2ba77a342b` |
| 14 | `def` | [functorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/functorialsurjectiveinjectivefactorizationdata--e0f20369f8535941283adb93.md) | 116 | `declaration-track:e0f20369f8535941283adb9353cdbe3e04185f6bbe28691dec060af88d03530a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/declarations/instance--c5c15ad50df28294aeb77692.md) | 140 | `declaration-track:c5c15ad50df28294aeb7769220e8d8c0fb04472e5ea44cd966fe63aaba720b80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
