# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Trace.Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c998f5b65d3f23b8c6d530068e9af4d4b2e1b0ca",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c998f5b65d3f23b8c6d530068e9af4d4b2e1b0ca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.PrimeSide.Density` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PrimeSideChi` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Pc_part_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/declarations/pc-part-integrable--86b76e5ff3746a8a7093a843.md) | 36 | `result-track:86b76e5ff3746a8a7093a84338db08b78612bf2857c5d40a7386d3a061da3dc0` |
| 2 | `lemma` | [Pc_part_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/declarations/pc-part-eq--0176cdcd4fdee053336088c9.md) | 43 | `result-track:0176cdcd4fdee053336088c9c045438aa4eaa0fe4d9671be3a7abf743b4388ca` |
| 3 | `lemma` | [sum_Pc_part_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/declarations/sum-pc-part-bound--837a2d446077ca2a920b3bfc.md) | 78 | `result-track:837a2d446077ca2a920b3bfc3ce13c0acdb8f996fcebd1f49eed1fb02e9b80ee` |
| 4 | `lemma` | [GentryW_diag_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/declarations/gentryw-diag-eq--d76693122405e3962d3fb202.md) | 154 | `result-track:d76693122405e3962d3fb2029cea1ab4a05c4932d496f789d918ebb85f29e3b7` |
| 5 | `theorem` | [prop_trace_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/declarations/prop-trace-w--1218198d9d37f8485e077832.md) | 184 | `result-track:1218198d9d37f8485e077832b693ea308f7dc1426492b6e81012a6759d0c8c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
