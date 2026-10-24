# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingNonzeroFrequencySplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c30d36a1bc7da9d347ba2f01ba03c5d622f708b9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c30d36a1bc7da9d347ba2f01ba03c5d622f708b9`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingFourierBridge`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexCenteredPairMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredpairmass--486e04954aba8173b1504cd2.md) | 46 | `declaration-track:486e04954aba8173b1504cd2b36b3b2540479d6a54faa41b2dad8c4aa853578c` |
| 2 | `theorem` | [sum_parityHalfIndexCenteredResidueFiberZMod](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/sum-parityhalfindexcenteredresiduefiberzmod--d2e610f04ae36a17732416e6.md) | 54 | `result-track:d2e610f04ae36a17732416e6c993f0cfa5f9e1d2302ed0e5a4cc329f304b7864` |
| 3 | `theorem` | [parityHalfIndexCenteredResidueFourier_zero](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredresiduefourier-zero--ffb71a9aca2189f62b00d202.md) | 72 | `result-track:ffb71a9aca2189f62b00d202b58e2932a28b179b87e1d98ac0fd0a98cfe8b245` |
| 4 | `def` | [parityHalfIndexCenteredNonzeroFrequencyEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenterednonzerofrequencyenergy--b0dcdba2df42a3d05a586441.md) | 83 | `declaration-track:b0dcdba2df42a3d05a5864416ca6fb102b5130f34e9bab9cf305af0b7fd47d37` |
| 5 | `def` | [parityHalfIndexCenteredZeroModeEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredzeromodeenergy--5ac258eb5e71810fa601635e.md) | 92 | `declaration-track:5ac258eb5e71810fa601635e1672919a3b97615940991962057c3bdc7ee4d07c` |
| 6 | `theorem` | [parityHalfIndexCenteredNonzeroFrequencyEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenterednonzerofrequencyenergy-nonneg--1bb6ec5201609c0d0e4f8d64.md) | 100 | `result-track:1bb6ec5201609c0d0e4f8d641a89af42adbc83422fcd7d5febc7fb3d44da27e1` |
| 7 | `theorem` | [parityHalfIndexCenteredZeroModeEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredzeromodeenergy-nonneg--ef575b3166d3b51759303a9e.md) | 107 | `result-track:ef575b3166d3b51759303a9e93b0e80cfd31fbf6f8d3e7987466a5203afd5a34` |
| 8 | `theorem` | [parityHalfIndexCenteredZeroModeEnergy_eq_pairMassSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredzeromodeenergy-eq-pairmasssquare--f0fde3e4b9e2e800042c7221.md) | 115 | `result-track:f0fde3e4b9e2e800042c72211336fb820c4018f26adc3f3e7e66638d2df36253` |
| 9 | `theorem` | [normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/normalized-centeredfullfrequencyenergy-eq-zeromode-add-nonzero--17b30071e994be1d13f1cb8e.md) | 129 | `result-track:17b30071e994be1d13f1cb8e23091ea8cae68cd9b3c186149f5f40184430392a` |
| 10 | `def` | [parityHalfIndexCenteredZeroModeCorrection](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexcenteredzeromodecorrection--a68e9729837f1a5eeb9da828.md) | 159 | `declaration-track:a68e9729837f1a5eeb9da828b99bb7207ded8e7c4aa5c0a27f8f87b3e3b50f44` |
| 11 | `def` | [parityCenteredWindingNonzeroFrequencySplit](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/paritycenteredwindingnonzerofrequencysplit--05358aa6ebd40eb5421c6230.md) | 167 | `declaration-track:05358aa6ebd40eb5421c62303f8973974fa7fad8c0501b8502ffec679d85a3fd` |
| 12 | `theorem` | [parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/paritycenteredwindingnonzerofrequencysplit-eq-fullfrequency--c7e493d774bd422fbea57739.md) | 175 | `result-track:c7e493d774bd422fbea5773903d217f8846bfa06a22645ec0f401cb8c75c64d1` |
| 13 | `theorem` | [parityCenteredWindingNonzeroFrequencySplit_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/paritycenteredwindingnonzerofrequencysplit-eq-wrap--f18a47d39470a140277c29c6.md) | 188 | `result-track:f18a47d39470a140277c29c63567e1ecd0ef89d7afddc372e82963c2d00d9bb7` |
| 14 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_zeroModeCorrection](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityhalfindexsignedquarticwrap-eq-nonzerofrequency-add-zeromodecorrect--0278cb3d923af8487f1dcd80.md) | 196 | `result-track:0278cb3d923af8487f1dcd802b8662becf30f8b328a2274b232aa5c22ccd6e61` |
| 15 | `def` | [parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevenhalfshiftsignedresiduenonzerofrequencyenergy--bf901232d8d1b9d2d6f80162.md) | 205 | `declaration-track:bf901232d8d1b9d2d6f80162ab23309829e7d51704f7f2259c6ff665d35d9262` |
| 16 | `def` | [parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddhalfshiftsignedresiduenonzerofrequencyenergy--3ea85c9989698991d462f63c.md) | 212 | `declaration-track:3ea85c9989698991d462f63c702be7237fc90fa42d40eb2264e58f9bb0abf239` |
| 17 | `def` | [parityEvenCenteredWindingZeroModeCorrection](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevencenteredwindingzeromodecorrection--e712c044a12949dccc859fb8.md) | 219 | `declaration-track:e712c044a12949dccc859fb8423883a068ef34c19c48003ddba8e102187561c7` |
| 18 | `def` | [parityOddCenteredWindingZeroModeCorrection](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddcenteredwindingzeromodecorrection--3d12d47ea36d29fe601db55c.md) | 228 | `declaration-track:3d12d47ea36d29fe601db55cbf8f20608a5e43203c94e2e6bd3014d8e6fcb1cc` |
| 19 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevenhalfshiftsignedresiduefourier-zero-eq-two-mul-pairmass--e975400573e38bfe13de5268.md) | 237 | `result-track:e975400573e38bfe13de526836103a1545b40fe3522359e29421332ac2b8467b` |
| 20 | `theorem` | [parityOddHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddhalfshiftsignedresiduefourier-zero-eq-two-mul-pairmass--17b3a05e1b273b9e61920576.md) | 250 | `result-track:17b3a05e1b273b9e619205766445d0a0c4f73d833c80eca77053ed8d10787d1d` |
| 21 | `theorem` | [parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevenhalfshiftsignedresiduenonzerofrequencyenergy-eq-centered--623f787e64da85ffb9e0a709.md) | 263 | `result-track:623f787e64da85ffb9e0a709748789cc0b55db68c11191e76c054a612d891d20` |
| 22 | `theorem` | [parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddhalfshiftsignedresiduenonzerofrequencyenergy-eq-centered--e469323761eb44c4c64fcfc7.md) | 279 | `result-track:e469323761eb44c4c64fcfc70a7209de23bc87f9c3ddf816604904c68cfd8e0e` |
| 23 | `theorem` | [parityEvenCenteredWindingZeroModeCorrection_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevencenteredwindingzeromodecorrection-eq-centered--2569d4921a52ba95ace823a0.md) | 295 | `result-track:2569d4921a52ba95ace823a03ebacc366b40d01e4204e7e0518bda9c3bfc0aeb` |
| 24 | `theorem` | [parityOddCenteredWindingZeroModeCorrection_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddcenteredwindingzeromodecorrection-eq-centered--cdc899b76b289bf18f348140.md) | 308 | `result-track:cdc899b76b289bf18f348140cd7fa58eee279bcdc33b9df83282fbc3c829d594` |
| 25 | `def` | [parityEvenCenteredWindingNonzeroFrequencySplit](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevencenteredwindingnonzerofrequencysplit--c4484d8f0ea92682a6c6afa3.md) | 321 | `declaration-track:c4484d8f0ea92682a6c6afa3843962d1948a1eaae89204b72f85772c2b8b284b` |
| 26 | `def` | [parityOddCenteredWindingNonzeroFrequencySplit](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddcenteredwindingnonzerofrequencysplit--34262734cd61044c04bdba94.md) | 327 | `declaration-track:34262734cd61044c04bdba94b0093983e7e8e160087ac4f4eaf59eccff176a78` |
| 27 | `theorem` | [parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityevencenteredwindingnonzerofrequencysplit-eq-wrap--e4226bb69795747b3378a04b.md) | 332 | `result-track:e4226bb69795747b3378a04b127a3fa3ed3a915f3dfcc706c46a9af07c8cb5b5` |
| 28 | `theorem` | [parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/parityoddcenteredwindingnonzerofrequencysplit-eq-wrap--739c257948f8e3d36144db29.md) | 346 | `result-track:739c257948f8e3d36144db290df673a4b8f4d71d2edd1e3e8b58d03843ea6f64` |
| 29 | `def` | [regularCenteredWindingNonzeroFrequencySplitAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitatmodulus--386265385155181fbd662c1f.md) | 361 | `declaration-track:386265385155181fbd662c1f0cf512d100615b6a0f459272185b8d26b9337f33` |
| 30 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitatmodulus-eq-residue--40e973c0577d4cf95697607e.md) | 370 | `result-track:40e973c0577d4cf95697607e7d6b6aa22860ce92d29330a7e867132f3003f087` |
| 31 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitatmodulus-eq-fullfrequency--54089f245b5dd92cb4356298.md) | 390 | `result-track:54089f245b5dd92cb4356298fb9580654d40d4bec6d1122e8b10a914a25d3ecd` |
| 32 | `def` | [regularCenteredWindingNonzeroFrequencySplitEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitendpoint--b7eca9f0d0c768e6c071baf3.md) | 401 | `declaration-track:b7eca9f0d0c768e6c071baf361a0920b016f8837405983bafd24bcdb20891a5c` |
| 33 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitendpoint-eq-fullfrequency--326032cbbffafb6a5f35e3be.md) | 411 | `result-track:326032cbbffafb6a5f35e3beaaa574669d31b165e4cc9b688383e786e1b0c3eb` |
| 34 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitendpoint-eq-residue--2504957677dccd73e2d29ed6.md) | 428 | `result-track:2504957677dccd73e2d29ed64cc9584e7624ccf6c86257ce2c477acc717ef0af` |
| 35 | `def` | [RegularCenteredWindingNonzeroFrequencySplitEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitenvelope--43f7946abf7d63338b67e29d.md) | 437 | `declaration-track:43f7946abf7d63338b67e29d0236d46ebe9d7f4826408172b61daf55c6d11d2d` |
| 36 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitenvelope-iff-fullfrequency--a9599898bcf3abd5d88b3192.md) | 442 | `result-track:a9599898bcf3abd5d88b3192a8f4a00fee9fb77778c2954abbd46da9a8992507` |
| 37 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_residue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitenvelope-iff-residue--4210e0a8ac4ce0d7abcc239f.md) | 455 | `result-track:4210e0a8ac4ce0d7abcc239f3dc145e5ce2f93ea0cd5cc77cca1e6b35c1374a3` |
| 38 | `structure` | [RegularCenteredWindingNonzeroFrequencySplitSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitsourcedata--3f81a82397a31fc4520a7232.md) | 464 | `declaration-track:3f81a82397a31fc4520a723223313e5bbe63ea4d74dede2a3a1a0ab183ebcce5` |
| 39 | `def` | [RegularCenteredWindingNonzeroFrequencySplitSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/declarations/regularcenteredwindingnonzerofrequencysplitsource--fffbfda9cd6af05d4b5978d3.md) | 482 | `declaration-track:fffbfda9cd6af05d4b5978d3e805ce6e1099e2bfeba9d4d776e9ef82ce771d94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
