# Verification target: GRWTSK.Analysis.SpecialFunctions.TwoLine.Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a`.

Source path: `GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Y` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logDeriv_Gammaℝ_shift](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/logderiv-gamma-shift--a6609c9d0502268090fe7deb.md) | 30 | `result-track:a6609c9d0502268090fe7debd07d0f291fa7044a5c11556e00b9b3dc3c8ee1ea` |
| 2 | `lemma` | [re_logDeriv_Gammaℝ_ge](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/re-logderiv-gamma-ge--ccbcb20b10309ad8ef1f84dd.md) | 61 | `result-track:ccbcb20b10309ad8ef1f84ddc56b590a0fb8fc5a80c1fd15de1213a0fc5ffdfe` |
| 3 | `theorem` | [re_L2_two_ge](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/re-l2-two-ge--00432d8d76f1b58a5ce265ab.md) | 83 | `result-track:00432d8d76f1b58a5ce265ab083df008499690ac334da94a01130902dfe06754` |
| 4 | `lemma` | [im_ne_zero_of_mem_closedBall](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/im-ne-zero-of-mem-closedball--39dbf5b61526f3ec4172e5ba.md) | 120 | `result-track:39dbf5b61526f3ec4172e5ba8dade6609ef805c80c1f4e9436f25a6053effadf` |
| 5 | `theorem` | [hardyW_analyticOnNhd_disc](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/hardyw-analyticonnhd-disc--8de1ebd42745825cc2a2b69d.md) | 128 | `result-track:8de1ebd42745825cc2a2b69d6025e4dbb54fcc09492c5bf9aa5e630f55b6b837` |
| 6 | `lemma` | [two_line_im_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/two-line-im-ne-zero--aeac7d55bc7d4a96a273d772.md) | 134 | `result-track:aeac7d55bc7d4a96a273d77242cfca9e430e70b8eb47dc21fb787b8d8a1bf140` |
| 7 | `lemma` | [hardyW_eq_zeta_mul](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/hardyw-eq-zeta-mul--6a193ba62a72455b02e4a1fe.md) | 138 | `result-track:6a193ba62a72455b02e4a1fe2ad6c6b15435643b21971af1952ca3e59c3c01fd` |
| 8 | `theorem` | [hardyW_two_line_lower](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/hardyw-two-line-lower--f53386de19a4e9a768458b27.md) | 143 | `result-track:f53386de19a4e9a768458b279859fe82516bd9deeb8c7cb4d808d3240262221e` |
| 9 | `theorem` | [exists_hardyW_ne_zero_upper](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/exists-hardyw-ne-zero-upper--d1345863ad993e9b778d570b.md) | 170 | `result-track:d1345863ad993e9b778d570b3f70bb178b585d43e529c700105fb126ede5b05e` |
| 10 | `theorem` | [exists_hardyW_ne_zero_lower](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/exists-hardyw-ne-zero-lower--e19133ce0c5f5cf7c953290d.md) | 176 | `result-track:e19133ce0c5f5cf7c953290d6c20c8f865a548f4fe3929ae22205b1d0015ace3` |
| 11 | `lemma` | [norm_logDeriv_Gammaℝ_le_lin](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/norm-logderiv-gamma-le-lin--977cf30b09b212041f282a31.md) | 185 | `result-track:977cf30b09b212041f282a31a08583d78d2c9e0864c4cf9b3f91d1515e6aaa79` |
| 12 | `lemma` | [norm_L2_le](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/norm-l2-le--8169b26855e3004573754d1a.md) | 212 | `result-track:8169b26855e3004573754d1a2b5e2fea1e8698b2c8085135b5c97ca006e840c3` |
| 13 | `theorem` | [hardyW_growth](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/declarations/hardyw-growth--151937c2ff5eb94d8a43e6ed.md) | 259 | `result-track:151937c2ff5eb94d8a43e6ed03cfbb17f7a156b4aae4e3952938f062f635ee1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
