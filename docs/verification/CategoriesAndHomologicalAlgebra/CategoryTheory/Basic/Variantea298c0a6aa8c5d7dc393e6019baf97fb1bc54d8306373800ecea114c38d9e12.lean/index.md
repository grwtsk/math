# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a977b619d9da480fc241def32581b99abcc1fa7e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a977b619d9da480fc241def32581b99abcc1fa7e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.OfChosenFiniteProducts.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [typesMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/typesmonoidal--48a9853ba9a7b192ce216cca.md) | 26 | `declaration-track:48a9853ba9a7b192ce216ccac57e47721b422e78ca7dc4e37c5aef7afa141882` |
| 2 | `theorem` | [tensor_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/tensor-apply--73d68b414a7d229212af9ccf.md) | 31 | `result-track:73d68b414a7d229212af9ccf39a23800b7c1fb7b605fdcf453a7d82eae2f919e` |
| 3 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/leftunitor-hom-apply--76eccbdcc4a75196730a5bf4.md) | 37 | `result-track:76eccbdcc4a75196730a5bf43fc83fdf00acfc307541bdbb2f0c5ad45440496d` |
| 4 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/leftunitor-inv-apply--f3f89c69b3047cb25bc71fbc.md) | 43 | `result-track:f3f89c69b3047cb25bc71fbcdfbd1d3c259989ab36e6ab67c29cee5b1c4b0343` |
| 5 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/rightunitor-hom-apply--08a31b7494e83379c10e0b8a.md) | 49 | `result-track:08a31b7494e83379c10e0b8a0e055022bc7968e6565f5076bd29b522cc78860d` |
| 6 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/rightunitor-inv-apply--a9cfca83006b85400b3d2df2.md) | 55 | `result-track:a9cfca83006b85400b3d2df2942c758559c789f97f0e900198d34c186292acd5` |
| 7 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/associator-hom-apply--95d66b8facd2a928d13fb4bd.md) | 61 | `result-track:95d66b8facd2a928d13fb4bd15fbbfcd472b69d61ccbd813ec1e573053141542` |
| 8 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/associator-inv-apply--714fe93cf21201ddc6a8d5f5.md) | 67 | `result-track:714fe93cf21201ddc6a8d5f5e960fb30fdc5110dc0113f122b27d4dfbd71445a` |
| 9 | `def` | [MonoidalFunctor.mapPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/declarations/monoidalfunctor-mappi--ccdb80596e43fd2f62ee9cd0.md) | 76 | `declaration-track:ccdb80596e43fd2f62ee9cd08f1d35c7b098fb8897f096fb7da0fb67da041d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
