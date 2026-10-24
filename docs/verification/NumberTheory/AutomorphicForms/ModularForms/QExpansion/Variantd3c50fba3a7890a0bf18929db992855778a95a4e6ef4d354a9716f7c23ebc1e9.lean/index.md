# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.QExpansion.Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88cc488f2db65abe80b44588cd5be219a228526d`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean.json)

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
| 1 | `lemma` | [iteratedDerivWithin_cexp_aux](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/iteratedderivwithin-cexp-aux--0ea19ea8076d890f062aaeed.md) | 60 | `result-track:0ea19ea8076d890f062aaeed396e09675994dade7756e19a242a513670f64094` |
| 2 | `lemma` | [aux_IsBigO_mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/aux-isbigo-mul--fdfe1142b24c3688f247fc9c.md) | 71 | `result-track:fdfe1142b24c3688f247fc9cf0677e4f7db26ec29ca9826a8191fb1ea01a5faf` |
| 3 | `theorem` | [summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-smul-cexp--b0f1ae78b8c112a58e36cae1.md) | 88 | `result-track:b0f1ae78b8c112a58e36cae1df7a0745de66ab43e89f79ff677892ee1f8ada5c` |
| 4 | `theorem` | [summableLocallyUniformlyOn_iteratedDerivWithin_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-cexp--5264664ede93e77fe82e8951.md) | 119 | `result-track:5264664ede93e77fe82e895128cc4aae6e6bead284ef60ef36dd6decc9a15012` |
| 5 | `lemma` | [differentiableAt_iteratedDerivWithin_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/differentiableat-iteratedderivwithin-cexp--96972470ae27c665fc7ac0a6.md) | 128 | `result-track:96972470ae27c665fc7ac0a6dd8a0a9d8c3ba85148fc9307e31b1ed0c748e00f` |
| 6 | `lemma` | [iteratedDerivWithin_tsum_cexp_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/iteratedderivwithin-tsum-cexp-eq--fe7022c3dc8759871aaacfa2.md) | 136 | `result-track:fe7022c3dc8759871aaacfa2bc1ab634de31c2a0e7f9ed92e003567bbbd31725` |
| 7 | `lemma` | [contDiffOn_tsum_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/contdiffon-tsum-cexp--ea4e34e4989b7d38dc26b4bf.md) | 146 | `result-track:ea4e34e4989b7d38dc26b4bf79cfce9ddcdef93c3a4decc68ef02cab828ce2ce` |
| 8 | `lemma` | [iteratedDerivWithin_tsum_exp_aux_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/iteratedderivwithin-tsum-exp-aux-eq--57beca02f0975f10fce9442a.md) | 154 | `result-track:57beca02f0975f10fce9442ac426858d038cca561c2104bf115d1f594253574b` |
| 9 | `theorem` | [EisensteinSeries.qExpansion_identity](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-qexpansion-identity--186c77e5434fe64fc667eb7b.md) | 183 | `result-track:186c77e5434fe64fc667eb7b9d8e4c8e7b91ff3d326ef3ba1b3f970ae05d847a` |
| 10 | `lemma` | [summable_pow_mul_cexp](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/summable-pow-mul-cexp--572ac108f70fd6041539086b.md) | 200 | `result-track:572ac108f70fd6041539086bf0fb64390b1337f6a523a8f7d403394f3c2804be` |
| 11 | `theorem` | [EisensteinSeries.qExpansion_identity_pnat](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-qexpansion-identity-pnat--6a3b181c9ef0a7c27b61c2f6.md) | 212 | `result-track:6a3b181c9ef0a7c27b61c2f6f54204a670f94f73e5c734e782d82a93b3f2ac27` |
| 12 | `lemma` | [summable_eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/summable-eissummand--90032f8eba55b4b7e94e381f.md) | 220 | `result-track:90032f8eba55b4b7e94e381f480baed90b14e2f5d97c7072a37f2becb24cdce9` |
| 13 | `lemma` | [summable_prod_eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/summable-prod-eissummand--9e13e50ef49d0a90386e2b28.md) | 224 | `result-track:9e13e50ef49d0a90386e2b28c53d4d39bd6b12d9952a61e0a5606ca7c6f82520` |
| 14 | `lemma` | [tsum_eisSummand_eq_tsum_sigma_mul_cexp_pow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/tsum-eissummand-eq-tsum-sigma-mul-cexp-pow--325a98d1359956d2b54bb925.md) | 229 | `result-track:325a98d1359956d2b54bb925557b2b7475542fee23241e37d18085759a26c405` |
| 15 | `lemma` | [eisSummand_of_gammaSet_eq_divIntMap](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eissummand-of-gammaset-eq-divintmap--011a97b91acaaf80747eaec9.md) | 252 | `result-track:011a97b91acaaf80747eaec929b9fea752022587e545661c8e92acc4e7b7c106` |
| 16 | `lemma` | [tsum_eisSummand_eq_riemannZeta_mul_eisensteinSeries](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/tsum-eissummand-eq-riemannzeta-mul-eisensteinseries--4e0ab5024ff6de5d62fe486f.md) | 258 | `result-track:4e0ab5024ff6de5d62fe486fcf23336d8bb02c10a3f3994f85e503852195f97a` |
| 17 | `lemma` | [EisensteinSeries.q_expansion_riemannZeta](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-q-expansion-riemannzeta--487a5cf94284e3d8e2646130.md) | 284 | `result-track:487a5cf94284e3d8e26461302dd14b5a8d95d0324f25f52c967351fb02d477e0` |
| 18 | `lemma` | [eisensteinSeries_coeff_identity](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-coeff-identity--43c873ce561e7ffaa272862b.md) | 295 | `result-track:43c873ce561e7ffaa272862bf46a6d84225ac0da50befee2abc654efabac83b1` |
| 19 | `lemma` | [EisensteinSeries.q_expansion_bernoulli](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-q-expansion-bernoulli--6d230af1d678a0d89c889b31.md) | 307 | `result-track:6d230af1d678a0d89c889b31d21efc2dbf9f75aab906b926c8c4bbd6aaf333ee` |
| 20 | `lemma` | [EisensteinSeries.summable_sigma_mul_cexp_pow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-summable-sigma-mul-cexp-pow--305fe03665efbe4a40e1562c.md) | 320 | `result-track:305fe03665efbe4a40e1562c648180cd3540bbc2d6ab02d34e8e1c7c8ae12f07` |
| 21 | `lemma` | [EisensteinSeries.E_qExpansion_coeff](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-e-qexpansion-coeff--90276944f841bfeb0b40b506.md) | 332 | `result-track:90276944f841bfeb0b40b50607e01b401a062b8a09598706aa675f4e1c07a337` |
| 22 | `lemma` | [EisensteinSeries.E_qExpansion_coeff_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-e-qexpansion-coeff-zero--194ac439d513c8678db2d5c1.md) | 356 | `result-track:194ac439d513c8678db2d5c10db5aa3baedf4ce75dbbc929fa30f6f923d46aa0` |
| 23 | `theorem` | [EisensteinSeries.E_ne_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-e-ne-zero--98500d0d20e5037b13a1ea77.md) | 361 | `result-track:98500d0d20e5037b13a1ea77e0a5d79869b64c65adf7e5f71a3e866ab8054b49` |
| 24 | `theorem` | [EisensteinSeries.tendsto_E_atImInfty](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/declarations/eisensteinseries-tendsto-e-atiminfty--deb9eef5056a92ed650575f9.md) | 365 | `result-track:deb9eef5056a92ed650575f95b9f566e5aef7af8a225f3ed859feab6ff130e54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
