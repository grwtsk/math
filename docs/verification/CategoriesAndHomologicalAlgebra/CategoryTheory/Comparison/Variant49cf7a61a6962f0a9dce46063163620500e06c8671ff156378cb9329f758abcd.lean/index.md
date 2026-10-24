# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d2e998e0a1dcb07850f140f48a9a6ae0899fb6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d2e998e0a1dcb07850f140f48a9a6ae0899fb6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.FilteredFrobenius` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.Totalization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilteredFrobeniusTotalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean/declarations/filteredfrobeniustotalization--ec13d009a8060d77a0a1cc04.md) | 31 | `declaration-track:ec13d009a8060d77a0a1cc040d2e56bb325ee01dac7a49662b5d4fc7cfde8237` |
| 2 | `theorem` | [totalized_frobenius_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean/declarations/totalized-frobenius-compatible--f3636eaf03345b86692ff910.md) | 59 | `result-track:f3636eaf03345b86692ff910c81d6b53e9254fef38e3748e2d3d1158d64f0bc8` |
| 3 | `theorem` | [totalized_nygaard_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant49cf7a61a6962f0a9dce46063163620500e06c8671ff156378cb9329f758abcd.lean/declarations/totalized-nygaard-compatible--286fd6c8f43eb32195f437c1.md) | 70 | `result-track:286fd6c8f43eb32195f437c1fb6f1b64a7313a80e903094db9570768cc8ed24f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
