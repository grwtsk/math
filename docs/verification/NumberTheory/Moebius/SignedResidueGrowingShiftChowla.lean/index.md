# Verification target: GRWTSK.NumberTheory.Moebius.SignedResidueGrowingShiftChowla

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09313398bceac03b13fc67b9def98561da23ea41",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09313398bceac03b13fc67b9def98561da23ea41`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParitySignedResidueConvolution`](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityPairShift](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritypairshift--52a4c3586785a344e3d3c7f6.md) | 46 | `declaration-track:52a4c3586785a344e3d3c7f6ecc661e72b83a75f6abfeb21d63dda3f9c9b1712` |
| 2 | `def` | [parityGrowingShiftRange](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftrange--59c30078dd89850ed8eae0ac.md) | 51 | `declaration-track:59c30078dd89850ed8eae0ac40e0ab9aa3b2c11a57cbe40d2f4a0a57c71c4353` |
| 3 | `def` | [parityShiftBaseSet](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/parityshiftbaseset--e393c6af53269874cb715286.md) | 55 | `declaration-track:e393c6af53269874cb7152864fca536aec8404f9285c1baff7be62293ad55f35` |
| 4 | `def` | [parityShiftPairSet](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/parityshiftpairset--78b884c29df6252cd384fb41.md) | 60 | `declaration-track:78b884c29df6252cd384fb415b3f153ede747276230b5c91eeebb7e460f4df3d` |
| 5 | `theorem` | [parityPairShift_pos](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritypairshift-pos--41daca3c9c26a6f266e3bccf.md) | 66 | `result-track:41daca3c9c26a6f266e3bccf9a3d38e9edabf6b3dfdb953706c0cbc290e4b63c` |
| 6 | `theorem` | [parityPair_second_eq_first_add_twiceShift](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritypair-second-eq-first-add-twiceshift--8d96062ad71212372cf05fe5.md) | 80 | `result-track:8d96062ad71212372cf05fe5daef9ee914227404129dbc94e43cfb4a9bea2dc1` |
| 7 | `theorem` | [parityPairShift_mem_range](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritypairshift-mem-range--41ddbb24692aefd5f7b129f9.md) | 93 | `result-track:41ddbb24692aefd5f7b129f9fd8f36aadc1bc0c9ddf249199e1551010d876749` |
| 8 | `theorem` | [parityResidueCoordinate_add_shift_eq](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/parityresiduecoordinate-add-shift-eq--f7b4f21fae3a2e689bf9e748.md) | 113 | `result-track:f7b4f21fae3a2e689bf9e7486cde21997b242c7d075a83676ab5bccb6efd529e` |
| 9 | `theorem` | [parityPairResidueCoordinate_eq_base_shift](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritypairresiduecoordinate-eq-base-shift--209faee13e80ee31ddfe2ea5.md) | 127 | `result-track:209faee13e80ee31ddfe2ea5b95eb4e1648b1930f6ebb4f42cd483e1eeb0d9a6` |
| 10 | `theorem` | [mem_parityShiftPairSet_iff](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/mem-parityshiftpairset-iff--ce4aa87c1c03bea51fcad0ef.md) | 140 | `result-track:ce4aa87c1c03bea51fcad0ef815045ba9a2251e0a4fbeb2679fed003a258ccb5` |
| 11 | `def` | [paritySignedShiftResiduePairSlice](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedshiftresiduepairslice--a7a3fec5fcbb9e399d0c815f.md) | 195 | `declaration-track:a7a3fec5fcbb9e399d0c815fb8cac25731be82ca17086d1b1f08f9877f56455f` |
| 12 | `def` | [paritySignedShiftResidueCorrelation](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedshiftresiduecorrelation--68c82eafde1c19f0ee12bcb2.md) | 205 | `declaration-track:68c82eafde1c19f0ee12bcb2c6010de29aa15ba8fc5fc63005d1cf0ff6233638` |
| 13 | `theorem` | [paritySignedShiftResiduePairSlice_eq_correlation](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedshiftresiduepairslice-eq-correlation--9060e8f5634e40cf69b907fe.md) | 215 | `result-track:9060e8f5634e40cf69b907fe0dea8999c06a375eb20a67186605de8269a10dcb` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftSlices](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftslices--16c8e04252cd77106b9dea97.md) | 254 | `result-track:16c8e04252cd77106b9dea977f066faac6f9081d87aa74621e2716e66253ea39` |
| 15 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftcorrelations--e9817a4eaac4954ad14d64e8.md) | 308 | `result-track:e9817a4eaac4954ad14d64e8f451114ea713a17d71909b92fbe8cfbe2ecf66de` |
| 16 | `def` | [paritySignedShiftResidueFourier](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedshiftresiduefourier--b468c03249d3642d05ce88f4.md) | 322 | `declaration-track:b468c03249d3642d05ce88f433f19188e8aa5d9b3959b6403d5019e0426c5ac9` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_shiftFourier](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritysignedresidueconvolutionfourier-eq-sum-shiftfourier--21b1d43a4fa9b224822d8128.md) | 331 | `result-track:21b1d43a4fa9b224822d8128464f7418f94545d8a206d30d036ac744de56b4ee` |
| 18 | `def` | [parityGrowingShiftResidueFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftresiduefrequencymajorant--0543b2f97009727228f2f97d.md) | 347 | `declaration-track:0543b2f97009727228f2f97d9fbe1a78130aa2223c69c9c1ab4f75d37df8b7fd` |
| 19 | `theorem` | [parityGrowingShiftResidueFrequencyMajorant_eq_signedConvolution](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftresiduefrequencymajorant-eq-signedconvolution--4b056b2e63eab1172eb7a755.md) | 357 | `result-track:4b056b2e63eab1172eb7a7555410730a94879f0dd6117f5d13edce82274541e2` |
| 20 | `def` | [parityGrowingShiftResidueNonzeroModulusMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftresiduenonzeromodulusmajorant--44452b2b35eb52c33fbf79ab.md) | 370 | `declaration-track:44452b2b35eb52c33fbf79ab077c350d91195a0d22ebe91dbed3535e267955c3` |
| 21 | `def` | [parityGrowingShiftResidueEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftresidueendpointmajorant--ac67a7cb5bbbc16e3b69dd1d.md) | 377 | `declaration-track:ac67a7cb5bbbc16e3b69dd1d243cccbf4756340749c0194dc13a62e2f4bff198` |
| 22 | `theorem` | [parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/paritygrowingshiftresidueendpointmajorant-eq-signedconvolution--94c4231cd0441e289b473b13.md) | 387 | `result-track:94c4231cd0441e289b473b130a89f88a29ff4e080e62a983330a119eef588f10` |
| 23 | `def` | [DyadicNaturalScaleGrowingShiftResidueFourierBudget](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget--0a6bb67a54936fb42b8a6495.md) | 407 | `declaration-track:0a6bb67a54936fb42b8a6495de35d3fe4db9e15975eccaa53a2bbd1f419634d3` |
| 24 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-signedconvolution--78ea1fba891ad5f45fc7ba9f.md) | 417 | `result-track:78ea1fba891ad5f45fc7ba9f2f5f7bcc5ca16b85dc42c420cc036ae1bcd28f00` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-nonzeroparityfour--0ab44a5290dc16aed05be0c4.md) | 436 | `result-track:0ab44a5290dc16aed05be0c4bdf07247c34c571d05f951dcfeca5f4b0f879493` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftresidue--6603e8babc04924b5034ab0c.md) | 444 | `result-track:6603e8babc04924b5034ab0c08caf12e9b0589fd22bc778a1fbc0d7352e5dfbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
