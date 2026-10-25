# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Pigeonhole.Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceae946e9ffaea17884f4379cbfad6a3f028a091",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceae946e9ffaea17884f4379cbfad6a3f028a091`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_pigeonhole](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/infinite-pigeonhole--31081e1e5c23e1f2d7dee8b9.md) | 34 | `result-track:31081e1e5c23e1f2d7dee8b9ca4d2ad016bcafb504dc23417aaa93093a942e4d` |
| 2 | `theorem` | [infinite_pigeonhole_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/infinite-pigeonhole-card--fab2d3eec0c4777b80349210.md) | 49 | `result-track:fab2d3eec0c4777b8034921077d4201cd3f48bd52408bf9b72c7427173b7a027` |
| 3 | `theorem` | [infinite_pigeonhole_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/infinite-pigeonhole-set--9127167cce197bd587fbad10.md) | 56 | `result-track:9127167cce197bd587fbad10ce09bf7aeff2cb813c4b3d5f22070037133fcbe0` |
| 4 | `theorem` | [infinite_pigeonhole_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/infinite-pigeonhole-card-lt--d54f18e9d115e3d15e21ef48.md) | 73 | `result-track:d54f18e9d115e3d15e21ef48936477e3b633380505b2c1c6f4a80ce6ba96b3f6` |
| 5 | `theorem` | [exists_infinite_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/exists-infinite-fiber--e6f8aa68cfcc3acbe8412257.md) | 81 | `result-track:e6f8aa68cfcc3acbe84122576f0e33a38f6cac90cdac53db680bfaf46d59e3e6` |
| 6 | `theorem` | [le_range_of_union_finset_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5.lean/declarations/le-range-of-union-finset-eq-top--46ba5aef3914b2ab9ea1329f.md) | 91 | `result-track:46ba5aef3914b2ab9ea1329fb5810ed371ed8c4b45d3ad22861a7db66085e177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
