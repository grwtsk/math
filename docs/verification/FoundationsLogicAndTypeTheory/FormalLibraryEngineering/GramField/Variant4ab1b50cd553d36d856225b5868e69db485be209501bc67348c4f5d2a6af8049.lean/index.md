# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GramField.Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7d2d9d1962d976ced21ee487b72e1077e80bb0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7d2d9d1962d976ced21ee487b72e1077e80bb0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.CohomologyLattice` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveGram](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/positivegram--fe85474dc71b8e5129c7408e.md) | 19 | `declaration-track:fe85474dc71b8e5129c7408e9f8abae42f19519321468050b85069232efb8b69` |
| 2 | `def` | [squaredNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/squarednorm--fb5e15d7a53de980990886a7.md) | 32 | `declaration-track:fb5e15d7a53de980990886a71a48de1010e5e4dccf03645365e05a38f5b6e536` |
| 3 | `def` | [squaredDistance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/squareddistance--23a7dcf90184387317e73759.md) | 35 | `declaration-track:23a7dcf90184387317e7375912fddf2f316482403251d299da6bb488f1e3b6cb` |
| 4 | `theorem` | [squaredNorm_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/squarednorm-nonnegative--e5a037fa61bafdfce8fe5c19.md) | 38 | `result-track:e5a037fa61bafdfce8fe5c19186ba8c125a217ff11d9186c5172b5ce40d7e1b2` |
| 5 | `theorem` | [squaredNorm_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/squarednorm-eq-zero-iff--3206f50056aaf10b8be4c5bc.md) | 44 | `result-track:3206f50056aaf10b8be4c5bc582354320738e7a6186fe58525e7b15885e4c39d` |
| 6 | `theorem` | [squaredDistance_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/squareddistance-self--2cb73b1fe6f6dd198e0b1d75.md) | 55 | `result-track:2cb73b1fe6f6dd198e0b1d75f13deb5d288f5b8e633a27888a648c8fd14ea98b` |
| 7 | `abbrev` | [GramField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/declarations/gramfield--8f04d3cdbe3dd65bb4d17045.md) | 62 | `declaration-track:8f04d3cdbe3dd65bb4d17045f5131ffd711b27f639479c0aff55960e75e09398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
