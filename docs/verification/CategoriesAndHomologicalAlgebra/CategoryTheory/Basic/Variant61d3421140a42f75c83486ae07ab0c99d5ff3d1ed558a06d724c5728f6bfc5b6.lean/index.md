# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41e7bc9075f9f2b2366788db82ee44101a986fdc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41e7bc9075f9f2b2366788db82ee44101a986fdc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean.json)

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
| 1 | `class` | [IsIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete--96a49db75a18e345fec0d869.md) | 62 | `declaration-track:96a49db75a18e345fec0d8696a06113b05f44eaad06e38d807caa405f83aee14` |
| 2 | `theorem` | [isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete-iff-hasequalizer-of-id-and-idempotent--922e37097848dc5261a85654.md) | 72 | `result-track:922e37097848dc5261a85654185d170f1e81f5b457d41b75e96f43f6b630ec36` |
| 3 | `theorem` | [idem_of_id_sub_idem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/idem-of-id-sub-idem--957f6fbb560bf3f4b9bd08c5.md) | 105 | `result-track:957f6fbb560bf3f4b9bd08c5aaded64bce6fe2480ace6bc377ea23448e13bf77` |
| 4 | `theorem` | [isIdempotentComplete_iff_idempotents_have_kernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete-iff-idempotents-have-kernels--b345af6b681c62d5320b1c21.md) | 110 | `result-track:b345af6b681c62d5320b1c21afb38544c7f20e90142e528267b5c599a2672801` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/instance--bbe242ff2202409ef54aca51.md) | 123 | `declaration-track:bbe242ff2202409ef54aca517d3beef0e9883db7a8c0b0ce95b99e97840036bb` |
| 6 | `theorem` | [split_imp_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/split-imp-of-iso--62eb2ca333afc981ec60f292.md) | 131 | `result-track:62eb2ca333afc981ec60f29212a31cbbe74ba58bc5c4842c21761bc33ee4fb54` |
| 7 | `theorem` | [split_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/split-iff-of-iso--12fb3efd9d2c2377c0ed1b23.md) | 139 | `result-track:12fb3efd9d2c2377c0ed1b23ad35b2c6281efc6bab5dc93d69c2d292fb517e08` |
| 8 | `theorem` | [Equivalence.isIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/equivalence-isidempotentcomplete--a1712dd84b8273b93782e034.md) | 150 | `result-track:a1712dd84b8273b93782e034b28818f9c3f3768cd588c23ca6c064a1bf35c94c` |
| 9 | `theorem` | [isIdempotentComplete_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete-iff-of-equivalence--5be127dee83938bc86a7b7f1.md) | 170 | `result-track:5be127dee83938bc86a7b7f18333473e07b7fc38abe2b2ae549c7e80f3929ebe` |
| 10 | `theorem` | [isIdempotentComplete_of_isIdempotentComplete_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete-of-isidempotentcomplete-opposite--0e11af45a0495f2634c3d316.md) | 176 | `result-track:0e11af45a0495f2634c3d316c08dacef32acf128c5368318e7802eee0df40e0b` |
| 11 | `theorem` | [isIdempotentComplete_iff_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/isidempotentcomplete-iff-opposite--9726ffd7ab967d035478c4b9.md) | 189 | `result-track:9726ffd7ab967d035478c4b9a9ec7384f8ca794830c7669afa0633a47c38a5c5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant61d3421140a42f75c83486ae07ab0c99d5ff3d1ed558a06d724c5728f6bfc5b6.lean/declarations/instance--047df7a64be2fe1acd65b23f.md) | 197 | `declaration-track:047df7a64be2fe1acd65b23f55281be1d731c64eb9cf5f5b4adffe59abe04a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
