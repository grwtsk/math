# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d3d5792ff7304a2f6aa8022ac6edf3b257be10d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d3d5792ff7304a2f6aa8022ac6edf3b257be10d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Integral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/macro-rules--92f1cb089654e3551ec8382d.md) | 82 | `declaration-track:92f1cb089654e3551ec8382d1537eb05a2895d9cd93139acf53335a4a5d75cbb` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusmap--f4da8dc81770be6cc2a70a11.md) | 91 | `declaration-track:f4da8dc81770be6cc2a70a1109acc96eab0d733d4953fb6b764e5d9f6e6b3508` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusmap-sub-center--003d581f95f45956e4a919ee.md) | 94 | `result-track:003d581f95f45956e4a919ee71a3fce5a2b247fcd5b87241a7b080b62bcefde9` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusmap-eq-center-iff--6e46ffbc5c16935ea5cac178.md) | 98 | `result-track:6e46ffbc5c16935ea5cac178ca97ed29818d375f56aacd0e6722cdc3b40922fe` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusmap-zero-radius--bb07500abe0e7c726ab06b8a.md) | 103 | `result-track:bb07500abe0e7c726ab06b8a306d272d4d9b8fae04a05a79fd8a91e493657847` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegrable--f6c37f8c343f88c55c98377d.md) | 113 | `declaration-track:f6c37f8c343f88c55c98377d7b69456261d8c14b4d69cc472655b3629e5d422b` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegrable-const--6787c89dfe7b85a338f37f9e.md) | 123 | `result-track:6787c89dfe7b85a338f37f9e179afbf02d862dc9350e7d133ea12d4bc8f68e88` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/neg--03305ed9d66d73057351559d.md) | 128 | `result-track:03305ed9d66d73057351559d1fcb03a4a58f7b6c1329f7dfef983354aa403052` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/add--e36ab9a862cb91098ea6aa8d.md) | 132 | `result-track:e36ab9a862cb91098ea6aa8d41043934386d0894c9a4bc1651b917839f9bafde` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/sub--e27104351bf6800d27b53412.md) | 138 | `result-track:e27104351bf6800d27b53412ae2e196481ffe6ae6e654c84a70a5376854755cd` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegrable-zero-radius--79ed27783c47bac14ff80071.md) | 143 | `result-track:79ed27783c47bac14ff8007140b1aa91c9d3e9860ddbb4326080cd002fb73932` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/function-integrable--0408d5083dcf0b1ce0d57822.md) | 149 | `result-track:0408d5083dcf0b1ce0d57822983ac206adce4f59028ea63b235f89126e795bf6` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral--e1336dfa64eaa0f0cc3fdaf4.md) | 163 | `declaration-track:e1336dfa64eaa0f0cc3fdaf43fe76626e9e7d6eb37196c6594edde23eac03102` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-radius-zero--8c546fc1594449a1ac5b3920.md) | 169 | `result-track:8c546fc1594449a1ac5b39204fdc46c6a1d63fa8fdf36ef9401a498d28941b65` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-neg--e00d686fe126be823f3bbeae.md) | 175 | `result-track:e00d686fe126be823f3bbeae64c382e8a398757bf382822dbbe0f0e7cff76ab1` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-add--5bc2777f85375b6353ec409b.md) | 179 | `result-track:5bc2777f85375b6353ec409b0afd5d1c11548f531f97a7f5170b0b634bf5d306` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-sub--4407980f2cbae370162d805f.md) | 185 | `result-track:4407980f2cbae370162d805faeea3c1a2306fc83f8963603d891865271708940` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-smul--20ab876fe63a937cf9c2c614.md) | 190 | `result-track:20ab876fe63a937cf9c2c61487c3e7ebeab2a0b85be3b7e8898f92f46b0dad2d` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-const-mul--8f004bc7f5a1f086b91f1d7c.md) | 195 | `result-track:8f004bc7f5a1f086b91f1d7ca472fc4aec84ba2c8b595c352566c652de0e2503` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/norm-torusintegral-le-of-norm-le-const--782c0e3bb44769dedf36ea15.md) | 202 | `result-track:782c0e3bb44769dedf36ea15654c421f93ce3886e9d5f353f7e1efbb91f18733` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-dim0--e56c985b8eade442db3a8b69.md) | 219 | `result-track:e56c985b8eade442db3a8b69fe7983b6fa861afb12aa364ee1eb352ef8a6cf79` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-dim1--66c60da04bb0929d93397988.md) | 228 | `result-track:66c60da04bb0929d93397988166512c0446501806326c72847f422fde73d4481` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-succabove--26213af3a925b76572b89560.md) | 243 | `result-track:26213af3a925b76572b895600aa6354c8247b3296a30919a076707144c69f6b0` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variantde8f0259c5e7badcafff98c47878d531164b6e4f53600dbf42a83e2eee43a310.lean/declarations/torusintegral-succ--95997ed2f400cdf8c324dd61.md) | 268 | `result-track:95997ed2f400cdf8c324dd6180e6c054726abb7b15094b4bc05c0f01056ecc02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
