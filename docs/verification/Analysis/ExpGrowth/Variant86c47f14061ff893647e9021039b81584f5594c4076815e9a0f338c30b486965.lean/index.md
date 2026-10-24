# Verification target: GRWTSK.Analysis.ExpGrowth.Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0328f527a7bb75523687c736a2c311f2c731a58f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/index.md) · [Full source](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0328f527a7bb75523687c736a2c311f2c731a58f`.

Source path: `GRWTSK/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean.json)

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
| 1 | `theorem` | [log_norm_le_log_one_add_norm](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/log-norm-le-log-one-add-norm--48a661ba315413b8e6f558a7.md) | 53 | `result-track:48a661ba315413b8e6f558a73a68bb93b45275af0f554e3eb22c8f92d0d39b8a` |
| 2 | `theorem` | [log_nonneg_mul_inv_norm_of_norm_le](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/log-nonneg-mul-inv-norm-of-norm-le--1ea2ce473d3bdfa4b26ca3c8.md) | 63 | `result-track:1ea2ce473d3bdfa4b26ca3c874ca95644117917a0f1006f24fe4192e1748bab7` |
| 3 | `theorem` | [log_two_le_log_two_mul_mul_inv_norm_of_norm_le](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/log-two-le-log-two-mul-mul-inv-norm-of-norm-le--d10204121fcea8b3aa567323.md) | 74 | `result-track:d10204121fcea8b3aa567323278b5aab2b3ca2c2a1d438ba97472802f97918af` |
| 4 | `theorem` | [norm_le_exp_mul_rpow_of_exponent_le](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/norm-le-exp-mul-rpow-of-exponent-le--a6d2eafec9ba7ebf1246d246.md) | 85 | `result-track:a6d2eafec9ba7ebf1246d246420ccacb31773c911d7f976feae401528c0fa1a7` |
| 5 | `theorem` | [norm_le_exp_mul_rpow_of_log_growth](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/norm-le-exp-mul-rpow-of-log-growth--32240223f4103c6c5774ca3b.md) | 96 | `result-track:32240223f4103c6c5774ca3bd6a12ac7c6019f7591d94ba0d50d19103c55bd7d` |
| 6 | `theorem` | [log_growth_of_norm_le_exp_mul_rpow](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/log-growth-of-norm-le-exp-mul-rpow--bc3c2d1468dc62c4790b5631.md) | 109 | `result-track:bc3c2d1468dc62c4790b56315679d34c0bfad21a33e5c2f60e21691a83185448` |
| 7 | `theorem` | [exists_norm_le_exp_mul_pow_of_rpow_bound](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/exists-norm-le-exp-mul-pow-of-rpow-bound--639856625f423a15e06ac830.md) | 127 | `result-track:639856625f423a15e06ac830a513c10420917fcbacd13786e4819c271cef881f` |
| 8 | `theorem` | [sq_le_exp_const_mul_rpow](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/sq-le-exp-const-mul-rpow--d1f86e6d508c41cd0cae798d.md) | 143 | `result-track:d1f86e6d508c41cd0cae798d89c392c34ed28642626a71bcf0e066430d0d14f6` |
| 9 | `theorem` | [one_add_le_three_mul_one_add_of_le_two_mul_max](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/one-add-le-three-mul-one-add-of-le-two-mul-max--5a0490af5ba327920d746470.md) | 173 | `result-track:5a0490af5ba327920d7464705e3556f3b0233344c545f0431583bd74dd39f541` |
| 10 | `theorem` | [exp_mul_rpow_le_exp_mul_rpow_of_le_mul](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/exp-mul-rpow-le-exp-mul-rpow-of-le-mul--bf4e4b9e8a1cfc349c2829a7.md) | 180 | `result-track:bf4e4b9e8a1cfc349c2829a76013f6be17c25d480b0067c01ba5d2f2aa14fd35` |
| 11 | `theorem` | [exists_between_self_and_floor_add_one_same_floor](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/exists-between-self-and-floor-add-one-same-floor--357a749756100aaecd32a56a.md) | 191 | `result-track:357a749756100aaecd32a56a4609575359bab5573584ed3a498cba5deea46465` |
| 12 | `theorem` | [log_norm_le_of_log_one_add_growth_on_sphere](../../../../mathematics/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/declarations/log-norm-le-of-log-one-add-growth-on-sphere--551f422a3e24e059c5fab5ba.md) | 209 | `result-track:551f422a3e24e059c5fab5ba9ec5d7a3ec712c112f490a52afbbc02495aba0b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
