# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityResidueConvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitParityProjectors`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityEvenHalfShiftSignedResidueBucket](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityevenhalfshiftsignedresiduebucket--3f25120dfbc78945e3c27423.md) | 36 | `declaration-track:3f25120dfbc78945e3c2742345d5c58e2556c33ea0d9c8e1ee6b91349b91cbff` |
| 2 | `def` | [parityOddHalfShiftSignedResidueBucket](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityoddhalfshiftsignedresiduebucket--a4e610f09681c40e875eb755.md) | 43 | `declaration-track:a4e610f09681c40e875eb7555a2c37965a624ab00627372fd129cfbe3b74691c` |
| 3 | `theorem` | [positiveEndpointShiftSet_eq_even_union_odd](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/positiveendpointshiftset-eq-even-union-odd--2439102d48759facf07c3a94.md) | 50 | `result-track:2439102d48759facf07c3a94901caf3137ec764e37f327a24eaccf483e209512` |
| 4 | `theorem` | [positiveEndpointEvenShiftSet_disjoint_odd](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/positiveendpointevenshiftset-disjoint-odd--5a7e991cb72fa3edb234f920.md) | 66 | `result-track:5a7e991cb72fa3edb234f920ca6c827bdf605c990de130a5e886e07fdcfe2710` |
| 5 | `theorem` | [paritySignedResidueConvolutionBucket_eq_even_add_odd](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/paritysignedresidueconvolutionbucket-eq-even-add-odd--38e5dc1c8a43911b27a94ef2.md) | 80 | `result-track:38e5dc1c8a43911b27a94ef25b47991f817d68bcf76084fe07a704ffc0883cfa` |
| 6 | `def` | [parityEvenHalfShiftSignedResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityevenhalfshiftsignedresiduefourier--73fe89249d9a9c1bb9e2e431.md) | 93 | `declaration-track:73fe89249d9a9c1bb9e2e431549ea7c587c2c80e28031d8f9d3beb313bdb8680` |
| 7 | `def` | [parityOddHalfShiftSignedResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityoddhalfshiftsignedresiduefourier--bdfdce2d6e41e39bc83dcc0b.md) | 101 | `declaration-track:bdfdce2d6e41e39bc83dcc0b3ac243cb354335e340a5c86a505441e23f498a6f` |
| 8 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityevenhalfshiftsignedresiduefourier-eq-sum-affinetwists--565f5a31ee2b76303ce2f534.md) | 110 | `result-track:565f5a31ee2b76303ce2f53455458388a162bdf56330ab8a86cd4a4ba79049b7` |
| 9 | `theorem` | [parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityoddhalfshiftsignedresiduefourier-eq-sum-affinetwists--21094b0c6d43091dac5a9d72.md) | 127 | `result-track:21094b0c6d43091dac5a9d72f6552f473bd19339b48f3c0ac7db41f7ae7fd4fe` |
| 10 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_eq_projector](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityevenhalfshiftsignedresiduefourier-eq-projector--7818be275d1c5c6a450c8c1e.md) | 144 | `result-track:7818be275d1c5c6a450c8c1ee8239b033f86d47695ad6e3dd1c6138bd0b444b5` |
| 11 | `theorem` | [parityOddHalfShiftSignedResidueFourier_eq_projector](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/parityoddhalfshiftsignedresiduefourier-eq-projector--903b37aed2ebb5bfea87be8d.md) | 160 | `result-track:903b37aed2ebb5bfea87be8d200613c77fa0cf5b9dabadd7ad34837ed9e54e8a` |
| 12 | `def` | [twoNonunitRegularShiftParityResidueFourierMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/twononunitregularshiftparityresiduefouriermajorant--ad7967fdd6b3632988529e95.md) | 176 | `declaration-track:ad7967fdd6b3632988529e9552626ed6eba74ee8899f5bfc04bd5c5c85ee314f` |
| 13 | `theorem` | [twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/twononunitcanonicalregularorbitmajorant-eq-shiftparityresiduefourier--5d3d22237d12b73a79b3069e.md) | 186 | `result-track:5d3d22237d12b73a79b3069e97b1326b4a0c977b4b4df52aed41e3a375764231` |
| 14 | `def` | [twoNonunitRegularShiftParityResidueEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/twononunitregularshiftparityresidueendpointmajorant--c056f10ec9e6ddf3631d5137.md) | 199 | `declaration-track:c056f10ec9e6ddf3631d51377a33fe778a618cf6a1b8c4f1b21efc1c1a3600c1` |
| 15 | `theorem` | [twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/twononunitcanonicalregularorbitendpointmajorant-eq-shiftparityresidue--7e9c7330073ce9717e63ef5a.md) | 212 | `result-track:7e9c7330073ce9717e63ef5ad7535dca48da0e39debea08cd1a9173451d04a2d` |
| 16 | `def` | [DyadicNaturalScaleRegularShiftParityResidueBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/dyadicnaturalscaleregularshiftparityresiduebudget--b92705dca2f2bc0b58d37d57.md) | 238 | `declaration-track:b92705dca2f2bc0b58d37d5735f9f53d7345a547cc90f7f8214f7cf20ee39b11` |
| 17 | `theorem` | [regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/regularshiftparityresiduebudget-iff-canonicalregularprojectorbudget--df1f66543e945833907627a5.md) | 248 | `result-track:df1f66543e945833907627a5daea7932d58c43ca340595536d359ccfd6c672da` |
| 18 | `def` | [regularShiftParityResidueToCanonicalProjectorAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/regularshiftparityresiduetocanonicalprojectoradapter--a77da42a51db2f656b287c2a.md) | 267 | `declaration-track:a77da42a51db2f656b287c2a242efe172fdb2a0fe599072527d771ace38096c1` |
| 19 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidue](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-regularresidue--0cf4b831a41da00f1e5295d0.md) | 274 | `result-track:0cf4b831a41da00f1e5295d06355ae880305b3edc6bc5029b86c5f4edff0e44c` |
| 20 | `structure` | [RegularShiftParityResidueL2SourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/regularshiftparityresiduel2sourcedata--14923193a665c0c0434f8e85.md) | 288 | `declaration-track:14923193a665c0c0434f8e854684d85e139d0fbc7a9bce5332135eab1306f893` |
| 21 | `def` | [RegularShiftParityResidueL2Source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/regularshiftparityresiduel2source--e1c95d7ebaf43672d603ebc4.md) | 301 | `declaration-track:e1c95d7ebaf43672d603ebc4b9506ab8d3fd9e1c52bd558641ee05d5c074c16e` |
| 22 | `structure` | [ToRegularShiftParityResidueBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/toregularshiftparityresiduebudgetadapter--44726b4ec693b6e72910b456.md) | 316 | `declaration-track:44726b4ec693b6e72910b4561390942921bbe5e84f73d9521453f2604f1939ef` |
| 23 | `abbrev` | [RegularShiftParityResidueL2Adapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/declarations/regularshiftparityresiduel2adapter--794115c71fc17aee3578806f.md) | 321 | `declaration-track:794115c71fc17aee3578806f61e3c7ce9e15c429f13b2bf17fd24c073975ee5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
