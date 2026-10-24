# Verification target: GRWTSK.NumberTheory.Moebius.AdditiveTwistParityFourierFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b`.

Source path: `GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AdditiveCharacterSquareModulusRepair`](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointParitySet](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/endpointparityset--efe959a968e7dec961827451.md) | 50 | `declaration-track:efe959a968e7dec961827451a99fc6f54d818eed98151a277fe8b0f59d95a71b` |
| 2 | `def` | [endpointParityStrictPairSet](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/endpointparitystrictpairset--b260c54bd5386201f8e9a321.md) | 54 | `declaration-track:b260c54bd5386201f8e9a3214c2563cca2c6376bbb7e2c562e1e8cb0c779e8d5` |
| 3 | `def` | [parityOnePointMobiusFourierTerm](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityonepointmobiusfourierterm--85171d4f90077e7850934dd5.md) | 60 | `declaration-track:85171d4f90077e7850934dd590fc74cba81712911632efa7ca969a4793d2eb2d` |
| 4 | `def` | [parityOnePointMobiusFourierSum](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityonepointmobiusfouriersum--62e20f850cdd1c0e12147542.md) | 69 | `declaration-track:62e20f850cdd1c0e121475424ba44cca7f671e8088a0b267e5c7d1f1462fedec` |
| 5 | `def` | [parityOnePointMobiusFourierDiagonal](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityonepointmobiusfourierdiagonal--20a7a02aac1fc3bdaa8080bc.md) | 76 | `declaration-track:20a7a02aac1fc3bdaa8080bc02c5cddf1ffe9276dfdba2bd4a4b8d54fe31af50` |
| 6 | `def` | [parityOnePointMobiusFourierPairSum](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityonepointmobiusfourierpairsum--59ab99a19619522d7a6cd1f9.md) | 83 | `declaration-track:59ab99a19619522d7a6cd1f9ca8a9d35f6effad31dd4bf67c82de0e73599398b` |
| 7 | `theorem` | [finiteSquare_eq_diagonal_add_twice_strictPairs](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/finitesquare-eq-diagonal-add-twice-strictpairs--055df0b11dfc6ae95420117c.md) | 93 | `result-track:055df0b11dfc6ae95420117c35a9c75d4a98be8583c361014b3650c2bf3b4755` |
| 8 | `theorem` | [parityPairSum_eq_half_square_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/paritypairsum-eq-half-square-sub-diagonal--a359ebc90d400e131a9634b6.md) | 162 | `result-track:a359ebc90d400e131a9634b6e2992998b18f10dfc375058790aca709969bbc9b` |
| 9 | `theorem` | [midpoint_eq_halves_add_parity](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/midpoint-eq-halves-add-parity--8611903bc2018fee3b46c147.md) | 182 | `result-track:8611903bc2018fee3b46c1476bf16843bf62a36aec6fedeb5c6282b5e6fec9bc` |
| 10 | `theorem` | [midpointAdditivePhase_eq_parityProduct](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/midpointadditivephase-eq-parityproduct--50b680464abd85dffd0cd713.md) | 192 | `result-track:50b680464abd85dffd0cd713a573414ef22cec95080fe577085dcfd8ce2e2eee` |
| 11 | `def` | [parityMidpointPairTwist](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/paritymidpointpairtwist--85bab718958d6dfb5380ceb4.md) | 213 | `declaration-track:85bab718958d6dfb5380ceb4ff0251f1987a27a48d4614203de06ea050b92f42` |
| 12 | `theorem` | [parityMidpointPairTwist_eq_phase_mul_pairSum](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/paritymidpointpairtwist-eq-phase-mul-pairsum--e14d6c96acb1f671e07f1f38.md) | 224 | `result-track:e14d6c96acb1f671e07f1f38346fc4e6a431145bee39673705a23b6f106f3af0` |
| 13 | `theorem` | [two_mul_parityMidpointPairTwist_eq_square_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/two-mul-paritymidpointpairtwist-eq-square-sub-diagonal--7bda80f4270980475247986e.md) | 253 | `result-track:7bda80f4270980475247986e16ef1fb6c74290ae48cc20c05c1737190a3bcec2` |
| 14 | `def` | [endpointSameParityStrictPairSet](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/endpointsameparitystrictpairset--77bfc30c88981a0934554922.md) | 266 | `declaration-track:77bfc30c88981a0934554922db0b277a55c2c11c2af7d762c899493c1d6cd722` |
| 15 | `def` | [endpointPairAdditiveTwist](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/endpointpairadditivetwist--d6204e38c79fc4a537b09bd4.md) | 272 | `declaration-track:d6204e38c79fc4a537b09bd43be32f01379d43ea7e81a6e3c242d03590426971` |
| 16 | `theorem` | [additiveTwistedEndpointCrossCorrelation_eq_endpointPairs](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/additivetwistedendpointcrosscorrelation-eq-endpointpairs--159a3dfb50ba6a76d620ec2e.md) | 283 | `result-track:159a3dfb50ba6a76d620ec2ec557bdd93f96ead38dd2c28dcd439a26eab5daaf` |
| 17 | `theorem` | [endpointPairAdditiveTwist_eq_even_add_odd](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/endpointpairadditivetwist-eq-even-add-odd--8e49e3c8cf71fe8c7be52c07.md) | 326 | `result-track:8e49e3c8cf71fe8c7be52c072359c3c4d81308a5c4b5efa519debe915150d382` |
| 18 | `theorem` | [two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/two-mul-additivetwistedendpointcrosscorrelation-eq-parityfourier--4b2d2cf2ee74d37bacc47e55.md) | 357 | `result-track:4b2d2cf2ee74d37bacc47e55b0ec77861211e873fe8e4d36a4eed7357a21584e` |
| 19 | `def` | [parityFourierQuadraticMajorant](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityfourierquadraticmajorant--b143e54106082ed25177df13.md) | 376 | `declaration-track:b143e54106082ed25177df134ab262d21589b58e8854c6fed44e5847ae7884b5` |
| 20 | `theorem` | [norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/norm-additivetwistedendpointcrosscorrelation-le-parityfouriermajorant--3cc6c802b70fbc31635b1674.md) | 387 | `result-track:3cc6c802b70fbc31635b167473db41fd1cd8f341b03baa5dead8ce9ff9fdcbd8` |
| 21 | `def` | [parityFourierEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/parityfourierendpointmajorant--d9453b65a5c8bdd4719808c0.md) | 420 | `declaration-track:d9453b65a5c8bdd4719808c0caed9dff536b600051b9d009675d9425da3f16e5` |
| 22 | `def` | [DyadicNaturalScaleParityFourierQuadraticBudget](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/dyadicnaturalscaleparityfourierquadraticbudget--28d28a2a4a69778f4c23ea81.md) | 432 | `declaration-track:28d28a2a4a69778f4c23ea8114e4a96c7ce8a6f08adb070955be2c3147e2d182` |
| 23 | `theorem` | [naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/declarations/naturalscalesquaremoduluscongruencel1-of-parityfourierquadraticbudget--73bad7c11b6087fe9d2814ef.md) | 442 | `result-track:73bad7c11b6087fe9d2814ef8413115e40f76361d98f34c69756917319d3fae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
