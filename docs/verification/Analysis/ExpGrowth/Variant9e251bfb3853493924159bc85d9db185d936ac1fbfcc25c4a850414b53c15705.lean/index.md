# Verification target: GRWTSK.Analysis.ExpGrowth.Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md) · [Full source](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b30c4138f04a8efbc557c0e3775d30b9ce7dab3`.

Source path: `GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_norm_le_log_one_add_norm](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/log-norm-le-log-one-add-norm--5b970a2ab3bffb75e2fa98da.md) | 45 | `result-track:5b970a2ab3bffb75e2fa98da147cc371b6e5dbf4ccb45b5ce126512e4805e7dc` |
| 2 | `theorem` | [log_nonneg_mul_inv_norm_of_norm_le](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/log-nonneg-mul-inv-norm-of-norm-le--f8af49a4e246ed695eafd90b.md) | 55 | `result-track:f8af49a4e246ed695eafd90b438bdbb38492fb12c836ab5c3abce1dd7137fe87` |
| 3 | `theorem` | [log_two_le_log_two_mul_mul_inv_norm_of_norm_le](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/log-two-le-log-two-mul-mul-inv-norm-of-norm-le--e690db19c76e1f21ae0f324d.md) | 66 | `result-track:e690db19c76e1f21ae0f324d97a3b84f59f49f28fa27bb0c42d7c01a26aab9d0` |
| 4 | `theorem` | [norm_le_exp_mul_rpow_of_exponent_le](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/norm-le-exp-mul-rpow-of-exponent-le--237cb775efcb56dd695474dc.md) | 77 | `result-track:237cb775efcb56dd695474dc7c23f79608c8e477bbaae8b5c92ae5d43cb70ab1` |
| 5 | `theorem` | [norm_le_exp_mul_rpow_of_log_growth](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/norm-le-exp-mul-rpow-of-log-growth--d74810859f2235ff114cdb72.md) | 88 | `result-track:d74810859f2235ff114cdb72e76fb9bcddf5f95dd599ca9a70f866d3543efbdc` |
| 6 | `theorem` | [log_growth_of_norm_le_exp_mul_rpow](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/log-growth-of-norm-le-exp-mul-rpow--3236666c07ddf743c9d732cb.md) | 101 | `result-track:3236666c07ddf743c9d732cb725bff648d409e89f60c00cc57d057e71cbd3e1c` |
| 7 | `theorem` | [exists_norm_le_exp_mul_pow_of_rpow_bound](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/exists-norm-le-exp-mul-pow-of-rpow-bound--6c9d8a9e5b76cc26b716c7b0.md) | 119 | `result-track:6c9d8a9e5b76cc26b716c7b00968268be717ef8009e9e774108cd9b781bec812` |
| 8 | `theorem` | [sq_le_exp_const_mul_rpow](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/sq-le-exp-const-mul-rpow--7b14b1808d4b9db44fd7c175.md) | 135 | `result-track:7b14b1808d4b9db44fd7c1757e565648eb6775222e0ef3817810820a51d21ec6` |
| 9 | `theorem` | [one_add_le_three_mul_one_add_of_le_two_mul_max](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/one-add-le-three-mul-one-add-of-le-two-mul-max--e39ccb973d11009cf6e7fdb3.md) | 165 | `result-track:e39ccb973d11009cf6e7fdb3e49d7fbfe337c5f43ba5fb8f2b1ab90c2228f9cf` |
| 10 | `theorem` | [exp_mul_rpow_le_exp_mul_rpow_of_le_mul](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/exp-mul-rpow-le-exp-mul-rpow-of-le-mul--4b2b5b773745982c6577757d.md) | 172 | `result-track:4b2b5b773745982c6577757df7902aae0973001b444f91de2c32bd689ec9f6f0` |
| 11 | `theorem` | [exists_between_self_and_floor_add_one_same_floor](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/exists-between-self-and-floor-add-one-same-floor--48c791542632dd439a6a3b59.md) | 183 | `result-track:48c791542632dd439a6a3b597f8ee27c977f99aebc53c9e67b9f67287bad228f` |
| 12 | `theorem` | [log_norm_le_of_log_one_add_growth_on_sphere](../../../../mathematics/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/declarations/log-norm-le-of-log-one-add-growth-on-sphere--339ec6434a56e7d62530b497.md) | 201 | `result-track:339ec6434a56e7d62530b497c3e729622a6870a5ccee1aed0211de5d64a91ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
