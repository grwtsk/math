# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.LpSpace.Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "421ad5c9db2b10829ff2bec8ad114f80c75f6e0f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `421ad5c9db2b10829ff2bec8ad114f80c75f6e0f`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformₗᵢ](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/fouriertransform--e6119e70f8434191e2ec759b.md) | 60 | `declaration-track:e6119e70f8434191e2ec759b31c4420790e0c2e5f82ff35ce52adc3391a0e6ec` |
| 2 | `instance` | [instFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfouriertransform--9161104f7aaed14851489d2a.md) | 67 | `declaration-track:9161104f7aaed14851489d2abaf1368063029f6c474391d6d40e16b4ba931a0a` |
| 3 | `instance` | [instFourierAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfourieradd--50bacc6fb08b2f7e9fa8b630.md) | 70 | `declaration-track:50bacc6fb08b2f7e9fa8b63063ce001364d3c7ad4ad7b68e9f6c2d6f87b37749` |
| 4 | `instance` | [instFourierSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfouriersmul--3e9cd026b6b468099de21f57.md) | 73 | `declaration-track:3e9cd026b6b468099de21f578643625da50399d735711fb53f821d576c622d31` |
| 5 | `instance` | [instContinuousFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instcontinuousfourier--c2eab9f1dfb123d555069ccb.md) | 76 | `declaration-track:c2eab9f1dfb123d555069ccb4fe2b62288473b9e5582c735339d8b82e5189d67` |
| 6 | `instance` | [instFourierTransformInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfouriertransforminv--e158c2356dfac403dec809e3.md) | 79 | `declaration-track:e158c2356dfac403dec809e344ad63ff5620e7f5da75a251fa29a3a563cd4723` |
| 7 | `instance` | [instFourierInvAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfourierinvadd--3f23cd64508dfe8c03e531a2.md) | 82 | `declaration-track:3f23cd64508dfe8c03e531a263e83bc6526ec69920fbae64627bae26edd55ed9` |
| 8 | `instance` | [instFourierInvSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfourierinvsmul--e95e22e96a2a0b13571aa88f.md) | 85 | `declaration-track:e95e22e96a2a0b13571aa88fabe5b17148c47421c7c0504c3f111952435dc6ea` |
| 9 | `instance` | [instContinuousFourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instcontinuousfourierinv--41861659ebd854e458dfba6d.md) | 88 | `declaration-track:41861659ebd854e458dfba6d794abbe5f36bc4d65aa16e469b00af71475725b2` |
| 10 | `instance` | [instFourierPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfourierpair--871cdebdb5be98e25526e2c6.md) | 91 | `declaration-track:871cdebdb5be98e25526e2c68c8af11a983128ecd24467901cd2aed5a5b4a721` |
| 11 | `instance` | [instFourierPairInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/instfourierpairinv--b87d2c62984aa07f91b42288.md) | 94 | `declaration-track:b87d2c62984aa07f91b422881d3be49d1c3b614a7fbf162fecc0c0fa5f459d4d` |
| 12 | `theorem` | [norm_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/norm-fourier-eq--d59ea59bee47639f51b6f11e.md) | 99 | `result-track:d59ea59bee47639f51b6f11eef620680a0d214b17a1a582a7fca47c157862474` |
| 13 | `theorem` | [inner_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/inner-fourier-eq--1d0f133288d1a8ba29cc5131.md) | 103 | `result-track:1d0f133288d1a8ba29cc5131c1bf8b2408af91fdeec252b459885a3238bdcf4f` |
| 14 | `theorem` | [SchwartzMap.toLp_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/schwartzmap-tolp-fourier-eq--5c78540d6e4619186c4005e4.md) | 109 | `result-track:5c78540d6e4619186c4005e4ed03d56443d4dcf3e4d74771bca21ae8d0aa3fbb` |
| 15 | `theorem` | [SchwartzMap.toLp_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/schwartzmap-tolp-fourierinv-eq--23fbceab9d6cd28f0f1476a3.md) | 118 | `result-track:23fbceab9d6cd28f0f1476a34dbed23e4f69a3aeace4ec26330648889de970f6` |
| 16 | `theorem` | [fourier_toTemperedDistribution_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/fourier-totempereddistribution-eq--ab573e3956fc2f6cc26e7c38.md) | 130 | `result-track:ab573e3956fc2f6cc26e7c38bf5d6456fb90ad4cd85e9d31efd9fb5d90ddb401` |
| 17 | `theorem` | [fourierInv_toTemperedDistribution_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variantfabc597bf428564d02066da4b9f469f26965d7e47311c26ae3ec15888566a828.lean/declarations/fourierinv-totempereddistribution-eq--ceb3061c25180d01cf301c45.md) | 142 | `result-track:ceb3061c25180d01cf301c455a984b993ca4c7f99064614ada794d2bd491ffd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
