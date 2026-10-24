# Verification target: GRWTSK.Analysis.Complex.HolomorphicGaugeFieldL2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicGaugeFieldL2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RawField](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/rawfield--dcbe870ba8b98920ed02e1f7.md) | 40 | `declaration-track:dcbe870ba8b98920ed02e1f7a14c4eac40b9261423eb92fa8d9ccaa2e9aa3c17` |
| 2 | `def` | [unframe](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/unframe--64ce8e75ff58189e64597a68.md) | 44 | `declaration-track:64ce8e75ff58189e64597a6886afe3d7e211ffd625da644cd40910f3168bcd1c` |
| 3 | `def` | [frame](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/frame--aaecbef163cc9c3be3f06f49.md) | 47 | `declaration-track:aaecbef163cc9c3be3f06f49e1924e557ac6e2934aaeabff288245f578bc03a7` |
| 4 | `theorem` | [unframe_frame](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/unframe-frame--a3f0d401952aa7d0892ac934.md) | 50 | `result-track:a3f0d401952aa7d0892ac9345f81f572667be6ad3e9e70c407a0e9ac70d0bae7` |
| 5 | `theorem` | [frame_unframe](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/frame-unframe--cbbba09e528eeeb54ac61959.md) | 55 | `result-track:cbbba09e528eeeb54ac61959f35aa230f9d49eeed96ab3ef4b87ef45bcdd4980` |
| 6 | `theorem` | [chart_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/chart-coordinate--bb03e68fbd465104fcc65d10.md) | 61 | `result-track:bb03e68fbd465104fcc65d10127f6a365efac5d781afdb2d3779fafb6510cf53` |
| 7 | `def` | [square](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/square--33a3c30fc27d84d80ca41206.md) | 76 | `declaration-track:33a3c30fc27d84d80ca412061ebc90800faf65cd16268017e16353c9beab18a6` |
| 8 | `theorem` | [square_eq](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/square-eq--827abaebcc6f3cfb991cb79e.md) | 80 | `result-track:827abaebcc6f3cfb991cb79e55f9a47ff511f494c0da5f6e001ce436a5c6e5db` |
| 9 | `def` | [fieldEnergy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldenergy--f89d27e2467546926a775dd6.md) | 90 | `declaration-track:f89d27e2467546926a775dd6221716694484d4bedfb21e2e40d0e852ac42bf67` |
| 10 | `theorem` | [fieldEnergy_eq](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldenergy-eq--4e86aa0cc80ade1e9871d9f0.md) | 94 | `result-track:4e86aa0cc80ade1e9871d9f06e9b46ebb891af0cce48112c15612033666620fa` |
| 11 | `theorem` | [fieldEnergy_frame](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldenergy-frame--a49167e2ced25d1cb7dd4c73.md) | 100 | `result-track:a49167e2ced25d1cb7dd4c7331863595a830f5e66372353d967206d6a440daa3` |
| 12 | `structure` | [FiniteField](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/finitefield--3d6c92ea92e595feca010eda.md) | 106 | `declaration-track:3d6c92ea92e595feca010edaea8516d877c3fffadee52de02216f1c825633a0e` |
| 13 | `theorem` | [square_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/square-integrable--0467121440bb668e8b51c480.md) | 113 | `result-track:0467121440bb668e8b51c4803ab55b5971cca2859f8f11139fef1e2f4fe4d042` |
| 14 | `theorem` | [field_memLp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/field-memlp--3f867629be04268e41c5e4b0.md) | 121 | `result-track:3f867629be04268e41c5e4b0a5ae5a2dc39341c47f43b96c007f533e8addd6a3` |
| 15 | `def` | [ofMemLp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/ofmemlp--c0f672d0919120014a4f5ba1.md) | 127 | `declaration-track:c0f672d0919120014a4f5ba12f678e178058ee0d1e2d5e38c1ead7fdd371ebc0` |
| 16 | `def` | [fieldSetoid](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldsetoid--6ee435ee9fe63558705900c6.md) | 138 | `declaration-track:6ee435ee9fe63558705900c65474376f1492ec2e922c2f34d597e175b60f5c60` |
| 17 | `def` | [FieldL2](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldl2--b319deda1fb76539e41c843d.md) | 146 | `declaration-track:b319deda1fb76539e41c843dc6e79d8dcfa3786e4a4fa2003934b74441d662cc` |
| 18 | `def` | [fieldClass](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldclass--c07fc5e7a71c3f275c2b18e5.md) | 149 | `declaration-track:c07fc5e7a71c3f275c2b18e557f0efab3abff5c8a1a4e93ea1c65446851f8626` |
| 19 | `theorem` | [fieldClass_eq_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldclass-eq-iff--b2ff645ec088291a7a10cc2a.md) | 153 | `result-track:b2ff645ec088291a7a10cc2a44f7812d4cbffa23d803379830d8c19564d936a6` |
| 20 | `theorem` | [ofMemLp_congr_ae](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/ofmemlp-congr-ae--e6194b76c2aa98e9b4157a8d.md) | 159 | `result-track:e6194b76c2aa98e9b4157a8d119083c2fce27357ced7a45d062c6012ade43ead` |
| 21 | `def` | [toScalarL2](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/toscalarl2--3293babd267adedb8f93e97d.md) | 168 | `declaration-track:3293babd267adedb8f93e97d27156c1aefee085163b15ad9a0694cc53b45265e` |
| 22 | `theorem` | [toScalarL2_class_ae](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/toscalarl2-class-ae--4aeafcbd9833016d69987c53.md) | 175 | `result-track:4aeafcbd9833016d69987c530416fda3d8a6c29f8fd5b0f4b77b58f89063b384` |
| 23 | `def` | [fromScalarL2](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fromscalarl2--1b532da02e1e37afacd95097.md) | 180 | `declaration-track:1b532da02e1e37afacd95097a50dd1fd3a6a8fae8af52e58496d343a212b4580` |
| 24 | `theorem` | [to_from](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/to-from--a526b55d7861434484744170.md) | 184 | `result-track:a526b55d786143448474417020c00f6a404f22aecd6a03100d45fee28870dc49` |
| 25 | `theorem` | [from_to](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/from-to--4ca8cd6011534cd44628f0bf.md) | 191 | `result-track:4ca8cd6011534cd44628f0bf3a8a0be7f2951ede17e50ed836ffca0222d732ec` |
| 26 | `def` | [scalarEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/scalarequiv--12c761d8d00d0b256dfbe04b.md) | 203 | `declaration-track:12c761d8d00d0b256dfbe04b7c79037a2891fec37f6a685d46a33a2f4c4056f2` |
| 27 | `def` | [quotientFieldEnergy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/quotientfieldenergy--99b7287670b06d2ba0546bac.md) | 211 | `declaration-track:99b7287670b06d2ba0546bac8e4f2a522c7790aa51e0b9304f402e6be668700e` |
| 28 | `theorem` | [pairing_eq](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/pairing-eq--23355fce468e0cca474016c2.md) | 218 | `result-track:23355fce468e0cca474016c22133218d343c7eb26d44175bd8da7ff68cc03ef4` |
| 29 | `theorem` | [pairing_cross_ae](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/pairing-cross-ae--f9c64db5f328cb1485d7d462.md) | 228 | `result-track:f9c64db5f328cb1485d7d462e4c14ff6f77b82f5e54c0205b21accbd92e09da6` |
| 30 | `theorem` | [fieldPair_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldpair-integrable--417b90451c8a79415c77e644.md) | 237 | `result-track:417b90451c8a79415c77e6444c66ce1e35460c14c81e4e7e6cb932827cb720f5` |
| 31 | `def` | [fieldPairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldpairing--d594dae1a56a390add712cf2.md) | 244 | `declaration-track:d594dae1a56a390add712cf2e09ee1076aeef03af0c67ddd812bf010cba2e9aa` |
| 32 | `theorem` | [fieldPairing_class](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldpairing-class--29e44a1735874f5116e33b83.md) | 248 | `result-track:29e44a1735874f5116e33b831f5b47a774837cb3e23cb11e094f47d28b2c91ce` |
| 33 | `theorem` | [quotientFieldEnergy_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/quotientfieldenergy-norm--04d57f57df0241e530c74b04.md) | 257 | `result-track:04d57f57df0241e530c74b0447d27134b5844b73fe49f1e797c75442525c60ef` |
| 34 | `theorem` | [class_zero_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/class-zero-iff--cacc30c13c6ce097341dd54d.md) | 279 | `result-track:cacc30c13c6ce097341dd54d601fcaa845c796ce4aa2c84145666d6db70fcf67` |
| 35 | `def` | [completedField](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/completedfield--9748bb44cdfd5cc0f629fc15.md) | 300 | `declaration-track:9748bb44cdfd5cc0f629fc159d80044b4b4c609a2e44de39933a36016f332ea9` |
| 36 | `def` | [targetEmbedding](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/targetembedding--c94e668741d6b447ecc490e6.md) | 314 | `declaration-track:c94e668741d6b447ecc490e687854fc7546035fceb6c28c8aeb4fb7a43a2bddc` |
| 37 | `theorem` | [targetEmbedding_normalizes](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/targetembedding-normalizes--faf1cef95370b7b269333823.md) | 319 | `result-track:faf1cef95370b7b269333823f3fdec51457da59081ae41c9eebeed046c13bc61` |
| 38 | `def` | [fieldProjection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection--90ae7370af04414b3b812f06.md) | 332 | `declaration-track:90ae7370af04414b3b812f06e9835d6add13ef2d6b67fdf964f0919c0200f47e` |
| 39 | `theorem` | [fieldProjection_normalizes](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-normalizes--e77726b38c455dc05fc2c9ad.md) | 337 | `result-track:e77726b38c455dc05fc2c9ad68c5241980e8f72abc4a976f58d6a89ca26bd711` |
| 40 | `theorem` | [fieldProjection_idempotent](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-idempotent--be34d8aa9a0d38cbd5e7dc33.md) | 342 | `result-track:be34d8aa9a0d38cbd5e7dc33852ec9bc2d3f089744dec85f1b9eb95bef29dc83` |
| 41 | `theorem` | [fieldProjection_realizes](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-realizes--a12649347e698df72012913f.md) | 352 | `result-track:a12649347e698df72012913f439db36a42dc88e4f072b51e55c617621adafb1e` |
| 42 | `theorem` | [fieldProjection_fixed_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-fixed-iff--a71541edba6532ab6fc2d405.md) | 365 | `result-track:a71541edba6532ab6fc2d405a29322b94dd9bbc2112122a04ef50053d3f209e2` |
| 43 | `theorem` | [fieldProjection_pairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-pairing--f3a72a76c2158114fa14e6e0.md) | 380 | `result-track:f3a72a76c2158114fa14e6e0273c1edf6486193af10d13ed75665730b6103145` |
| 44 | `theorem` | [fieldProjection_energy_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-energy-le--7ad51745b0c5368427862ff1.md) | 390 | `result-track:7ad51745b0c5368427862ff18aaf0d92f2f6732480e5e25aa489cb8e90d1225b` |
| 45 | `theorem` | [fieldProjection_targetEmbedding](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/fieldprojection-targetembedding--58ecbcb809653873936bd53a.md) | 402 | `result-track:58ecbcb809653873936bd53ad699edffda0f6b3b6d1ec9c46743d49879c377a9` |
| 46 | `theorem` | [framed_spike_zero_class](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/framed-spike-zero-class--fd27731bb26a9966a082ec62.md) | 419 | `result-track:fd27731bb26a9966a082ec623910c0da872de1e60598066db019a5634f1ef6c4` |
| 47 | `theorem` | [no_allFields_point_recovery](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/declarations/no-allfields-point-recovery--08d576f3c0e6f459bac50116.md) | 427 | `result-track:08d576f3c0e6f459bac501163c8d4b1d514768d1673f32088d900d82f6dd2249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
