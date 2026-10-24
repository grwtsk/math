# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableAdapter.Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef51f2f86e2a12bc538e2bd0e2bbfd8e3e6d780",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef51f2f86e2a12bc538e2bd0e2bbfd8e3e6d780`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Causal.CausalState` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDAF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/todaf--6f1027b6e571ee3ffad6b88c.md) | 26 | `declaration-track:6f1027b6e571ee3ffad6b88c50856f3a2acc47c993dfd82e47621d01e8c641d6` |
| 2 | `def` | [toObservable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/toobservable--f917f67a273c68461f29f4cb.md) | 39 | `declaration-track:f917f67a273c68461f29f4cbeabcb7f58b1351b5ca1480c7e6ef8c59d29afdd9` |
| 3 | `theorem` | [toDAF_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/todaf-run--75f6876119eb9fce5b906944.md) | 47 | `result-track:75f6876119eb9fce5b906944c7f5aa631571dcb53cf0554d29db3e6624ac5fac` |
| 4 | `theorem` | [toObservable_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/toobservable-run--fff3dd1c2e0a408af62426fb.md) | 62 | `result-track:fff3dd1c2e0a408af62426fb6e93deca06fa85c22157ba3d6ba2a9ea208b9b19` |
| 5 | `theorem` | [toDAF_causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/todaf-causalequivalent-iff--b93cb49bfedee1b466f13b4d.md) | 75 | `result-track:b93cb49bfedee1b466f13b4daf202bd1bd14e8a0d31e375f185bf6d4ae58fffd` |
| 6 | `def` | [causalStateEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/causalstateequiv--46b5eac0f190ac3070b85bb3.md) | 92 | `declaration-track:46b5eac0f190ac3070b85bb366eb6d1ce352817cdab0b2eb71f7025cb4bb805f` |
| 7 | `theorem` | [causalStateEquiv_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/declarations/causalstateequiv-tocausal--e23f83fd4665809641339138.md) | 116 | `result-track:e23f83fd4665809641339138ced2d56ebe6a0589d2382e7f98bea96814a5ae70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
