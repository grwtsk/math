# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesProduct.Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5788f94f94cb9feba19d9b125439434de4c40655",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5788f94f94cb9feba19d9b125439434de4c40655`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Shapes.Products` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/pointwiseproduct--7539124f7cd3bd58c5c7be05.md) | 54 | `declaration-track:7539124f7cd3bd58c5c7be05703655a6848d2cd47720b72f1a22287f6b25dad9` |
| 2 | `def` | [coconePointwiseProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/coconepointwiseproduct--3ee05f9ee3b4d5e80bc460aa.md) | 63 | `declaration-track:3ee05f9ee3b4d5e80bc460aa916f310bdf81550a956658d12e4b57e266b3265b` |
| 3 | `def` | [colimitPointwiseProductToProductColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/colimitpointwiseproducttoproductcolimit--8319d13c1d12e39ca65ad188.md) | 70 | `declaration-track:8319d13c1d12e39ca65ad18826fb6515cd7f42cf922254d427c08cd60ee9b29c` |
| 4 | `theorem` | [ι_colimitPointwiseProductToProductColimit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/colimitpointwiseproducttoproductcolimit--466c477c69bdde2ae8f0799a.md) | 75 | `result-track:466c477c69bdde2ae8f0799ac4ec927fc5d047aa2bc63ff3de8eda3f7e5a9c4d` |
| 5 | `def` | [pointwiseProductCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/pointwiseproductcompevaluation--a0fa1e4bc6ae629609b1c633.md) | 92 | `declaration-track:a0fa1e4bc6ae629609b1c63389ccd106fc7e342770854261f742bb3a85f995dc` |
| 6 | `theorem` | [colimitPointwiseProductToProductColimit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/colimitpointwiseproducttoproductcolimit-app--70a4505ef7cd8461ed9aaab7.md) | 100 | `result-track:70a4505ef7cd8461ed9aaab7783c942fe437e7e3b91b1224cc0ad2eafc61d044` |
| 7 | `class` | [IsIPC](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/isipc--33e39c0cf95d1e5d65100589.md) | 122 | `declaration-track:33e39c0cf95d1e5d6510058971555466d1ffaa3a63bed232338ccd7ba1b11e6d` |
| 8 | `theorem` | [Types.isIso_colimitPointwiseProductToProductColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/types-isiso-colimitpointwiseproducttoproductcolimit--5d84f7c291889251793ed02b.md) | 135 | `result-track:5d84f7c291889251793ed02b2b506e556cc245ee2933d13a4cf5b57a013efdc6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/instance--7633603bb8e872999cd2c052.md) | 175 | `declaration-track:7633603bb8e872999cd2c052f9c8deef3cb3ad2ee40182e644e60e5cf8a61b21` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant9ebc22f691f36c253460539ad298344d1847eef5f425540e404ef33e73fdfee2.lean/declarations/instance--70b00a8d9b41d50706e21fb4.md) | 184 | `declaration-track:70b00a8d9b41d50706e21fb421abc6f132b5dd61cf377c9b440af2e1a34e5909` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
