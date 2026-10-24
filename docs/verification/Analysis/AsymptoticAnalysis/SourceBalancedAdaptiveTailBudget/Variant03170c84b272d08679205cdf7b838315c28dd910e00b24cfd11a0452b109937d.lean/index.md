# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceBalancedAdaptiveTailBudget.Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09525f9ae19cb9d65caa95533cc9770e1be30ba6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09525f9ae19cb9d65caa95533cc9770e1be30ba6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceJointActualCountTail` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualBalancedAdaptiveTailCost](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/actualbalancedadaptivetailcost--b71b7cf37a218b6b7c4d47ef.md) | 24 | `declaration-track:b71b7cf37a218b6b7c4d47ef13d1cb78e2c9122ecd760e12c1f643c944995e46` |
| 2 | `theorem` | [logarithmic_ratio_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/logarithmic-ratio-le--c1bff1f308e842766236bb8b.md) | 28 | `result-track:c1bff1f308e842766236bb8b1ac617c130ec6e88b2baf79185af252293f8bfb4` |
| 3 | `theorem` | [balanced_tail_of_sharp](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/balanced-tail-of-sharp--a6f29cffaa5aec411a658f93.md) | 43 | `result-track:a6f29cffaa5aec411a658f93b159d7e10d508e9616f6b9e7b02e1af05e5d2dd1` |
| 4 | `theorem` | [actualBalancedAdaptiveTailCost_le_old](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/actualbalancedadaptivetailcost-le-old--f0d731ee92f62b80d0422405.md) | 75 | `result-track:f0d731ee92f62b80d0422405d3d2412b15eb367e01aa9cef8323f34c57c5b866` |
| 5 | `theorem` | [actualBalancedAdaptiveTailCost_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/actualbalancedadaptivetailcost-one--4769bf7ad021eda060d44fe4.md) | 91 | `result-track:4769bf7ad021eda060d44fe40a3693327eeac9ace8689f46b0c083766d23249b` |
| 6 | `theorem` | [actual_joint_balanced_tail_witness](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variant03170c84b272d08679205cdf7b838315c28dd910e00b24cfd11a0452b109937d.lean/declarations/actual-joint-balanced-tail-witness--9cb1dc5d4e9660c1fab1c2dc.md) | 109 | `result-track:9cb1dc5d4e9660c1fab1c2dcf1d01249c0b27beae11fe4fa6d74a4f40a0544f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
