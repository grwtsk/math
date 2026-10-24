# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Birkhoff.Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b2e32cfbbaa3bc726d28577d8b1c78037f251c6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b2e32cfbbaa3bc726d28577d8b1c78037f251c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Irreducible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [infIrred_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirred-ici--5197de07efd2a1d6daf1a23d.md) | 69 | `result-track:5197de07efd2a1d6daf1a23db33af5ee96cba4ff54ae39ec097dbd7b73faba47` |
| 2 | `lemma` | [infIrred_iff_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirred-iff-of-finite--f19848b3447fd431e33da5bb.md) | 78 | `result-track:f19848b3447fd431e33da5bb0bc8afff45177e2277f41e5423c74c8b4849adf2` |
| 3 | `lemma` | [supIrred_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirred-iic--c68368aa9bd7cf18b12f4384.md) | 91 | `result-track:c68368aa9bd7cf18b12f4384757a1144b23f5fc322347265577966c2b4c11b84` |
| 4 | `lemma` | [supIrred_iff_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirred-iff-of-finite--a5227c0e8b800146a9632e0c.md) | 100 | `result-track:a5227c0e8b800146a9632e0cd4112ff2b42427d65a6337628c9424ccc93d1ea6` |
| 5 | `def` | [supIrredLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset--733fbc8eedc936f4e5a93a76.md) | 114 | `declaration-track:733fbc8eedc936f4e5a93a765aed1cfc743bd3f74032dab641eed4415c966efd` |
| 6 | `def` | [infIrredUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset--b431b23a7c05af094b0e5809.md) | 121 | `declaration-track:b431b23a7c05af094b0e58091f86c78628fe5bfdfc7d22fea39ef565f6e24536` |
| 7 | `lemma` | [supIrredLowerSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset-apply--3e4da40ad37dd08d50357b6f.md) | 126 | `result-track:3e4da40ad37dd08d50357b6f52dc932c72b83b73c85cb5e9717128ef510166a5` |
| 8 | `lemma` | [infIrredUpperSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset-apply--d7ca133a3bda2992d6fc0e1a.md) | 127 | `result-track:d7ca133a3bda2992d6fc0e1a164372f1d3dd32cf416e6d39988322620de488b9` |
| 9 | `lemma` | [supIrredLowerSet_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset-surjective--1b640716e18e89872b5136b5.md) | 131 | `result-track:1b640716e18e89872b5136b5dd7cb7ccaf4a1859b902407cbe2fb1f8036b18ed` |
| 10 | `lemma` | [infIrredUpperSet_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset-surjective--c8173ea90e35207b774e8862.md) | 134 | `result-track:c8173ea90e35207b774e8862619f035d14b44d0e3764950f0c8e2ba0f083b187` |
| 11 | `def` | [supIrredLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset--bc01bf135ce34ae73a318866.md) | 144 | `declaration-track:bc01bf135ce34ae73a3188660345e7b24ae5a1c1be1b58d76b67916c3d9280fb` |
| 12 | `def` | [infIrredUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset--8cca676f0d0a4b917dfcc49b.md) | 149 | `declaration-track:8cca676f0d0a4b917dfcc49ba21557f95b7692c30abfe957b4599f6c1cb052b9` |
| 13 | `lemma` | [supIrredLowerSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset-apply--9f85a3ed037360ce2b0fd7f5.md) | 152 | `result-track:9f85a3ed037360ce2b0fd7f5f71a1a6551872c694c56f49c103e0ad2946f4bde` |
| 14 | `lemma` | [infIrredUpperSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset-apply--bacf100563020ecd7ffd90b0.md) | 153 | `result-track:bacf100563020ecd7ffd90b02014c1ccbcac503032872a203e450f155a455039` |
| 15 | `lemma` | [supIrredLowerSet_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/supirredlowerset-symm-apply--ad85a3fc09318aa8cfd9e02b.md) | 162 | `result-track:ad85a3fc09318aa8cfd9e02bba269e8336f8a110d85b906aed69012b86d20c3a` |
| 16 | `lemma` | [infIrredUpperSet_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/infirredupperset-symm-apply--cdde6b2b6de94eaa263afc7b.md) | 176 | `result-track:cdde6b2b6de94eaa263afc7bb0d98b7760e6ebdbbefd8770fa934d70c9d48fd6` |
| 17 | `def` | [OrderIso.lowerSetSupIrred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/orderiso-lowersetsupirred--38858a26f6659d5126b1a18a.md) | 194 | `declaration-track:38858a26f6659d5126b1a18a464041a839dbb441eebd1aa912740b01e4c292e6` |
| 18 | `def` | [birkhoffSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhoffset--3c92a754a70df39d4d264f87.md) | 217 | `declaration-track:3c92a754a70df39d4d264f87dc488500b641ff81c884f4f3cd9d695df74ec2e5` |
| 19 | `def` | [birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhofffinset--0e32b3818908a4544e320009.md) | 226 | `declaration-track:0e32b3818908a4544e3200091c7a72dde553a3a28ffb4d3bc7a497827b76eaad` |
| 20 | `lemma` | [coe_birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/coe-birkhofffinset--661e8f5704b16ced68b3d67b.md) | 229 | `result-track:661e8f5704b16ced68b3d67ba6dd990aa6b0a26b2f3662f34503a58d42cbe4e4` |
| 21 | `lemma` | [birkhoffSet_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhoffset-sup--41ae3dfabfb07a3ad2ed19b9.md) | 237 | `result-track:41ae3dfabfb07a3ad2ed19b990fcd4f8a804eb93c19c9d8dae08cb721b0440e0` |
| 22 | `lemma` | [birkhoffSet_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhoffset-inf--bc7071bed726bbb46d2faa02.md) | 240 | `result-track:bc7071bed726bbb46d2faa02cbf3d4a9df9de9eb2dc9b2d8a29105653b8bf59a` |
| 23 | `lemma` | [birkhoffSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhoffset-apply--963348f2df2ead21684aeaef.md) | 243 | `result-track:963348f2df2ead21684aeaef485f745a30cffc37223cd358cd39b20b253b3727` |
| 24 | `lemma` | [birkhoffFinset_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhofffinset-sup--91c3a59d0fe162e589dd8cb0.md) | 249 | `result-track:91c3a59d0fe162e589dd8cb06fc251d6787d535134ebf8f81f29a933c96da80c` |
| 25 | `lemma` | [birkhoffFinset_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhofffinset-inf--5ac66e86eb606785ffc66a09.md) | 256 | `result-track:5ac66e86eb606785ffc66a09d51811ee9245d7bc8008190484c93655437ca288` |
| 26 | `def` | [birkhoffSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhoffset--f363380a297b48de88c58830.md) | 269 | `declaration-track:f363380a297b48de88c5883025cda9052ce590f86be654081d81d5a226f620c5` |
| 27 | `def` | [birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhofffinset--29543cc75990611d14faeced.md) | 277 | `declaration-track:29543cc75990611d14faecedaca6ee80d7a555711646f3c024517284f9211b7c` |
| 28 | `lemma` | [birkhoffFinset_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/birkhofffinset-injective--2379519c2c18fb3e399a0cb0.md) | 282 | `result-track:2379519c2c18fb3e399a0cb082f7cf73dc82b29aa6adfda272fb74cb590a5fbf` |
| 29 | `lemma` | [exists_birkhoff_representation.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variantcb5aee24badb4e235d557124ea5bedeb02535be8613fcaa66f92146a7d19042f.lean/declarations/exists-birkhoff-representation--c8d680c33eaa944b88846ece.md) | 287 | `result-track:c8d680c33eaa944b88846eceb90c2dd851e82681f9aadfcdae9f322fde99907e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
