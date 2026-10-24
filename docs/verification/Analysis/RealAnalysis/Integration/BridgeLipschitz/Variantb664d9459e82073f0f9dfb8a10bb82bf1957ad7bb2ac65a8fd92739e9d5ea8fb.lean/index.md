# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeLipschitz.Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7de31ae8718e922a70841b3ff61970568d7a0b1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7de31ae8718e922a70841b3ff61970568d7a0b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BridgeEnvelope` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [average_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/average-bounds--5ba99ef2e5a9f456ce372d60.md) | 19 | `result-track:5ba99ef2e5a9f456ce372d605fc66f49d77c370c8f6c841dc7599e32bef36753` |
| 2 | `theorem` | [integralBridge_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/integralbridge-sub--2307dc8058fee812862fe3ba.md) | 31 | `result-track:2307dc8058fee812862fe3ba42f12095c66903893bfd2e5ead41f17e5c148222` |
| 3 | `theorem` | [integralBridge_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/integralbridge-increment-le--2d0b97cb6bc38bd551321170.md) | 43 | `result-track:2d0b97cb6bc38bd551321170c0c93e508c2ba804da6cf3827dbcf59c43815814` |
| 4 | `theorem` | [integralBridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/integralbridge-lipschitz--3fa1e0c22a9edbb739247e54.md) | 56 | `result-track:3fa1e0c22a9edbb739247e54ac7b2ff3f1e3c8e22dd5c15ad56b5a3758324009` |
| 5 | `theorem` | [actual_bridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/actual-bridge-lipschitz--910e04e41ffec8d55f49ce41.md) | 68 | `result-track:910e04e41ffec8d55f49ce41f77a29bf9a5a350c2d1d29d51f0acdaa190f175f` |
| 6 | `def` | [normalizedBridge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/normalizedbridge--1ce90b96be8f1fb3899cab6e.md) | 80 | `declaration-track:1ce90b96be8f1fb3899cab6e8a9d508ce40e89132314e141eb46e1b22a315ae0` |
| 7 | `theorem` | [normalizedBridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/normalizedbridge-lipschitz--5002917ba3f6daddd48f6b4f.md) | 82 | `result-track:5002917ba3f6daddd48f6b4fe4569774cfe9533850d7929aced36ffef7f983fe` |
| 8 | `theorem` | [normalizedBridge_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/declarations/normalizedbridge-abs-le--e0b611ced036d7f9edf7da65.md) | 101 | `result-track:e0b611ced036d7f9edf7da654f4d42fbec93a4651100359182d2b7cfbe360b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
