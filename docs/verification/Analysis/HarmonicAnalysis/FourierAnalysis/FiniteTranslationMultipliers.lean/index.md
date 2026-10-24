# Verification target: GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "937cc0e845e5aac7e4fdb4e577520f26135a9ab5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteTranslationMultipliers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `937cc0e845e5aac7e4fdb4e577520f26135a9ab5`.

Source path: `GRWTSK/Analysis/Fourier/FiniteTranslationMultipliers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteTranslationMultipliers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordinaryNote](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarynote--067b9bcfee8dd39ed22cfef1.md) | 11 | `declaration-track:067b9bcfee8dd39ed22cfef1aab775c5229a346c23595190133754ad8772596d` |
| 2 | `def` | [ordinaryCascade](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarycascade--ff1c17390c0e1883e12d551b.md) | 13 | `declaration-track:ff1c17390c0e1883e12d551bbfde076b5e3a99a4378befe4a515f76d98318bf3` |
| 3 | `def` | [ordinaryBlock](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinaryblock--15185e943b748b5bf6adf1e5.md) | 15 | `declaration-track:15185e943b748b5bf6adf1e5ea8c481fbf7c222a7d85767cf06e40460d7a50bf` |
| 4 | `theorem` | [translate_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/translate-integrable--b51c98d9c5e172b1fc3a5a7b.md) | 18 | `result-track:b51c98d9c5e172b1fc3a5a7b05539911941d494f266ed947c24f83736a9df193` |
| 5 | `theorem` | [rawFourier_const_mul](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-const-mul--bfe5dada20d7951cc27104d1.md) | 22 | `result-track:bfe5dada20d7951cc27104d1b5fcc15aff58e00ef653d9fc06b2b0ab9d3eb31c` |
| 6 | `theorem` | [rawFourier_add](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-add--faca9e70d2b257d0908d82ca.md) | 29 | `result-track:faca9e70d2b257d0908d82ca04bf09095938777aff652911c7b048ac06d31332` |
| 7 | `theorem` | [rawFourier_sub](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-sub--8d3840af40d3bd39d1866c42.md) | 35 | `result-track:8d3840af40d3bd39d1866c42e687e8eb0ca06e453b8aafdfdfacc41d03d1b9d4` |
| 8 | `theorem` | [ordinaryNote_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarynote-integrable--ea51d7097d4e4dd60b23aa6a.md) | 42 | `result-track:ea51d7097d4e4dd60b23aa6a32c6d4ba1937b40fbd6e51364e5ed9e3ed4367a3` |
| 9 | `theorem` | [ordinaryCascade_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarycascade-integrable--e5bb89a056cdbd724f4cd9db.md) | 46 | `result-track:e5bb89a056cdbd724f4cd9db9d5cb2a24fba058e0b51980ea0ab5d6e2db77b6b` |
| 10 | `theorem` | [rawFourier_ordinaryNote](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-ordinarynote--3d08aed75a06b809ab58c592.md) | 52 | `result-track:3d08aed75a06b809ab58c59222f30620a3b68603dff22f7f93b28974db105cad` |
| 11 | `theorem` | [rawFourier_ordinaryCascade](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-ordinarycascade--641e772ff5ad34c82b974a2c.md) | 62 | `result-track:641e772ff5ad34c82b974a2c707dcce85abd67fd7382556080bb699e0c34d6c0` |
| 12 | `theorem` | [rawFourier_ordinaryBlock](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-ordinaryblock--ac3dc565bceeb0bd2535de1f.md) | 74 | `result-track:ac3dc565bceeb0bd2535de1fb5487519f0e706c745d60c9cbd2ac8c406f5db9c` |
| 13 | `theorem` | [realCascade_causal](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/realcascade-causal--e4414bdf34e1ee0cf5f2c362.md) | 81 | `result-track:e4414bdf34e1ee0cf5f2c3622b1d5b3b5778ee79fc80f8cc4ea6fc07b32da324` |
| 14 | `theorem` | [ordinaryNote_realBridge](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarynote-realbridge--087b4c578be29f42920b0c76.md) | 97 | `result-track:087b4c578be29f42920b0c765b99df64cd59886a3d22e223f9a3fc8c4def87d1` |
| 15 | `theorem` | [ordinaryCascade_realBridge](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/ordinarycascade-realbridge--05364f72203735f50c0b818e.md) | 113 | `result-track:05364f72203735f50c0b818e6df1d1d3eda12739a1b29d04d91ee5f1978991ad` |
| 16 | `theorem` | [rawFourier_causal_primeBlock](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-causal-primeblock--1c7d00e43b388326fc6368f9.md) | 126 | `result-track:1c7d00e43b388326fc6368f9507d76672dc00682e163104139aa655a42e90bcd` |
| 17 | `theorem` | [primeState_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/primestate-continuous--9e34824fe57f716347ea506f.md) | 137 | `result-track:9e34824fe57f716347ea506f25a3f5dabc538a8e2756ca1a769d8f0c1aa87cca` |
| 18 | `def` | [windowedState](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/windowedstate--bfeb5a05199809543c27afc8.md) | 151 | `declaration-track:bfeb5a05199809543c27afc8a9c76879af79d5207ee9dcace9d16adf72b5dbaf` |
| 19 | `theorem` | [windowedState_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/windowedstate-integrable--92b5b52fb90725036681b3b7.md) | 154 | `result-track:92b5b52fb90725036681b3b74e40d3edf0e58beb6ef4fc99030963c76f782a3d` |
| 20 | `theorem` | [windowedState_causal](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/windowedstate-causal--1d0dcac38bd69d4f3de422f9.md) | 166 | `result-track:1d0dcac38bd69d4f3de422f9521b0aabe1db6f26848e90c3886910c3466464f3` |
| 21 | `theorem` | [rawFourier_windowed_primeBlock](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/declarations/rawfourier-windowed-primeblock--16eef247c4df3534774dc24f.md) | 172 | `result-track:16eef247c4df3534774dc24f922b7a51af2ffef886397c9eb96fccf29c86476f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
