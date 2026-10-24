# Verification target: GRWTSK.Analysis.FixedTranslationFilter.Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec95f96ab13881c57dc244db2c67593cf9692680",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/index.md) · [Full source](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec95f96ab13881c57dc244db2c67593cf9692680`.

Source path: `GRWTSK/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplier](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/multiplier--48e647a58fc680af7eb2fafb.md) | 32 | `declaration-track:48e647a58fc680af7eb2fafb378d01d2cfcf7e54641e1bf1e4e341cc1e739144` |
| 2 | `theorem` | [exact_binomial_multiplier](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/exact-binomial-multiplier--179afbc2bc7c86e6b572da64.md) | 36 | `result-track:179afbc2bc7c86e6b572da642960a56c95222b1d6395b6d84439cb7c61a31518` |
| 3 | `theorem` | [right_half_plane_exp_norm](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/right-half-plane-exp-norm--101a4e2903bd438369d6ea9e.md) | 48 | `result-track:101a4e2903bd438369d6ea9e4a60dd2de9e9d7877de170d70f10399f9ab98a0a` |
| 4 | `theorem` | [exp_shift_not_one](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/exp-shift-not-one--bfe19dee5458480acfdba342.md) | 55 | `result-track:bfe19dee5458480acfdba34243697f6c4dbdf07e6776c0a8b589d19bf13d89bd` |
| 5 | `theorem` | [multiplier_retains_every_right_detector](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/multiplier-retains-every-right-detector--168616d0ee3053c5360db828.md) | 62 | `result-track:168616d0ee3053c5360db828c6e351c8d0a8c49430b017c12216cd0452585a01` |
| 6 | `def` | [weightedSource](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/weightedsource--23235ae2886ab8222c44e268.md) | 71 | `declaration-track:23235ae2886ab8222c44e268561c3c76425e46f60bf95f88b511b1264754dccc` |
| 7 | `def` | [ninthDifference](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/ninthdifference--bd094ce2c0e8c692c7e24b50.md) | 78 | `declaration-track:bd094ce2c0e8c692c7e24b5076fcfc92fe50808c45f4632798b610b3b0f4789f` |
| 8 | `theorem` | [ninth_difference_retains_complete_source](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/ninth-difference-retains-complete-source--a705c5fbcde69917b30294a5.md) | 82 | `result-track:a705c5fbcde69917b30294a59fe15661bf6a8df8c46a336b29cd53a5dcca4450` |
| 9 | `theorem` | [every_probe_retains_source_domain](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/every-probe-retains-source-domain--e53dab2318df4a59b77936e2.md) | 88 | `result-track:e53dab2318df4a59b77936e27bdd49a62b387869233eca3e6a5e9eb7738c7f5b` |
| 10 | `theorem` | [ninth_multiplier_retains_every_right_detector](../../../../mathematics/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/declarations/ninth-multiplier-retains-every-right-detector--7d697739aebdc1f19ef55293.md) | 92 | `result-track:7d697739aebdc1f19ef552935735dc1f110030799669575a3f33a59f0af3a4e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
