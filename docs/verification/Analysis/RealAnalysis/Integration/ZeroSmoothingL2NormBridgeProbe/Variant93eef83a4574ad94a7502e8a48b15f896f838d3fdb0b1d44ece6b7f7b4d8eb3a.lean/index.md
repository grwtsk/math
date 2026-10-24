# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2NormBridgeProbe.Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "541550b6f5d24b142634b0e58f3951cbd61f23df",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `541550b6f5d24b142634b0e58f3951cbd61f23df`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lpNorm_two_eq_sqrt_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/declarations/lpnorm-two-eq-sqrt-integral-sq--e6a38773d0552d88373d422a.md) | 22 | `result-track:e6a38773d0552d88373d422a78c8f9349f370b7937ddf5230dfd5651a9225f92` |
| 2 | `theorem` | [lpNorm_two_and_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/declarations/lpnorm-two-and-square-integrable--523ace001b0fc2d9f6d3b172.md) | 30 | `result-track:523ace001b0fc2d9f6d3b1723dfaea188694ea38132ac152c6a236af56179004` |
| 3 | `theorem` | [tendsto_lpNorm_two_of_tendsto_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a.lean/declarations/tendsto-lpnorm-two-of-tendsto-integral-sq--7ac919fa0fc5887c2b60487b.md) | 36 | `result-track:7ac919fa0fc5887c2b60487bd3b3772ac4ac7af96da47ee898474ac26953397b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
