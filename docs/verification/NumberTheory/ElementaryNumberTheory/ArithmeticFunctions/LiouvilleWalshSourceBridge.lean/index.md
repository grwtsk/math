# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleWalshSourceBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11fea87045fe6833a20d9201c0917ff636886f9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11fea87045fe6833a20d9201c0917ff636886f9`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteChowlaUniformEnvelope`](../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [liouville_positive_pm_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouville-positive-pm-one--9fb8ee818b0b927278d1065f.md) | 45 | `result-track:9fb8ee818b0b927278d1065f25698a9771f29cc2d190fdecf7f5b50bc4a412ae` |
| 2 | `def` | [liouvillePositiveBool](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillepositivebool--e1e6b952e17551033409c68c.md) | 65 | `declaration-track:e1e6b952e17551033409c68c240dfb9549982f746d6300945f1125c624a109ba` |
| 3 | `theorem` | [liouvillePositiveBool_sign](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillepositivebool-sign--fe2d9c0fe4581dd944f79c4b.md) | 69 | `result-track:fe2d9c0fe4581dd944f79c4b5e54d3d00ed7a037b162cacb30bd2030c480d5df` |
| 4 | `theorem` | [ordinaryLiouvilleWord_sign](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/ordinaryliouvilleword-sign--04a731f6613dd2e146d0fd11.md) | 78 | `result-track:04a731f6613dd2e146d0fd11a8debc4d3df2e5a7a220a3d054f96638da09024e` |
| 5 | `def` | [liouvilleSubsetMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillesubsetmean--773f1218ba7a8335da5a4448.md) | 87 | `declaration-track:773f1218ba7a8335da5a4448b8cef4f75960fb885382fa88b214f64f0f06f057` |
| 6 | `theorem` | [liouvilleSubsetMean_eq_sourceCorrelation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillesubsetmean-eq-sourcecorrelation--ee6cd367ecffc6936852c315.md) | 95 | `result-track:ee6cd367ecffc6936852c3153fa189e2c73e7769ab3beac6dede641c650027ae` |
| 7 | `theorem` | [liouvilleSubsetMean_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillesubsetmean-empty--354a68833b08c1d293fce088.md) | 111 | `result-track:354a68833b08c1d293fce088114b8da4d1966e1a0032d2f88a1cf25625fcc017` |
| 8 | `theorem` | [liouvilleSubsetMean_zero_sample](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillesubsetmean-zero-sample--0cdd1e640e55f4ca7b073956.md) | 120 | `result-track:0cdd1e640e55f4ca7b07395677e143fa5beb6a1ff2a5f4b712760b8ca18d585b` |
| 9 | `def` | [liouvilleAllOrderEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvilleallorderenergy--dff5afebbb7c400121044f91.md) | 127 | `declaration-track:dff5afebbb7c400121044f91fff534c91624ec94900c14734643b4bedd26064f` |
| 10 | `theorem` | [liouvilleAllOrderEnergy_eq_sourceEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvilleallorderenergy-eq-sourceenergy--cc7615974511e34f0fbdcd0f.md) | 133 | `result-track:cc7615974511e34f0fbdcd0fe9b11455d2c542f434ab26b7f25a593f57f19e16` |
| 11 | `def` | [LiouvilleAllOrderOrdinaryEnvelope](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvilleallorderordinaryenvelope--f3c87afafd532e9bf5337f69.md) | 146 | `declaration-track:f3c87afafd532e9bf5337f69d9c2217e35ff48dd349e1d393cb2c81c45e0d646` |
| 12 | `theorem` | [liouvilleEnvelope_iff_generic](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvilleenvelope-iff-generic--a86f0a60ce760b8b521fed60.md) | 156 | `result-track:a86f0a60ce760b8b521fed60a60d0fbe8e030ca9d83ba142ec7ecf9cda54b8e7` |
| 13 | `theorem` | [liouvilleCyclicTV_le_energy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillecyclictv-le-energy--cdaf48582cf3a45956c2dc0d.md) | 176 | `result-track:cdaf48582cf3a45956c2dc0d459e1d89ff0fbfedf27fcc6de23102c36d193b79` |
| 14 | `theorem` | [liouvilleCyclicTV_of_allOrderEnvelope](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/declarations/liouvillecyclictv-of-allorderenvelope--e5009b857880a6e3ab1f5162.md) | 189 | `result-track:e5009b857880a6e3ab1f5162469d817e460ea43b98ba4b74cafdf9023e7c9afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
