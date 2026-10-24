# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "579780b21f6ec78decb1680e9fc180e8a42e6013",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `579780b21f6ec78decb1680e9fc180e8a42e6013`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Predicate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictUniversalPropertyFixedTarget.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/declarations/strictuniversalpropertyfixedtarget-op--f5e69600e9e27eb819b5f11d.md) | 30 | `declaration-track:f5e69600e9e27eb819b5f11d868f031d9faacb3e5ac8967b8c7732925cb06c77` |
| 2 | `instance` | [isLocalization_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/declarations/islocalization-op--5b517c634b8ebcf70ea21237.md) | 43 | `declaration-track:5b517c634b8ebcf70ea2123777ea6e633608505cdc540c2d67c998061401b6f6` |
| 3 | `instance` | [IsLocalization.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/declarations/islocalization-op--fbb86f108b093c1b31490564.md) | 54 | `declaration-track:fbb86f108b093c1b31490564be347a48c7d5f44e8aead0c5304de9e5b78b0f49` |
| 4 | `lemma` | [isoOfHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/declarations/isoofhom-unop--c1e3b1b5611df51c13c961c0.md) | 62 | `result-track:c1e3b1b5611df51c13c961c0973331a6f314efebd692d4a1347292c678f4a2ee` |
| 5 | `lemma` | [isoOfHom_op_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean/declarations/isoofhom-op-inv--68b2ff9c58a53baeb4b3153f.md) | 65 | `result-track:68b2ff9c58a53baeb4b3153f4bb3f34f44ec0f182c7ed68a17b7359102d99d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
