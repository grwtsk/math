# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSection.Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7df4c6e9a486c9e2fd01715eb0d3b85a9465f2d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7df4c6e9a486c9e2fd01715eb0d3b85a9465f2d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/ofsection--42fd007867729783930a7e07.md) | 33 | `declaration-track:42fd007867729783930a7e0760d82161e53a0f7391e801d150d126f58dca1cb8` |
| 2 | `lemma` | [mem_ofSection_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/mem-ofsection-obj--70388a761ff5d9937296edfb.md) | 39 | `result-track:70388a761ff5d9937296edfb8aa48a305ccc74fb59e3e8ca4cd71dcf820df0d1` |
| 3 | `lemma` | [ofSection_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/ofsection-le-iff--cd0752cf61090158d301377d.md) | 42 | `result-track:cd0752cf61090158d301377d6e011e7134ef7fa486e5ba016b38da0875a78601` |
| 4 | `lemma` | [ofSection_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/ofsection-image--ea7f0abc487ced90f892318e.md) | 51 | `result-track:ea7f0abc487ced90f892318e79429141bd5ec98b5b6fadd7d18e816c3a616d9a` |
| 5 | `lemma` | [ofSection_eq_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/ofsection-eq-range--97f66f97c85b16adc54478a3.md) | 65 | `result-track:97f66f97c85b16adc54478a3d65a92760c103ef055db40b0b7452d7cb953919d` |
| 6 | `lemma` | [range_eq_ofSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/range-eq-ofsection--c678d6f8070c67bbc5ab594e.md) | 76 | `result-track:c678d6f8070c67bbc5ab594e1d1cc8fc442c4dccc8e2ee396a013c2291b15560` |
| 7 | `lemma` | [ofSection_eq_range'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/ofsection-eq-range--249ce2b860b93e95d8cc8dfa.md) | 86 | `result-track:249ce2b860b93e95d8cc8dfa4aa61c0f1789cebe0973bb061dfcde54d7bda4da` |
| 8 | `lemma` | [range_eq_ofSection'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant2e8bf8a460a08046670ea75e819764177e38b3856c1ef9f8a08b74e24f8c3175.lean/declarations/range-eq-ofsection--8d5be58181b056c89f89327d.md) | 97 | `result-track:8d5be58181b056c89f89327d6a670e42a6f4490ccfd9d813930638cdaba7f11f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
