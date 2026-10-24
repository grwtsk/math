# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveResolution.Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5471d344377c90175f1ace0975a3e10f2f36fba9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5471d344377c90175f1ace0975a3e10f2f36fba9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/injectiveresolution--892d4675cda06901d1eeda67.md) | 55 | `declaration-track:892d4675cda06901d1eeda6793eeb259b3ce7fd5d87d81ef49dff79e1dd9ac3a` |
| 2 | `class` | [HasInjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/hasinjectiveresolution--d50bd1435b7a66259cb8c010.md) | 72 | `declaration-track:d50bd1435b7a66259cb8c010ebbb76e3404891dafef18215de2f2e6889be3af3` |
| 3 | `class` | [HasInjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/hasinjectiveresolutions--89b5b58e39c5eb80eb06ffa9.md) | 84 | `declaration-track:89b5b58e39c5eb80eb06ffa93c97f19a3cd7c067e2503b003ad7b0c5e9ff02da` |
| 4 | `theorem` | [ι_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/f-succ--512b48c3ad53af247f01752c.md) | 95 | `result-track:512b48c3ad53af247f01752cfb100e64361d24ada8ff8828a5f28eac26ccbcb6` |
| 5 | `theorem` | [ι_f_zero_comp_complex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/f-zero-comp-complex-d--ace2cbbdc751b71931240749.md) | 102 | `result-track:ace2cbbdc751b71931240749d054bc0c868b543fa70509b3dbd3a513b83feb99` |
| 6 | `theorem` | [complex_d_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/complex-d-comp--91a9c977ad38415d8fc665bf.md) | 109 | `result-track:91a9c977ad38415d8fc665bf4432435fc94efcc7013d57d176367115449ca3f4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/instance--9d97e1a3507c90df69235377.md) | 115 | `declaration-track:9d97e1a3507c90df69235377321502c1ab09fc0355ae1860e673d8ab201b8ce9` |
| 8 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantec5377cbb18c11035415bd5fc5a16a5f21612a82792970dbc6bc48b7fbb1c915.lean/declarations/self--8bb3c3214dd85207681e3598.md) | 121 | `declaration-track:8bb3c3214dd85207681e3598f6f7b2c2d778c82635d966057cd83399a6f6c499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
