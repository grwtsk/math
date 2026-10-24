# Verification target: GRWTSK.Analysis.LogMeromorphic.Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f4586150e9f16d02aa612b1364fa0173af75547",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/index.md) · [Full source](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f4586150e9f16d02aa612b1364fa0173af75547`.

Source path: `GRWTSK/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeromorphicOn.intervalIntegrable_log_norm](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-intervalintegrable-log-norm--17b5f908892ad169381c30cf.md) | 46 | `result-track:17b5f908892ad169381c30cfe268206ec512b651b1eca3b089880b1ee8fef41f` |
| 2 | `theorem` | [MeromorphicOn.intervalIntegrable_posLog_norm](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-intervalintegrable-poslog-norm--9cba10373ab3c68e533f5d1d.md) | 85 | `result-track:9cba10373ab3c68e533f5d1d56060191a8c2d8a280dbe602a418d290b3014896` |
| 3 | `theorem` | [_root_.MeromorphicOn.intervalIntegrable_log](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/root-meromorphicon-intervalintegrable-log--bc1c22b6ba645086b73dd2a0.md) | 99 | `result-track:bc1c22b6ba645086b73dd2a0430229d5a721567eacc50595bb2237503d54cf49` |
| 4 | `theorem` | [intervalIntegrable_log_sin](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/intervalintegrable-log-sin--9eabbffe3ac8fa67bafb8d35.md) | 108 | `result-track:9eabbffe3ac8fa67bafb8d358b4900311b3c1bb8bf6da8001dfa06a6762db36c` |
| 5 | `theorem` | [intervalIntegrable_log_cos](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/intervalintegrable-log-cos--808d285a28917df20344f779.md) | 115 | `result-track:808d285a28917df20344f77967f51aa47e24eb32bc06c32a3034f1cb722b42e5` |
| 6 | `theorem` | [MeromorphicOn.circleIntegrable_log_norm](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-circleintegrable-log-norm--5d8b8ab2ae3ef604d10eea5f.md) | 134 | `result-track:5d8b8ab2ae3ef604d10eea5f5218161c7c191a538f804a6d1a4914af2e044a0a` |
| 7 | `theorem` | [MeromorphicOn.circleIntegrable_log_norm_of_nonneg](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-circleintegrable-log-norm-of-nonneg--d9281ddeb9c28228748086de.md) | 174 | `result-track:d9281ddeb9c28228748086de54748fe10a743d33a7dc90adeff8183adbd1ebf9` |
| 8 | `theorem` | [circleIntegrable_log_norm_factorizedRational](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/circleintegrable-log-norm-factorizedrational--d0a18675508cbb1ab50c5a51.md) | 188 | `result-track:d0a18675508cbb1ab50c5a518e2056013d260f0fe82ac21fa3dd99691297a04f` |
| 9 | `theorem` | [MeromorphicOn.circleIntegrable_posLog_norm](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-circleintegrable-poslog-norm--06fbc7069714812bbce95322.md) | 197 | `result-track:06fbc7069714812bbce9532267feb6a9ca3596e27c749c17f7b4b31088ca89f2` |
| 10 | `theorem` | [MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg](../../../../mathematics/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/declarations/meromorphicon-circleintegrable-poslog-norm-of-nonneg--a76d7938ab9449f10b572e32.md) | 210 | `result-track:a76d7938ab9449f10b572e32953a95fda257bd735013c90f50012423c2f882f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
