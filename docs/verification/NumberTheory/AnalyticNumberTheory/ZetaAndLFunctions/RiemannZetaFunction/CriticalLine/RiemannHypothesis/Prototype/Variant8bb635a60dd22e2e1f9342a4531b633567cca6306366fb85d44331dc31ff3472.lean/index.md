# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "950a4125ef242af11d7a6aff5abd18124219143a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `950a4125ef242af11d7a6aff5abd18124219143a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailTest` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairedTailTest_eq_balanced_phase_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/pairedtailtest-eq-balanced-phase-prefix--6806afe4ab7b58da1103a7ff.md) | 34 | `result-track:6806afe4ab7b58da1103a7ff3d4c8cbb0f2cc3e9228a46ce8325ef19415e74ff` |
| 2 | `theorem` | [exists_pairedTailTest_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/exists-pairedtailtest-pos--7eb21fe7fe0a59df680ab943.md) | 57 | `result-track:7eb21fe7fe0a59df680ab9433c79b8c13af7bb72e0f9c17b1087620babee7c29` |
| 3 | `theorem` | [pairedTailTest_early_point_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/pairedtailtest-early-point-neg--e4821743e4cbc831f0a3cf12.md) | 78 | `result-track:e4821743e4cbc831f0a3cf12e7152cb04171e5da95f877e56cb98bfefc7b64e9` |
| 4 | `theorem` | [exists_pairedTailTest_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/exists-pairedtailtest-neg--78e17c0f28afaaae5733901b.md) | 84 | `result-track:78e17c0f28afaaae5733901b57af9cac3c097cd52ccf6676efe5a0bd09f5c027` |
| 5 | `theorem` | [pairedTailTest_has_both_signs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/pairedtailtest-has-both-signs--003c8b13dd4ff4dff1875c3e.md) | 89 | `result-track:003c8b13dd4ff4dff1875c3e87d017f0588cb15f82d6e382170b5977b10e2de4` |
| 6 | `theorem` | [pairedTailTest_not_nonneg_on](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/pairedtailtest-not-nonneg-on--57d1975baf4e4573d5c0266f.md) | 95 | `result-track:57d1975baf4e4573d5c0266f1211cd2c46ef36759fb840526463e7f3fd84fb05` |
| 7 | `theorem` | [pairedTailTest_not_nonpos_on](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant8bb635a60dd22e2e1f9342a4531b633567cca6306366fb85d44331dc31ff3472.lean/declarations/pairedtailtest-not-nonpos-on--ea72eba1cfbcfc40c5806172.md) | 103 | `result-track:ea72eba1cfbcfc40c58061726b906532d9593b0843603ab1d41164d98f708a4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
