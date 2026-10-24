# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI.Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21b1a75447f1f1e67dcad9b0c2429bfd166d3796",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21b1a75447f1f1e67dcad9b0c2429bfd166d3796`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailDerivatives` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/integraltail--1ac39d4eaa43058b8e8adf4c.md) | 8 | `declaration-track:1ac39d4eaa43058b8e8adf4c8072062b009ce79bff9ac609a1502ef459bfba3f` |
| 2 | `theorem` | [integrableOn_Ici_all](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/integrableon-ici-all--db70773fea1cd60a0bf54b0d.md) | 10 | `result-track:db70773fea1cd60a0bf54b0d0461537cde5c0c59066cffe177086bca276656b6` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/integraltail-eq-sub--cc279a70fb6e8c186060eec7.md) | 20 | `result-track:cc279a70fb6e8c186060eec7257b540ef6e2361d3390a67baf1f1a3e85f35fc7` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/hasderivat-integraltail--1fc4666e24e1aeae78b34b04.md) | 27 | `result-track:1fc4666e24e1aeae78b34b045d73f3c10fd7ef945170b567c4fe51867faf30a6` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/integraltail-positive--78f0f2205e64598d93bcade8.md) | 37 | `result-track:78f0f2205e64598d93bcade816f6f3a6cae305d511f30e05963d79e0d6949bb4` |
| 6 | `theorem` | [antitone_neg_reciprocal_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1.lean/declarations/antitone-neg-reciprocal-ratio--7f4094e354bcdcbd51428b9d.md) | 51 | `result-track:7f4094e354bcdcbd51428b9d63ee822d760a1e81daa20b317c2255d623e18220` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
