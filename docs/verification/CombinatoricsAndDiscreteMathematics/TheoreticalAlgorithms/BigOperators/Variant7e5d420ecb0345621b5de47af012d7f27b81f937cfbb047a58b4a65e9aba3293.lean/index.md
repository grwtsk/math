# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18d2172b2ffc0bb133d9baeded645324f9e2428d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18d2172b2ffc0bb133d9baeded645324f9e2428d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/list-support-sum-subset--6df9802ed1152e23bb533fde.md) | 45 | `result-track:6df9802ed1152e23bb533fde3ba1a42298296fc740bb89693fc3c7d04249ac96` |
| 2 | `theorem` | [Multiset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/multiset-support-sum-subset--423433ba804363bd22873c4d.md) | 53 | `result-track:423433ba804363bd22873c4d61b368c624c73cd8f67406784c8c124a97e7d857` |
| 3 | `theorem` | [Finset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/finset-support-sum-subset--27c41b4d69ca086fd49c27e1.md) | 59 | `result-track:27c41b4d69ca086fd49c27e1e964ae529f0db335d91ccc7979748feac135692f` |
| 4 | `theorem` | [List.mem_foldr_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/list-mem-foldr-sup-support-iff--240118f088280e6ce25a3341.md) | 63 | `result-track:240118f088280e6ce25a33415a7fa64a663f3773397588885d1ee5183cb7f915` |
| 5 | `theorem` | [Multiset.mem_sup_map_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/multiset-mem-sup-map-support-iff--0bd17232a4cd0580052fa7c5.md) | 71 | `result-track:0bd17232a4cd0580052fa7c585c9c97f4a55fd3c7ca66a40d5840073557dea2f` |
| 6 | `theorem` | [Finset.mem_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/finset-mem-sup-support-iff--3ca4c91b1214687cd4156cd7.md) | 77 | `result-track:3ca4c91b1214687cd4156cd79ee8f7ac9edcdda374ea6d743f8a2aff2f33951e` |
| 7 | `theorem` | [List.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/list-support-sum-eq--d1b1d9a39e24455fae8e67f6.md) | 83 | `result-track:d1b1d9a39e24455fae8e67f6fc6b42ef77e4c146ad7a24f198b18ee2530fe5ce` |
| 8 | `theorem` | [Multiset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/multiset-support-sum-eq--f6ca6ebbbe2d72bcd714b1a3.md) | 100 | `result-track:f6ca6ebbbe2d72bcd714b1a316f004f629890bcfe261393107092825508cd8e5` |
| 9 | `theorem` | [Finset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/declarations/finset-support-sum-eq--d2d727265aaab63cae868200.md) | 113 | `result-track:d2d727265aaab63cae8682007e303a1bdfb4d8544c9992fd8fae4e7fc1b486bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
