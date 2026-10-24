# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LineBound.Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70730c366692a2ec37e4bef2264eaea8c67e895",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70730c366692a2ec37e4bef2264eaea8c67e895`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.Expansion` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [log_two_add_abs_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/log-two-add-abs-ge--7f592c04a4602bc30f319fa8.md) | 35 | `result-track:7f592c04a4602bc30f319fa88109981222f7bc292912216b8e14102a9e025272` |
| 2 | `lemma` | [half_le_log_two_add_abs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/half-le-log-two-add-abs--c4850b36ae11546917e67471.md) | 38 | `result-track:c4850b36ae11546917e674717330424fbd6673f72b211ffc9f30ae8f7523b8b8` |
| 3 | `theorem` | [norm_Lfn_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/norm-lfn-line--d86b54d640b9af1ec4be89d3.md) | 42 | `result-track:d86b54d640b9af1ec4be89d34ddfe663d128990f7224828296973d71da505607` |
| 4 | `theorem` | [norm_Efn_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/norm-efn-line--ce3a637f63aef3061a552bdf.md) | 73 | `result-track:ce3a637f63aef3061a552bdfc21d08172d5a2739f6da1621e6f89f98736b6bc7` |
| 5 | `theorem` | [norm_logDeriv_xiDeriv_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/norm-logderiv-xideriv-line--8cde48be6bc824ed73bfef9c.md) | 88 | `result-track:8cde48be6bc824ed73bfef9c69b9344ba6d3755e3b6fb2e18ee3d53eb669a36a` |
| 6 | `theorem` | [continuous_Efn_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/continuous-efn-line--8e4733c8d499ebdac5ab115d.md) | 104 | `result-track:8e4733c8d499ebdac5ab115d97dc0d50447bfd9cbc0060f5da0882e6a0263151` |
| 7 | `theorem` | [continuous_logDeriv_xiDeriv_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/declarations/continuous-logderiv-xideriv-line--2adcc0e26fda0dc57e51c66b.md) | 110 | `result-track:2adcc0e26fda0dc57e51c66bab1a56e2f6e5a0ca4a7ce546b33ec614d8ed635a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
