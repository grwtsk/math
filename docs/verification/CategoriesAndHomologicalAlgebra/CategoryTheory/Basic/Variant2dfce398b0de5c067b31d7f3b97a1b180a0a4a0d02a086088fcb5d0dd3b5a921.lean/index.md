# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "700b3a97ee56f78498bc8b679270fc4e0ebec12f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `700b3a97ee56f78498bc8b679270fc4e0ebec12f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.OfChosenFiniteProducts.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [typesMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/typesmonoidal--ace8c3783c38b3e54a7eb03a.md) | 34 | `declaration-track:ace8c3783c38b3e54a7eb03a3e1cbda9190fa3d655fbbdddd7d45c8f59dfaf07` |
| 2 | `theorem` | [tensor_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/tensor-apply--f3a6c5da02e171a1e2ced914.md) | 39 | `result-track:f3a6c5da02e171a1e2ced9143b9108a47705567f0452894743fc955365e7af51` |
| 3 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/leftunitor-hom-apply--e79722a0bd54ae689cec8e80.md) | 45 | `result-track:e79722a0bd54ae689cec8e808a08136b0ae543c07f8885aa85665ccb5abcd4de` |
| 4 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/leftunitor-inv-apply--be6299f0257c8da357576d4d.md) | 51 | `result-track:be6299f0257c8da357576d4d93b207fdccc69ddc20b50f21df0c864b274ae043` |
| 5 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/rightunitor-hom-apply--7914523f8e510e7a25936485.md) | 57 | `result-track:7914523f8e510e7a25936485fb052f933cac902e26d5c232b3862c8e3407842c` |
| 6 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/rightunitor-inv-apply--5d98ac77f5f6d75f6cdd2531.md) | 63 | `result-track:5d98ac77f5f6d75f6cdd2531a05bfbefa1fe4afb3d56effe9e9fe0aa60928ac9` |
| 7 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/associator-hom-apply--0ad25014eec24141ba0b2699.md) | 69 | `result-track:0ad25014eec24141ba0b269910ef99727aa76ab3a33f61818cc184bdc563d330` |
| 8 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/associator-inv-apply--1790c2ec31fb33ea763fc7e3.md) | 75 | `result-track:1790c2ec31fb33ea763fc7e3b0c232f6b6c899b64cd7508e71edba200c1ea982` |
| 9 | `def` | [MonoidalFunctor.mapPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2dfce398b0de5c067b31d7f3b97a1b180a0a4a0d02a086088fcb5d0dd3b5a921.lean/declarations/monoidalfunctor-mappi--1967d77139cf33fb7d732ad7.md) | 84 | `declaration-track:1967d77139cf33fb7d732ad7031ab33a6e18c25267e9bc16c1c15b84b056d0d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
