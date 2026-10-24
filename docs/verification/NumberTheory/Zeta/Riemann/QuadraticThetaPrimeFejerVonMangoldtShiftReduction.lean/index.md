# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerVonMangoldtShiftReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0157897853716e8630663f1f070cd3050ee87d5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredVonMangoldtAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/centeredvonmangoldtatom--d77aaa8c3eebeca1f9d77305.md) | 59 | `declaration-track:d77aaa8c3eebeca1f9d77305da11461c6a4e4cbcbfa5b49cbf2ad07d4cb32789` |
| 2 | `def` | [higherPrimePowerCorrectionAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom--99707c64cfacd376e8ff72c7.md) | 63 | `declaration-track:99707c64cfacd376e8ff72c7a1cab7b67652d9caa2b30fe4806de1fb237f393a` |
| 3 | `theorem` | [higherPrimePowerCorrectionAtom_eq_if_not_prime](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom-eq-if-not-prime--998521d52ebf063a5e3df6e0.md) | 68 | `result-track:998521d52ebf063a5e3df6e0d094a2dc16382f4b2fbae86e1df5d34904076339` |
| 4 | `theorem` | [higherPrimePowerCorrectionAtom_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom-nonnegative--5dec24d7d460de9fb44f3c99.md) | 78 | `result-track:5dec24d7d460de9fb44f3c9993eac0b2c0ca77872dffb3296e0d7a6da8475074` |
| 5 | `theorem` | [higherPrimePowerCorrectionAtom_le_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom-le-vonmangoldt--d2cbbde5001413e3de8a3148.md) | 87 | `result-track:d2cbbde5001413e3de8a31489a51d5791a3cb8b06186d8762287809ed9767911` |
| 6 | `theorem` | [higherPrimePowerCorrectionAtom_le_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom-le-log--a4f18a86a930712c95e9156f.md) | 97 | `result-track:a4f18a86a930712c95e9156ff664f8ba99fd5c8dc259d31a73feb980e0ee71bf` |
| 7 | `theorem` | [higherPrimePowerCorrectionAtom_eq_zero_of_prime](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/higherprimepowercorrectionatom-eq-zero-of-prime--ee59eb7df5a6bc9b1dec241f.md) | 105 | `result-track:ee59eb7df5a6bc9b1dec241f508b3aac1f9b719c352008cf3e2b85fdcecf64e4` |
| 8 | `theorem` | [primeDiscrepancyAtom_eq_centeredVonMangoldt_sub_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/primediscrepancyatom-eq-centeredvonmangoldt-sub-correction--c543944aa0620f7c2ca1ad5e.md) | 112 | `result-track:c543944aa0620f7c2ca1ad5e10f75c85580ef1918c05d9de0904ca725891e296` |
| 9 | `def` | [nonAliasingFejerWeightedVonMangoldtAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedvonmangoldtatom--4340094c7a312257ceee7b50.md) | 122 | `declaration-track:4340094c7a312257ceee7b504f0e50889f88cf1f86f441d0a58dc7350145b122` |
| 10 | `def` | [nonAliasingFejerWeightedPrimePowerCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedprimepowercorrection--872a9209e23c41205937fe8b.md) | 128 | `declaration-track:872a9209e23c41205937fe8bb797c7b70bd550d064e36d427fe2c1149fe0a40e` |
| 11 | `theorem` | [nonAliasingFejerWeightedPrimeAtom_eq_vonMangoldt_sub_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedprimeatom-eq-vonmangoldt-sub-correction--e30496557be1f972413da720.md) | 134 | `result-track:e30496557be1f972413da720c91c98a3c232296164d0a4dcab2ed8e32f17831a` |
| 12 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedprimepowercorrection-nonnegative--508a221f6a3cf7725165115e.md) | 146 | `result-track:508a221f6a3cf7725165115ece3397e2ab1f02882be85f50e37918311a3cf32f` |
| 13 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_le_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedprimepowercorrection-le-raw--ab15a0dc1056d4a73cc6b707.md) | 160 | `result-track:ab15a0dc1056d4a73cc6b707b318bcf56c807ea53660848d8a80fac60a4fe8e7` |
| 14 | `theorem` | [nonAliasingFejerWeightedVonMangoldtAtom_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedvonmangoldtatom-abs-le--76a2de6265fa95a48ff2ebbf.md) | 177 | `result-track:76a2de6265fa95a48ff2ebbff275d1f7175a4f2fc7bdcb13aa86095ed9f72538` |
| 15 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_le_envelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerweightedprimepowercorrection-le-envelope--f3d65687f30c45441d04ab2d.md) | 228 | `result-track:f3d65687f30c45441d04ab2db9e7c3aacfe0464ddb8a20372daafbe7d99241bf` |
| 16 | `def` | [fejerHigherPrimePowerCorrectionMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerhigherprimepowercorrectionmass--2335d3f58da061915904f101.md) | 255 | `declaration-track:2335d3f58da061915904f10146fc6aa007e86cc4005fa31797820965439349c0` |
| 17 | `theorem` | [fejerHigherPrimePowerCorrectionMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerhigherprimepowercorrectionmass-nonnegative--75e0f8e08d50c15adccf1ec0.md) | 260 | `result-track:75e0f8e08d50c15adccf1ec0f7b2c4367a6e6faa5b68ee23b25d85b7fb4a3166` |
| 18 | `theorem` | [fejerHigherPrimePowerCorrectionMass_eq_nonprime_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerhigherprimepowercorrectionmass-eq-nonprime-vonmangoldt--fb9739e6e7eac7f39e79618a.md) | 268 | `result-track:fb9739e6e7eac7f39e79618ad3c987c3154f56b7011d0a1977eaa70ea882c581` |
| 19 | `theorem` | [fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerhigherprimepowercorrectionmass-le-psi-sub-theta--09ec802a873507279586069c.md) | 281 | `result-track:09ec802a873507279586069c1696d5d32c4bc2829ae232ba717f0c9730dd9e46` |
| 20 | `theorem` | [exists_fejerHigherPrimePowerCorrectionMass_rpow_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/exists-fejerhigherprimepowercorrectionmass-rpow-bound--2a83188e97f810048694f6db.md) | 314 | `result-track:2a83188e97f810048694f6db1075828d70eb1079bfca9128b26872d590cc6893` |
| 21 | `def` | [fejerWeightedPrimePowerCorrectionMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerweightedprimepowercorrectionmass--2e60cd12a48bfbb100dc39db.md) | 347 | `declaration-track:2e60cd12a48bfbb100dc39db87227553d121babe179842c2d9fa6a484119f121` |
| 22 | `theorem` | [fejerWeightedPrimePowerCorrectionMass_le_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerweightedprimepowercorrectionmass-le-raw--a2cf8f525ac7917f1dcc38b4.md) | 353 | `result-track:a2cf8f525ac7917f1dcc38b42fef052fa6b247f24d4f456c43cd70f0d7260273` |
| 23 | `theorem` | [fejerPositiveOffDiagonalPairs_subset_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/fejerpositiveoffdiagonalpairs-subset-product--a0ea858746eb5f1e1e372e41.md) | 368 | `result-track:a0ea858746eb5f1e1e372e41bc5837eefe21bca1b5a7c447ecb189adc9677ed4` |
| 24 | `theorem` | [sum_product_snd_eq_card_mul_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/sum-product-snd-eq-card-mul-sum--92b1e7383af2064ba3f1fc57.md) | 378 | `result-track:92b1e7383af2064ba3f1fc575c0da000ed161eb81956d2a3874856053318a924` |
| 25 | `theorem` | [sum_product_fst_eq_card_mul_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/sum-product-fst-eq-card-mul-sum--7e0b402f1bf8a15ae740bb84.md) | 387 | `result-track:7e0b402f1bf8a15ae740bb841a1389416355ed3f1fdcdaacd224d7030647f61b` |
| 26 | `theorem` | [positivePairs_snd_weightedCorrection_sum_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/positivepairs-snd-weightedcorrection-sum-le--66e42ad823b04e988ba08921.md) | 397 | `result-track:66e42ad823b04e988ba0892155cf6aaa33e53f57799747dfc0e5eb1facf9f4f4` |
| 27 | `theorem` | [positivePairs_fst_weightedCorrection_sum_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/positivepairs-fst-weightedcorrection-sum-le--8cc0876fa3d0a1517bac1b48.md) | 449 | `result-track:8cc0876fa3d0a1517bac1b485ba90b1c163608e73d6828906e0a342ac2db898a` |
| 28 | `def` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation--57508ffd0005febe84e2ff6a.md) | 501 | `declaration-track:57508ffd0005febe84e2ff6a2ac4105ba9599d57ed317b123826f675172d59f8` |
| 29 | `def` | [nonAliasingFejerPositiveVonMangoldtRightCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivevonmangoldtrightcorrection--ab473903fa1495def8a11e62.md) | 508 | `declaration-track:ab473903fa1495def8a11e62d9e6b459a3855e89e4fa2a917224d85e8740e168` |
| 30 | `def` | [nonAliasingFejerPositiveCorrectionLeftVonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivecorrectionleftvonmangoldt--6d3593f550e17c9163b15f4d.md) | 515 | `declaration-track:6d3593f550e17c9163b15f4dc78e0584c501c1c14fc4f3b434636a897c31a3d6` |
| 31 | `def` | [nonAliasingFejerPositiveCorrectionPairCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivecorrectionpaircorrelation--53c129a54f46c3df54fd1990.md) | 522 | `declaration-track:53c129a54f46c3df54fd1990827e03e6764870821948b36717b0e3e1d63c3ad9` |
| 32 | `def` | [nonAliasingFejerPositivePrimePowerRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositiveprimepowerremainder--e9ef1f4cbc48c8a68df6aaaa.md) | 529 | `declaration-track:e9ef1f4cbc48c8a68df6aaaa377d153d22ea97b806dbc997e43cb93a234ee25f` |
| 33 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_vonMangoldt_add_remainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation-eq-vonmangoldt-add-remainder--d9daa8ac4e5f3846470835b5.md) | 537 | `result-track:d9daa8ac4e5f3846470835b57c46e9348cc8cad76cf7588117e1b5f55ad790fc` |
| 34 | `def` | [nonAliasingFejerVonMangoldtLagCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejervonmangoldtlagcorrelation--1279d194e738002c949924a0.md) | 577 | `declaration-track:1279d194e738002c949924a02dafbdbe91ea0c630ff3f85629e42e2d773206d6` |
| 35 | `def` | [nonAliasingFejerVonMangoldtShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejervonmangoldtshiftcorrelation--09bdcfd322309ffffdc90d61.md) | 584 | `declaration-track:09bdcfd322309ffffdc90d61ba9499d1d3c52058b1f1685ea92ac78d85095c62` |
| 36 | `theorem` | [nonAliasingFejerVonMangoldtLagCorrelation_eq_shiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejervonmangoldtlagcorrelation-eq-shiftcorrelation--632d8e63eb9a7c5a86234ae0.md) | 591 | `result-track:632d8e63eb9a7c5a86234ae019401a80efbce3fe9f7d9c8049a7abc8ff629003` |
| 37 | `theorem` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_lagCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation-eq-sum-lagcorrelation--d15cc7d0d27d4747597e0f1f.md) | 619 | `result-track:d15cc7d0d27d4747597e0f1fd742ec679c95ee576a7cc243a4d85037f26b6a3a` |
| 38 | `theorem` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_shiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation-eq-sum-shiftcorrelati--444082f9dc6721ceaf5d87f8.md) | 631 | `result-track:444082f9dc6721ceaf5d87f8fa459637cfd0700c349fe8a8ef67d298105a9367` |
| 39 | `theorem` | [sum_primeShiftCorrelation_eq_sum_vonMangoldtShift_add_remainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/sum-primeshiftcorrelation-eq-sum-vonmangoldtshift-add-remainder--88ee7c2fd80d70921ca05e7f.md) | 643 | `result-track:88ee7c2fd80d70921ca05e7fc0be032bbaa1aca39722953ba05d32a8cfbeaa94` |
| 40 | `theorem` | [positiveVonMangoldtRightCorrection_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/positivevonmangoldtrightcorrection-abs-le--6ead89a50810cedcc9f8e7a7.md) | 659 | `result-track:6ead89a50810cedcc9f8e7a7d066392b4f2799c916b86d991f490fb9664fe96c` |
| 41 | `theorem` | [positiveCorrectionLeftVonMangoldt_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/positivecorrectionleftvonmangoldt-abs-le--2584ae627a25b399c73f97d1.md) | 725 | `result-track:2584ae627a25b399c73f97d164f4e96a8a08651d706c3758a99a308be87c5c18` |
| 42 | `theorem` | [positiveCorrectionPairCorrelation_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/positivecorrectionpaircorrelation-abs-le--505ded175efdc57d508f615e.md) | 794 | `result-track:505ded175efdc57d508f615e068d4606843e84f1c57478bd03448035a75d9665` |
| 43 | `theorem` | [nonAliasingFejerPositivePrimePowerRemainder_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/nonaliasingfejerpositiveprimepowerremainder-abs-le--42fae922b1fa01c4471477d4.md) | 855 | `result-track:42fae922b1fa01c4471477d4c2f504ee84a245d010ad94c61c51ebf66e469936` |
| 44 | `def` | [SevenEighthsBoundaryMinimalPrimePowerRemainderBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/seveneighthsboundaryminimalprimepowerremainderbound--6991257e436b8514a3b94d70.md) | 919 | `declaration-track:6991257e436b8514a3b94d7073ebe51a1f2544f21fc9881d6380aa94ea6c942d` |
| 45 | `theorem` | [sevenEighthsBoundaryMinimalPrimePowerRemainderBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/seveneighthsboundaryminimalprimepowerremainderbound--dce1d25147edb7d5e17d40d0.md) | 935 | `result-track:dce1d25147edb7d5e17d40d018c33cc6e854f5592d3bc0daa3f30bad6e4d8979` |
| 46 | `def` | [SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/seveneighthsboundaryminimalvonmangoldtshiftcorrelationbound--d21f43fa510bdd65594a9144.md) | 1055 | `declaration-track:d21f43fa510bdd65594a9144dcb566f8d0a5d5089fc32da621541d3e67d6e103` |
| 47 | `theorem` | [vonMangoldtShiftCorrelationBound_to_exactShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/vonmangoldtshiftcorrelationbound-to-exactshiftcorrelationbound--7bd3c0c10fd1372e90101e49.md) | 1075 | `result-track:7bd3c0c10fd1372e90101e49f14dd122aea4ff16556befbd159371b1214631e5` |
| 48 | `theorem` | [vonMangoldtShiftCorrelationBound_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/declarations/vonmangoldtshiftcorrelationbound-to-partialdiscrepancy--44f104728f8ae57f5aa7d567.md) | 1122 | `result-track:44f104728f8ae57f5aa7d567129481e4c46344d022992849ff54f62b2da9e464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
