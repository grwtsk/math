# Verification target: GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067ed635f13b06de091f788f403bba214f5a5dce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067ed635f13b06de091f788f403bba214f5a5dce`.

Source path: `GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/PrimePhasePacketCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Angle` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [broadSet](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/broadset--c8368ae89a2199ad112d3a7b.md) | 14 | `declaration-track:c8368ae89a2199ad112d3a7b6a6ee496c4b164ad56bd1b1069f604bf49ecdde8` |
| 2 | `def` | [narrowSet](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/narrowset--d9f862061dbc10bad59a2bad.md) | 15 | `declaration-track:d9f862061dbc10bad59a2badffef37a7026fa48f70d798cdbb9e9c5cda33895d` |
| 3 | `def` | [spectrum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/spectrum--4fd4311c6d88d6ce342e1a3f.md) | 16 | `declaration-track:4fd4311c6d88d6ce342e1a3f04237f2d5c6e9f39332a43454a578cb31abb8781` |
| 4 | `def` | [density](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/density--83d059f85c2fd36426f7974a.md) | 17 | `declaration-track:83d059f85c2fd36426f7974a035ab5f93c5134f8052d64cc26f1cfa8d68aa95c` |
| 5 | `def` | [packetEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/packetenergy--d29599b7a5bb3366a062730c.md) | 19 | `declaration-track:d29599b7a5bb3366a062730ca9cf66212f4e52e3e97123919216075fb903c967` |
| 6 | `def` | [narrowEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/narrowenergy--3ec5ac2b075179d8caea46b8.md) | 21 | `declaration-track:3ec5ac2b075179d8caea46b8d671acffea289e8966711a20f18ae82aeedc5f5c` |
| 7 | `def` | [sourceSpectralEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/sourcespectralenergy--0ed0eff43ca1c29fff95d63d.md) | 23 | `declaration-track:0ed0eff43ca1c29fff95d63dfa176b41fb613a3c3c2425bf475382f0facd7ca0` |
| 8 | `def` | [amplification](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/amplification--4e02713f217e847320ff1d98.md) | 25 | `declaration-track:4e02713f217e847320ff1d98873fe7923a78c8fb49e99eb52e8318823553320b` |
| 9 | `def` | [phaseDistance](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/phasedistance--bbbdcbeecd9bb23964e2370d.md) | 27 | `declaration-track:bbbdcbeecd9bb23964e2370dc99bb738eefaedd21c3173bbf3942ade91547aa8` |
| 10 | `theorem` | [narrowSet_eq_complement](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/narrowset-eq-complement--3c9ac991babe77da34d5d984.md) | 30 | `result-track:3c9ac991babe77da34d5d984b3dd266eab71ebc397d4c29e5f324ad5dc190ea7` |
| 11 | `theorem` | [broadSet_measurable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/broadset-measurable--07198d67a4be433fef40f181.md) | 35 | `result-track:07198d67a4be433fef40f18140dd4ca9483dccc8e9e95d72b4b32f74124accf3` |
| 12 | `theorem` | [spectral_split](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/spectral-split--efcca557378ed7481e511f3d.md) | 41 | `result-track:efcca557378ed7481e511f3dd366dc592e96f7f67e0c7dfeef839a4df5b3990e` |
| 13 | `theorem` | [broad_narrow_integral_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/broad-narrow-integral-bound--2b57956f730b4382816e9261.md) | 48 | `result-track:2b57956f730b4382816e926108db3645e4041ef3b238f4e50fe75f78091e1223` |
| 14 | `structure` | [Chart](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/chart--69f92963e514859296ab39f1.md) | 75 | `declaration-track:69f92963e514859296ab39f1defb5fc3c6afb33bc633edda60b5081a681b9aaf` |
| 15 | `def` | [ChildRelation](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/childrelation--b64302773508b3f98623e639.md) | 93 | `declaration-track:b64302773508b3f98623e639f106c23481c51f9d9f13189f28956d45a79898aa` |
| 16 | `theorem` | [childRelation_wellFounded](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/childrelation-wellfounded--fde586582c926f3a87ceef6b.md) | 96 | `result-track:fde586582c926f3a87ceef6be97e9dbbec3321f37ac4b7fe254e282c5208282d` |
| 17 | `theorem` | [nondecreasing_child_rejected](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/nondecreasing-child-rejected--713a7b4e65a917d54cb0e778.md) | 100 | `result-track:713a7b4e65a917d54cb0e7784ecfbd46950fff8c7b45c61f7cc16e4d1eb0212e` |
| 18 | `theorem` | [zero_rank_no_child](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/zero-rank-no-child--c62a2f44f4c1ca2ee87e3070.md) | 105 | `result-track:c62a2f44f4c1ca2ee87e3070b4268909f60b13647601b3384aacde4c98ee46c5` |
| 19 | `structure` | [NormalizedChild](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/normalizedchild--5659e89f363725a113465cd5.md) | 112 | `declaration-track:5659e89f363725a113465cd5d0f733421b9dda2d706e5a0e05b27f0233c5f420` |
| 20 | `inductive` | [PacketResolution](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/packetresolution--f42a5c6bdc69cd724308a6d2.md) | 126 | `declaration-track:f42a5c6bdc69cd724308a6d23cac92d42d15e3051bf52f70108d096c26be444e` |
| 21 | `structure` | [ExtractionCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/extractioncertificate--2a6595e0d6f37af0a9c3ea3a.md) | 136 | `declaration-track:2a6595e0d6f37af0a9c3ea3a250696324b3ab80ff57f3490650a18d9490f09da` |
| 22 | `structure` | [PaidCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/paidcertificate--3cc3924c81376d1f482d10d0.md) | 162 | `declaration-track:3cc3924c81376d1f482d10d0a494767b2efd248b62f47b62b3c58dd2bdaa2d8f` |
| 23 | `theorem` | [paid_extraction_implies_NC](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/paid-extraction-implies-nc--95bb76636e3e3293fc69effc.md) | 172 | `result-track:95bb76636e3e3293fc69effcaa53f76f33c53e3120386b192e89ca5b887d8d26` |
| 24 | `theorem` | [paid_spectral_step](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/declarations/paid-spectral-step--d69f7e0b0b1597499b1e807b.md) | 183 | `result-track:d69f7e0b0b1597499b1e807bf5e678e44a5a6d6eb069cb81d5e6bda6bbf556b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
