# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21251ddf6bd8abc62748637d3c5bf6b8e492dbf6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21251ddf6bd8abc62748637d3c5bf6b8e492dbf6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [split](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split--0e164f1e5c711f84080fcf29.md) | 39 | `declaration-track:0e164f1e5c711f84080fcf29cbaa53e87a1096e324ca42b48c9394dc609f0092` |
| 2 | `theorem` | [split_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split-endpos--e87a54dfd7fa382456c355e8.md) | 52 | `result-track:e87a54dfd7fa382456c355e885cd4b0f63b967d129027078fc32e0658a273cee` |
| 3 | `theorem` | [split_eq_of_isLongestMatchAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split-eq-of-islongestmatchat--c234e9acbd40ac30271238f6.md) | 57 | `result-track:c234e9acbd40ac30271238f6d5e0211e1e710b2c29531700fe208c8229121f34` |
| 4 | `theorem` | [split_eq_of_not_matchesAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split-eq-of-not-matchesat--c65c12a4d0369e7d4ef2dec9.md) | 66 | `result-track:c65c12a4d0369e7d4ef2dec926eb8d07049ffc830246518109fd4b1eb627e50e` |
| 5 | `theorem` | [split_eq_next_of_not_matchesAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split-eq-next-of-not-matchesat--7429e09170928622cb9abef9.md) | 83 | `result-track:7429e09170928622cb9abef9933ed2068bef006fb2cacc07ffd42064a631a5c3` |
| 6 | `def` | [splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/splitfromsteps--4e9544431cc2ab519dd6dd75.md) | 99 | `declaration-track:4e9544431cc2ab519dd6dd756a04bc5754203ea25e44c30dee5df90da980dfea` |
| 7 | `theorem` | [IsValidSearchFrom.splitFromSteps_eq_extend_split](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/isvalidsearchfrom-splitfromsteps-eq-extend-split--16d776a431280a9500fa49f6.md) | 105 | `result-track:16d776a431280a9500fa49f646c546895e36353916dc9c8cd318b3e2e1a4318b` |
| 8 | `theorem` | [SplitIterator.toList_eq_splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/splititerator-tolist-eq-splitfromsteps--a03ffa67aca9a8a5c50aecf5.md) | 126 | `result-track:a03ffa67aca9a8a5c50aecf54816657d566f7a73184c0ce321b90af4a6e52db1` |
| 9 | `theorem` | [toList_splitToSubslice_eq_splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-splittosubslice-eq-splitfromsteps--715ac27861ad0812f6f4fc00.md) | 148 | `result-track:715ac27861ad0812f6f4fc00ac509d4b2804e417eac82d0e0401439ac12d74f7` |
| 10 | `theorem` | [toList_splitToSubslice_eq_modelSplit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-splittosubslice-eq-modelsplit--fbb31699f55e0a610cbd7711.md) | 158 | `result-track:fbb31699f55e0a610cbd77113ca13c7ac84710cb6c9360ffe347cc66a09f713f` |
| 11 | `theorem` | [toList_splitToSubslice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-splittosubslice-of-isempty--582fbd8356cd16bab1f2b3da.md) | 170 | `result-track:582fbd8356cd16bab1f2b3da2525a3c304f2c2f4736bd52f00c1f137578cce8a` |
| 12 | `theorem` | [toList_split_eq_splitToSubslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-split-eq-splittosubslice--b0cb8175272e7ef87f5b6cb4.md) | 178 | `result-track:b0cb8175272e7ef87f5b6cb4c653f3e8ec27022e5d53e663107ca75d25d56bce` |
| 13 | `theorem` | [toList_split_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-split-of-isempty--0bb92274d48911618d763490.md) | 184 | `result-track:0bb92274d48911618d7634906d30deb69dd15cf59471bb222b94a3487e99881c` |
| 14 | `theorem` | [split_eq_split_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/split-eq-split-toslice--2def4276468d6b0cdcf15e57.md) | 197 | `result-track:2def4276468d6b0cdcf15e57d323e2fdfd0b174e3095b557df2aa44472c08dd2` |
| 15 | `theorem` | [toList_split_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/declarations/tolist-split-empty--61c0535e5ea0099048941a1f.md) | 202 | `result-track:61c0535e5ea0099048941a1f6b39df4ff32108b950ef3f33f0811707eb1ddf3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
