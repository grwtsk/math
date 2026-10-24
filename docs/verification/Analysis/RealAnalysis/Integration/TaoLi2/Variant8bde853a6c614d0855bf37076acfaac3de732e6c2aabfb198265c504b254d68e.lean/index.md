# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TaoLi2.Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbb8c95ef280735297ffb052a2684ad47c8c958e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_one_plus_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-one-plus-upper--9ca1fdb56afa024cbb4a3051.md) | 40 | `result-track:9ca1fdb56afa024cbb4a30514566598ec58dcbaed4514eb8b288895916549857` |
| 2 | `theorem` | [log_one_plus_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-one-plus-lower--07f98d1aed73a1ed6dc3b707.md) | 51 | `result-track:07f98d1aed73a1ed6dc3b70707609f97325cbf66e6e0ffc3f15ffd1435fef28a` |
| 3 | `theorem` | [log_1_5_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-1-5-lower--dda12dc8147c776ef404553c.md) | 72 | `result-track:dda12dc8147c776ef404553c3c61e060cddb61bb07b5a0ad35d15e01992eb849` |
| 4 | `theorem` | [log_1_5_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-1-5-upper--bd0e568771e9ed345b427c53.md) | 76 | `result-track:bd0e568771e9ed345b427c53f77dfd94032d4338375577ecd6648ffc493f78c9` |
| 5 | `theorem` | [log_1_5_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-1-5-bounds--05d326beaa8e58dc7a3fde31.md) | 80 | `result-track:05d326beaa8e58dc7a3fde31041566934b39d8bfd13fd23189ba9ea50ce46fb2` |
| 6 | `theorem` | [log_0_5_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-0-5-lower--1dbad029ed7dc426ff9ae99f.md) | 85 | `result-track:1dbad029ed7dc426ff9ae99f919d2171014d7d846d7ff566b3fdb2cce6c67839` |
| 7 | `theorem` | [log_0_5_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-0-5-upper--a7542bdd934ea2f1d1278b78.md) | 89 | `result-track:a7542bdd934ea2f1d1278b78b9acc1747a91cf0b9794d9892d8b007e5e35d281` |
| 8 | `theorem` | [log_0_5_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-0-5-bounds--20fd5855ce0d8d9af3fc1730.md) | 93 | `result-track:20fd5855ce0d8d9af3fc1730a4133f1f6b80b358e127049dd54a959932bbe3ee` |
| 9 | `theorem` | [cancellation_at_0_1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/cancellation-at-0-1--072414e5a3c362000937050d.md) | 133 | `result-track:072414e5a3c362000937050d6df093e5a154aaabb9a36cc3901ed233ab4574e4` |
| 10 | `theorem` | [symmetric_log_combination_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/symmetric-log-combination-limit--1d18484c56d7b38e22e9e6bd.md) | 155 | `result-track:1d18484c56d7b38e22e9e6bd422057471108eaf8b62744b4d09ac0dc57a382b4` |
| 11 | `theorem` | [symmetric_log_alt_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/symmetric-log-alt-form--38c7dac864e05d9e271ab8cc.md) | 162 | `result-track:38c7dac864e05d9e271ab8cc62f2775c360131819770974e0cd2436cd70f979e` |
| 12 | `theorem` | [log_lower_on_2_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-lower-on-2-3--c07673f17cc22d82cb256d6e.md) | 190 | `result-track:c07673f17cc22d82cb256d6e169e69b9f4ecc3ad6cda047645dbcfb33d74b9c1` |
| 13 | `theorem` | [log_upper_on_2_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/log-upper-on-2-3--9feb92303f8cda7e88f23347.md) | 194 | `result-track:9feb92303f8cda7e88f23347549798253726834e6567ce2ba89ad60d78b1158d` |
| 14 | `theorem` | [int_2_to_3_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/int-2-to-3-bounds--c0a0fd5623dc355d1b058e07.md) | 198 | `result-track:c0a0fd5623dc355d1b058e074356494cb3954190d31bb659a7dba54abca095c3` |
| 15 | `theorem` | [symmetric_bound_at_0_3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/symmetric-bound-at-0-3--692d378db28ade8a4eb1dc61.md) | 281 | `result-track:692d378db28ade8a4eb1dc6136df1591a628dd2f39ed81c97a004454d2f2326c` |
| 16 | `theorem` | [symmetric_bound_at_0_49](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/symmetric-bound-at-0-49--621057f598b4940d914d0a8e.md) | 292 | `result-track:621057f598b4940d914d0a8e99278d0f31eba98dd16b7f6c522436f13e8d7fc9` |
| 17 | `theorem` | [li2_integral_exists](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/declarations/li2-integral-exists--f8139b395068386f8ffffd76.md) | 320 | `result-track:f8139b395068386f8ffffd76e86940e93c9f8406a05ef4b951575e0b96cb6a89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
