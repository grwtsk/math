# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiConditionalLaplace.Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d726895e10d10e1c0424455ba72ee07916326592",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d726895e10d10e1c0424455ba72ee07916326592`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative--216f373152bc7c54027d9bef.md) | 28 | `declaration-track:216f373152bc7c54027d9bef6d3a9e5bbbb26ea41f1fc25123248847b2966566` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiconditionallaplacebudget--a1259549166721f1467bbe63.md) | 32 | `declaration-track:a1259549166721f1467bbe63984c9336caab17a65ec7c5345544e4cc1fd08ddc` |
| 3 | `theorem` | [lower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/lower-nonneg--d3c581018c12fb45ec51568b.md) | 35 | `result-track:d3c581018c12fb45ec51568b5b083574ac28dcc118d6e6c56f5220c61eba54c2` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actual-abs-intervalintegrable--217bddd8214ca4d12daad169.md) | 37 | `result-track:217bddd8214ca4d12daad1698c16c9211ed8de4861954a420c59d3730467e100` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative-at-lower--865ec1ef3ca25a26c3305549.md) | 42 | `result-track:865ec1ef3ca25a26c330554974c5b8aac95a0b998842fd29f35742f57f938148` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative-nonneg--569734cae7204d18d80630fa.md) | 47 | `result-track:569734cae7204d18d80630fa72862ed09d7deed7c43116e06bacb58484c13c6f` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous--d21634dce5b983cd98793059.md) | 52 | `result-track:d21634dce5b983cd98793059fafdd7ed44adcdef71a84a97f4f5583b083656f0` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative-ae-hasderivat--2d9bbadd3a5bfa31a3fbaf22.md) | 58 | `result-track:2d9bbadd3a5bfa31a3fbaf22fe8cf599f4c6c393ba4dd73dc20e31b7b65b7020` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/cumulative-weight-intervalintegrable--63a3fc03c1ba3a6c369b4291.md) | 64 | `result-track:63a3fc03c1ba3a6c369b42913d831028315ee201231fffa7cb7ea2abf63cfa0f` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/absolute-weight-intervalintegrable--17098967f0006b6a18ad8aa3.md) | 71 | `result-track:17098967f0006b6a18ad8aa3df076338c3b7a25543728bf444a5e0f05819e6cf` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxilaplace-finite-abel--c569bd2ebe91a560605bebc5.md) | 78 | `result-track:c569bd2ebe91a560605bebc5af222dd8de64f6afb4c3c14f7abbbad185504e74` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxiabsolutecumulative-le-future-envelope--0f09401a3bb55b3703764881.md) | 113 | `result-track:0f09401a3bb55b3703764881e5d330a7926022e485660a34c9d2bd3096d04058` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/polynomial-exponential-bound--70e5ba52f739866c862e43bd.md) | 126 | `result-track:70e5ba52f739866c862e43bd3b3589e2e042d3af71274f3d304f28e83c4ef917` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/cumulative-weight-norm-bound--8676381dbd4371e39551f691.md) | 152 | `result-track:8676381dbd4371e39551f691e9bdd00e45c65d683e963ef33f266367bd80dbb5` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxicumulativelaplace-integrableon--dc192e0fa5f755c908640331.md) | 172 | `result-track:dc192e0fa5f755c908640331b8ce41ded6a0d0c86228057ad647b2d622723a5c` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxicumulativelaplace-tendsto-zero--b253e4c9e53fc787f287a56f.md) | 189 | `result-track:b253e4c9e53fc787f287a56fb21d929278d96362ed59089cf29cf57b1b012070` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/absolute-laplace-finite-tendsto--03026941a4811a87d43fd72e.md) | 203 | `result-track:03026941a4811a87d43fd72ebf577dc03e4959ef785ea7ffab878ac52a2bb819` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxilaplace-integrableon-of-future-average--999b08a6eccd4e14a5a6b359.md) | 220 | `result-track:999b08a6eccd4e14a5a6b3593351e46ca99a087721b5881f36b32c842737ca12` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxilaplace-integral-norm-eq--5916c9626a1a7b16ad91cb7b.md) | 238 | `result-track:5916c9626a1a7b16ad91cb7bb7c11fccbe428a7b14e5802b1b67cfac5443d543` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxilaplace-integral-norm-le--a0bbc7357a26cf46e466b0e2.md) | 249 | `result-track:a0bbc7357a26cf46e466b0e29e3b401deb6855923230466dca8d68498a22581b` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/declarations/actualxilaplace-norm-le--97dffec4f52167d08ba49986.md) | 279 | `result-track:97dffec4f52167d08ba499866bf27f6bb4412fde7c11912fec6f7dc14b046951` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
