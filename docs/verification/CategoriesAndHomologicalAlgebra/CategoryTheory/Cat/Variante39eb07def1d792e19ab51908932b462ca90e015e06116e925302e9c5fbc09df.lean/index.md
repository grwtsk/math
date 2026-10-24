# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b839dde35f22a5fe4857a63d03f0b051aad237a1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b839dde35f22a5fe4857a63d03f0b051aad237a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean.json)

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
| 1 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/tocat--73645b9232432c3dcd5949eb.md) | 38 | `declaration-track:73645b9232432c3dcd5949eb0d6b674a6d8b46b0951e66b3826e576fe83e409a` |
| 2 | `def` | [ofCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/ofcat--82be75d108bd027c40f4bdc2.md) | 45 | `declaration-track:82be75d108bd027c40f4bdc2e089e4e7580452c8084553556a5ec17ebc2b207e` |
| 3 | `lemma` | [toCat_ofCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/tocat-ofcat--f8a53c9aa78dc2c05ddc327e.md) | 56 | `result-track:f8a53c9aa78dc2c05ddc327eec0249da1f0ae37d9cd7c6b9305e581d61c0cbed` |
| 4 | `lemma` | [ofCat_toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/ofcat-tocat--08b73559caff6f82214d62a4.md) | 61 | `result-track:08b73559caff6f82214d62a49bb581e441fdc94d28769df514f436c02ec7683d` |
| 5 | `lemma` | [toCat_comp_toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/tocat-comp-tocat--1ff0f0aa34cbd83a6ee5967f.md) | 65 | `result-track:1ff0f0aa34cbd83a6ee5967f5dde59ccb2500663dbda300defa84b515d12736f` |
| 6 | `lemma` | [Adjunction.ofCat_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/adjunction-ofcat-id--1131b9cced32c5fd02a7c22a.md) | 75 | `result-track:1131b9cced32c5fd02a7c22a4f34698341c8511327e87186e4443247f520ee75` |
| 7 | `lemma` | [Adjunction.ofCat_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/adjunction-ofcat-comp--f11b9d4dbf7eee623b8dc34f.md) | 80 | `result-track:f11b9d4dbf7eee623b8dc34f63ee4f53d5f7376986c4a3516efeaa916bbae17f` |
| 8 | `lemma` | [toNatTrans_mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/tonattrans-mateequiv--25c9375aab810bb8ad5ea0f4.md) | 89 | `result-track:25c9375aab810bb8ad5ea0f45b4e43ba04e2429466c3a73946ff8677f387613a` |
| 9 | `lemma` | [toNatTrans_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/tonattrans-conjugateequiv--6e357416aa1c9797ed239153.md) | 100 | `result-track:6e357416aa1c9797ed2391530b1e2bde1b55683f9b1a5fb8ec567d751397e05f` |
| 10 | `lemma` | [left_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/left-triangle-components--bf680698f434cef8ae31c5a2.md) | 116 | `result-track:bf680698f434cef8ae31c5a23820179d7721f54083dfb1ab1a29f20b3ae1c141` |
| 11 | `lemma` | [right_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/right-triangle-components--f1a2f6cd8b1e9b3fe6587f96.md) | 123 | `result-track:f1a2f6cd8b1e9b3fe6587f962ad47df1e0b9b843ebe747f25ff6f5040db1e01d` |
| 12 | `lemma` | [unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/unit-naturality--8f5ab93d0d7e7af91e012e2f.md) | 133 | `result-track:8f5ab93d0d7e7af91e012e2f22b3fddf3c6b80a74b8a2b1fea6c7582b31b9a92` |
| 13 | `lemma` | [counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/declarations/counit-naturality--7abd32d6b3d787a3f9268246.md) | 142 | `result-track:7abd32d6b3d787a3f9268246c7ca74444682f86196573d40f0de30135131efe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
