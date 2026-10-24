# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoreTailFullAudit.Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd422dd670d764bfb51a12a2b65cb3f0bcbb1e60",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd422dd670d764bfb51a12a2b65cb3f0bcbb1e60`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/fullresidualvector--f587c41eecb580fbd4091354.md) | 14 | `declaration-track:f587c41eecb580fbd4091354f585d61941a7ac39ffbc749903342e241170b6c4` |
| 2 | `def` | [coreResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/coreresidualvector--2e79547e58bb77805ec1036d.md) | 18 | `declaration-track:2e79547e58bb77805ec1036dff6b044c57fde227113092641130486b92b2060b` |
| 3 | `theorem` | [fullResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/fullresidualvector-ae--555864140964413eb4d569f7.md) | 23 | `result-track:555864140964413eb4d569f724b948774726f745fdc5080e97fa7b09d67cc9ce` |
| 4 | `theorem` | [coreResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/coreresidualvector-ae--e61cdce4d2f7f22d2d3130cd.md) | 28 | `result-track:e61cdce4d2f7f22d2d3130cd682e6337f0955729ff53de6520ea222447c8c80f` |
| 5 | `theorem` | [fullResidualVector_decomposition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/fullresidualvector-decomposition--04b75497598d9895fd39db1e.md) | 34 | `result-track:04b75497598d9895fd39db1e3de7f5b1799d90d5c2a30f00a06556cbf579e943` |
| 6 | `theorem` | [filtered_full_norm_le_core_tails](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailFullAudit/Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800.lean/declarations/filtered-full-norm-le-core-tails--377499bc3b9f6e37bee4b7f0.md) | 75 | `result-track:377499bc3b9f6e37bee4b7f08ce524d0906ff692294dc42d87d45aeca628ccb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
