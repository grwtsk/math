# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FlagRange.Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86d360fc5f4e71bd0cd7deb47e75bb825195be16",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86d360fc5f4e71bd0cd7deb47e75bb825195be16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Chain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxChain.range_fin_of_covBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean/declarations/ismaxchain-range-fin-of-covby--aa6875262afe2b733f10dc29.md) | 38 | `result-track:aa6875262afe2b733f10dc29b1086905afcd58d9f438263278119eae6fb87073` |
| 2 | `def` | [Flag.rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean/declarations/flag-rangefin--fdece94c27b4a0203d58a366.md) | 58 | `declaration-track:fdece94c27b4a0203d58a366cb6d8acf993834ddc5e9b2a7274a3c57863fa418` |
| 3 | `theorem` | [Flag.mem_rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant56e6c8e113ef8c4158706c066cde93a691afa8bdf462fd9a6947a0a3b68247d8.lean/declarations/flag-mem-rangefin--00296f833bc4bd033b9eecf2.md) | 64 | `result-track:00296f833bc4bd033b9eecf2178138fef0396caf03c366902bb57b97a6a41f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
