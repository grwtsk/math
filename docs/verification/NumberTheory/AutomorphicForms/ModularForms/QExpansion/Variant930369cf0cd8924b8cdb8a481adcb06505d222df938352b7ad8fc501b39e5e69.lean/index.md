# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.QExpansion.Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80040667ea0c83c8d9107340fbcd872753405572",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80040667ea0c83c8d9107340fbcd872753405572`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean.json)

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
| 1 | `lemma` | [iteratedDerivWithin_cexp_aux](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/iteratedderivwithin-cexp-aux--8aa6568526312938e32daefb.md) | 52 | `result-track:8aa6568526312938e32daefbeddc05b05cd87bcdef9a5292802495e99a802800` |
| 2 | `lemma` | [aux_IsBigO_mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/aux-isbigo-mul--ba3d0a2e1a36b8acc65dd442.md) | 63 | `result-track:ba3d0a2e1a36b8acc65dd442de2fa3da18780cbe6b67add29633db9dad3d0488` |
| 3 | `theorem` | [summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-smul-cexp--1194ab6ca165e0f004d28d4a.md) | 80 | `result-track:1194ab6ca165e0f004d28d4ac4caa34dd63cb711006d7cbb73abe5f2e86b999f` |
| 4 | `theorem` | [summableLocallyUniformlyOn_iteratedDerivWithin_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-cexp--4eb57c495a68a2d511151343.md) | 111 | `result-track:4eb57c495a68a2d5111513436043a5fbb983f8befeb28be499ab0ec167dfb53b` |
| 5 | `lemma` | [differentiableAt_iteratedDerivWithin_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/differentiableat-iteratedderivwithin-cexp--bd86c8c4faf194cdb07becc2.md) | 120 | `result-track:bd86c8c4faf194cdb07becc2a65e77479d46387ccf3a99c222a76a7b4067233f` |
| 6 | `lemma` | [iteratedDerivWithin_tsum_cexp_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/iteratedderivwithin-tsum-cexp-eq--724b14cfaf4e0f1cfe86a4c5.md) | 128 | `result-track:724b14cfaf4e0f1cfe86a4c59448498eb22a296916cee4f75fffb5a88da428cd` |
| 7 | `lemma` | [contDiffOn_tsum_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/contdiffon-tsum-cexp--e7aa6440476e156f62a08037.md) | 138 | `result-track:e7aa6440476e156f62a080373169826fc714b6424de1d1af3a24f023cf6ddce8` |
| 8 | `lemma` | [iteratedDerivWithin_tsum_exp_aux_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/iteratedderivwithin-tsum-exp-aux-eq--5325587a07447b1b2302aa58.md) | 146 | `result-track:5325587a07447b1b2302aa58e87d00023a20bc9587f657e1a40c5addc962c198` |
| 9 | `theorem` | [EisensteinSeries.qExpansion_identity](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-qexpansion-identity--92e20df5d1ef943b7e0060b6.md) | 175 | `result-track:92e20df5d1ef943b7e0060b6b0fc75b3a3208d661f93e0ffbd2373b5a21dea96` |
| 10 | `lemma` | [summable_pow_mul_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/summable-pow-mul-cexp--cd6e7cd8ead62f77c4b4e424.md) | 192 | `result-track:cd6e7cd8ead62f77c4b4e424d41a373c6d2220cc5e0232d87627c3b17e28914b` |
| 11 | `theorem` | [EisensteinSeries.qExpansion_identity_pnat](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-qexpansion-identity-pnat--d5b5fc9a41f76b0325ede353.md) | 204 | `result-track:d5b5fc9a41f76b0325ede3533a03f86995aa57fc8ba1a99bef9510f8d2a43caa` |
| 12 | `lemma` | [summable_eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/summable-eissummand--63ecfa9bc33c7fa345ab2668.md) | 212 | `result-track:63ecfa9bc33c7fa345ab2668140f544f41a925ff4c5f586ff5e54c0661e293ad` |
| 13 | `lemma` | [summable_prod_eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/summable-prod-eissummand--14ca002fb67d340b189a19d5.md) | 216 | `result-track:14ca002fb67d340b189a19d5770a4a5d01f4da607235816f73048b2906f50d49` |
| 14 | `lemma` | [tsum_eisSummand_eq_tsum_sigma_mul_cexp_pow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/tsum-eissummand-eq-tsum-sigma-mul-cexp-pow--16020669ed9878438a4d979c.md) | 221 | `result-track:16020669ed9878438a4d979c4d3986b3bca8e7468238ac3efb71e96ce9a8e8d4` |
| 15 | `lemma` | [eisSummand_of_gammaSet_eq_divIntMap](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eissummand-of-gammaset-eq-divintmap--05e1fd28896a9a4e256b966f.md) | 244 | `result-track:05e1fd28896a9a4e256b966f47b3a49792d9af13c24df472b96d964fcf3b8fd2` |
| 16 | `lemma` | [tsum_eisSummand_eq_riemannZeta_mul_eisensteinSeries](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/tsum-eissummand-eq-riemannzeta-mul-eisensteinseries--9f1aedfa88d6d6bfa8ec60cf.md) | 250 | `result-track:9f1aedfa88d6d6bfa8ec60cfdffa16776a853db11f842c2b05e23aeb84c3a518` |
| 17 | `lemma` | [EisensteinSeries.q_expansion_riemannZeta](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-q-expansion-riemannzeta--2facfc14e9a214afee6bb069.md) | 276 | `result-track:2facfc14e9a214afee6bb06976425cd945c9a8143ed888700e179fc3b2b30a56` |
| 18 | `lemma` | [eisensteinSeries_coeff_identity](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-coeff-identity--5c307135bfc408148a0a5fa7.md) | 287 | `result-track:5c307135bfc408148a0a5fa7fd55682f3cd085c78c5487a7a016dde448845907` |
| 19 | `lemma` | [EisensteinSeries.q_expansion_bernoulli](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-q-expansion-bernoulli--4bc81ffccb8bdd6bbeb6ab5a.md) | 299 | `result-track:4bc81ffccb8bdd6bbeb6ab5ac35b4067945976ac411f021ea0b8680ac00297ba` |
| 20 | `lemma` | [EisensteinSeries.summable_sigma_mul_cexp_pow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-summable-sigma-mul-cexp-pow--8f21742f5eb75258bed3a2b3.md) | 312 | `result-track:8f21742f5eb75258bed3a2b3f6b0c3ee2005d95c38139df9243ad6b1b8ed2070` |
| 21 | `lemma` | [EisensteinSeries.E_qExpansion_coeff](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-e-qexpansion-coeff--6a680da4bb80301a9d71717f.md) | 324 | `result-track:6a680da4bb80301a9d71717f8a34e9dd0e6d4caddba5b588fc06a0a0ecc66917` |
| 22 | `lemma` | [EisensteinSeries.E_qExpansion_coeff_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-e-qexpansion-coeff-zero--2f3287817939d5417fb42402.md) | 348 | `result-track:2f3287817939d5417fb424021906cddd442feb483172beff979ae920eecca9b1` |
| 23 | `theorem` | [EisensteinSeries.E_ne_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-e-ne-zero--c265ffac44e23bf5aebdbcfc.md) | 353 | `result-track:c265ffac44e23bf5aebdbcfc5bf707d62c02b1fbea9fe78feb394d666e0ccf1b` |
| 24 | `theorem` | [EisensteinSeries.tendsto_E_atImInfty](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/declarations/eisensteinseries-tendsto-e-atiminfty--d5192834d8f1608de47a0da6.md) | 357 | `result-track:d5192834d8f1608de47a0da626035cdc193fdfc34c38fe62514e8d4b8d634485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
