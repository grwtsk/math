# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsE.Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc51f3ef9cbfeee4e3f33622df0053e74d2907e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc51f3ef9cbfeee4e3f33622df0053e74d2907e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideTemp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TracesBoundsE](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/declarations/tracesboundse--445eee0ad51f2140f39c3864.md) | 33 | `declaration-track:445eee0ad51f2140f39c3864bf40772c9788890818d8b8838af879c3f363c3fd` |
| 2 | `lemma` | [TracesBounds.toE](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/declarations/tracesbounds-toe--a208cc2c7449ca8e4b5d15f9.md) | 40 | `result-track:a208cc2c7449ca8e4b5d15f908d5a9e17f45fad0beb1781da771d39c57d6205b` |
| 3 | `lemma` | [TracesBoundsE.toTracesBounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/declarations/tracesboundse-totracesbounds--3f205f5759dfb1e32115502f.md) | 44 | `result-track:3f205f5759dfb1e32115502f05f17effd8b311fc51fa601cef57045d332b89c0` |
| 4 | `def` | [ThmTracesHypE](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/declarations/thmtraceshype--3a6b212e5e591b7962ad2501.md) | 49 | `declaration-track:3a6b212e5e591b7962ad25017f90ba67e5ceca45494457dc2e1db748608a103a` |
| 5 | `lemma` | [thmTracesHyp_iff_E](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesBoundsE/Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954.lean/declarations/thmtraceshyp-iff-e--39120068a1b2b901b22e7799.md) | 52 | `result-track:39120068a1b2b901b22e7799d3f2e720f55986be4adfa48bf961dd91504a0493` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
