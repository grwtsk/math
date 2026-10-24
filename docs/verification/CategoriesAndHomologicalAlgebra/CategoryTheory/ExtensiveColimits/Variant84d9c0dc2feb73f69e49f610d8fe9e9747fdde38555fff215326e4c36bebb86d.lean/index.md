# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveColimits.Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8aa5077d767120dcf7f565669e31abd777c7391",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8aa5077d767120dcf7f565669e31abd777c7391`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveSheaves` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSheaf_pointwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/declarations/issheaf-pointwisecolimit--a86f98a5dce92d136e6ec7dd.md) | 39 | `result-track:a86f98a5dce92d136e6ec7dd23fb6229f1b73f49d3524e089beff5906e4212a1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/declarations/instance--e68a9c0435e24fc8ca854778.md) | 51 | `declaration-track:e68a9c0435e24fc8ca8547785c97a0471a2fac718fce82c6053c6681d58b423a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/declarations/instance--1e327c2cdc03fca129d219f2.md) | 57 | `declaration-track:1e327c2cdc03fca129d219f2ef79aec4138114c8a99b3001463a613de60de68c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/declarations/instance--ab2601e74f9ef6422cb49878.md) | 67 | `declaration-track:ab2601e74f9ef6422cb4987867c175dab745e6588ec77cfb166c6b6591a37195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
