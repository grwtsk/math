# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b92afbd07091d353ac65bceea08203feaf6b078",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b92afbd07091d353ac65bceea08203feaf6b078`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInhabitedSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/instinhabitedsigma--bb6a305138717ad2bbd674a6.md) | 41 | `declaration-track:bb6a305138717ad2bbd674a644f3c7a84e78f50fa81302771faea4bbfc2f9c86` |
| 2 | `instance` | [instDecidableEqSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/instdecidableeqsigma--451cdcb3abbb245672833b21.md) | 44 | `declaration-track:451cdcb3abbb245672833b210f60ee8ce01d7766db8675e0cab17251f619aafd` |
| 3 | `theorem` | [mk.inj_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/mk-inj-iff--5c0bb0c94078a1aaec4fc045.md) | 56 | `result-track:5c0bb0c94078a1aaec4fc0453cd866cba660d909b0aee59fb84c3835816a0b22` |
| 4 | `theorem` | [eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/eta--79f76838e9b964983e36416a.md) | 63 | `result-track:79f76838e9b964983e36416a3ccd6cfa3e82f3ad390e263851b442cd8ee21aa5` |
| 5 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/ext--d36fdc646af69fcc5af10037.md) | 68 | `result-track:d36fdc646af69fcc5af10037e8763af574166f77533d1234a422fb1cb55f0c4c` |
| 6 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/ext-iff--63839f5e44ba1cafe046630a.md) | 72 | `result-track:63839f5e44ba1cafe046630a41f69f097f68229b15723e1044b1005e56bbc468` |
| 7 | `theorem` | [_root_.Function.eq_of_sigmaMk_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/root-function-eq-of-sigmamk-comp--a228407db89cda514191b844.md) | 77 | `result-track:a228407db89cda514191b844ab038a056d2ead6a5c1758ac137098ce936e9437` |
| 8 | `theorem` | [subtype_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/subtype-ext--a54d33f5dd7bd174d4ee4916.md) | 86 | `result-track:a54d33f5dd7bd174d4ee49166503878d5e11a54b8802363d47ac6045106de383` |
| 9 | `theorem` | [subtype_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/subtype-ext-iff--15c5ee25ce47bb3bcc3680dd.md) | 91 | `result-track:15c5ee25ce47bb3bcc3680ddb99f4360957cb373f343643c5de61b390908d10c` |
| 10 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/forall--72618480159a8e296d9b5c7d.md) | 97 | `result-track:72618480159a8e296d9b5c7d8b91539ca04644f62f26d659d42fcc1453f93c5d` |
| 11 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/exists--f1055807b45db12ce7713098.md) | 102 | `result-track:f1055807b45db12ce77130989865e8cb33b5d7d7050b4ca223d3babc6105e42a` |
| 12 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/map--54c2d534eefe60a0ce56262a.md) | 107 | `declaration-track:54c2d534eefe60a0ce56262ae31b35fbfe297b05f5564f7ed1a154e856a55ce9` |
| 13 | `lemma` | [map_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/map-mk--c85b65fcf969b5545fc07ac4.md) | 111 | `result-track:c85b65fcf969b5545fc07ac4d7fa1273dcfe528970f450fc7c1a6111ea9ac93f` |
| 14 | `theorem` | [sigma_mk_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/sigma-mk-injective--976da98a57851e933d66508b.md) | 115 | `result-track:976da98a57851e933d66508b72e28a09a41cd2baadab40338c01be4a7fd4300e` |
| 15 | `theorem` | [Function.Injective.sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/function-injective-sigma-map--710b0ebd576e94d41e0a1d6d.md) | 119 | `result-track:710b0ebd576e94d41e0a1d6db502aa14b5c1236799cb92d3c5670a11cb69d478` |
| 16 | `theorem` | [Function.Injective.of_sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/function-injective-of-sigma-map--e814e30368ff5be285361a8e.md) | 128 | `result-track:e814e30368ff5be285361a8e5f35dd476d12407ee46262bd91df9b915084f635` |
| 17 | `theorem` | [Function.Injective.sigma_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/function-injective-sigma-map-iff--cf64bfa5e978c12c8bafba13.md) | 134 | `result-track:cf64bfa5e978c12c8bafba13b642f9480c8faaa33d78a0ef5a6b5ea4d658acd5` |
| 18 | `theorem` | [Function.Surjective.sigma_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/function-surjective-sigma-map--cb458e1e1416c966be3808d9.md) | 140 | `result-track:cb458e1e1416c966be3808d97286802016f091edddd51eb5a6455fd4ba59a83a` |
| 19 | `def` | [Sigma.curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/sigma-curry--12f8a1176a2f634977bcb54a.md) | 150 | `declaration-track:12f8a1176a2f634977bcb54aecd4cafdd81ad5095be21398fe0beb32d258270f` |
| 20 | `def` | [Sigma.uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/sigma-uncurry--b9df4ceb8fd15f039d2a414e.md) | 157 | `declaration-track:b9df4ceb8fd15f039d2a414e0141853eb63fba11e2df3e26e70189623b7dac11` |
| 21 | `theorem` | [Sigma.uncurry_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/sigma-uncurry-curry--8f3f74381dbd48667496cf56.md) | 162 | `result-track:8f3f74381dbd48667496cf567873f106f034b58a74567fe4a32e7079c029081b` |
| 22 | `theorem` | [Sigma.curry_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/sigma-curry-uncurry--507976a454b892e51b8005ea.md) | 168 | `result-track:507976a454b892e51b8005ea7f5158392770f29488f61d903a67caff304ed1ad` |
| 23 | `def` | [Prod.toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/prod-tosigma--64f5db5461005a805566018d.md) | 174 | `declaration-track:64f5db5461005a805566018d88167771a677c3e7d207f0408628f41a14809f88` |
| 24 | `theorem` | [Prod.fst_comp_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/prod-fst-comp-tosigma--c8e4f39703a501c732cf9c90.md) | 179 | `result-track:c8e4f39703a501c732cf9c90b938075f4fb783ec23fe4c09cead0259942194b6` |
| 25 | `theorem` | [Prod.fst_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/prod-fst-tosigma--0e430cdf184489fc37b3a1ab.md) | 184 | `result-track:0e430cdf184489fc37b3a1ab1c046972b247aa6e223ae2953328ac0688f05660` |
| 26 | `theorem` | [Prod.snd_toSigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/prod-snd-tosigma--f45b4b63202a97335d8c3502.md) | 189 | `result-track:f45b4b63202a97335d8c35023a89e166c3421424473036f787fc80c4eca17f63` |
| 27 | `theorem` | [Prod.toSigma_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/prod-tosigma-mk--5d3406a50dc8bd30e8fb1f78.md) | 194 | `result-track:5d3406a50dc8bd30e8fb1f78bca53023640dbfa7cfec4e2e0ae98a5c6aac6c23` |
| 28 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/elim--e192752fa037f082fa0884f4.md) | 207 | `declaration-track:e192752fa037f082fa0884f4ca860439ffa2c38389131cab55a66af06b6ae10f` |
| 29 | `theorem` | [elim_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/elim-val--9769b500ad247344c1658f6b.md) | 212 | `result-track:9769b500ad247344c1658f6be687e69afaf06681c7b4229fa9c0f2dbcc53018b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/instance--42684689b15d9f2094e93d98.md) | 216 | `declaration-track:42684689b15d9f2094e93d982edc1eb163df70ee909071d1487526b17f8bb704` |
| 31 | `instance` | [decidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/decidableeq--7906e2f1d83ba7ce9ad0d47f.md) | 219 | `declaration-track:7906e2f1d83ba7ce9ad0d47fed7f5494c1a0eb2cc0678f384f482054d78adf3f` |
| 32 | `theorem` | [mk.inj_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/mk-inj-iff--64a3d6bb68d18c10daa1957f.md) | 233 | `result-track:64a3d6bb68d18c10daa1957fdfef065ece722fd0995d5148b45dda3b6fb59776` |
| 33 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/ext--8c05a080753e29c4108f1dfb.md) | 241 | `result-track:8c05a080753e29c4108f1dfbe34c3e5e3e37a38c6c270822ace03a8e8b1e2e6a` |
| 34 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/ext-iff--ef2d94e88bfb1f355ae27562.md) | 245 | `result-track:ef2d94e88bfb1f355ae27562481ee3ca3d28ab647d36a7be78b704f3e3a9888d` |
| 35 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/forall--0563ae837ccb413291521615.md) | 250 | `result-track:0563ae837ccb4132915216152e4f86447cba7f174c42c7b5adcb69134e0a220c` |
| 36 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/exists--90b5e07dd38b86d70967a89f.md) | 255 | `result-track:90b5e07dd38b86d70967a89f6d335fc154aef8077d8135906b1dbcd83dd2780c` |
| 37 | `theorem` | [subtype_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/subtype-ext--54a1dd3130b8bca37277991d.md) | 261 | `result-track:54a1dd3130b8bca37277991dc428e89fef1b5f23ac7e2640165f89394fe800c7` |
| 38 | `theorem` | [subtype_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/subtype-ext-iff--b6b2e3dc480e1182d7681687.md) | 266 | `result-track:b6b2e3dc480e1182d7681687365ac27494b5515cc77502dfbc64a523e0b82377` |
| 39 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant75b32ba911157162cc9b7e479e53803b6bc5190f3015a82596161a0bfe694395.lean/declarations/map--25c4f5861172446e5467b65e.md) | 274 | `declaration-track:25c4f5861172446e5467b65ed36347ae9da6b1e41cb30caafa24ce2aa03cbf46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
