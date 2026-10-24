# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca455ce80b2f6d1611c6c87b8da956818a9aa7b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca455ce80b2f6d1611c6c87b8da956818a9aa7b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yonedaPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/declarations/yonedapresheaf--b84b78bd704c5fa06ceda7c4.md) | 33 | `declaration-track:b84b78bd704c5fa06ceda7c45b6450802dc266d09367ad115a81324b60ade534` |
| 2 | `def` | [yonedaPresheaf'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/declarations/yonedapresheaf--6fe69018c52b2ec03eab2647.md) | 42 | `declaration-track:6fe69018c52b2ec03eab2647b63d10defdf4af36d108a03da81252cce17ce76f` |
| 3 | `theorem` | [comp_yonedaPresheaf'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/declarations/comp-yonedapresheaf--f4b408c204c1ce77e7f9276b.md) | 46 | `result-track:f4b408c204c1ce77e7f9276b25bf0217f89ea366ed38569b56be68c96091ce70` |
| 4 | `theorem` | [piComparison_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/declarations/picomparison-fac--bd8feaa1e457ad0d45a39f66.md) | 48 | `result-track:bd8feaa1e457ad0d45a39f66558483619b2ae39b3a4aa633e07d0d61e71fed3d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/declarations/instance--e510d17b8c604e5056225866.md) | 61 | `declaration-track:e510d17b8c604e5056225866c6f7b9ce8dfed64e68aab82a97de05e61217ec56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
