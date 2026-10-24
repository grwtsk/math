# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLat.Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52f11cea0bbebde1f41e104107f5b034850c5784",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52f11cea0bbebde1f41e104107f5b034850c5784`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.DistLat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/bdddistlat--cb75d5c7d4f436a87d7e47b4.md) | 24 | `declaration-track:cb75d5c7d4f436a87d7e47b4f6d958b96c29eae9a4df59f73464ae31616683e6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/instance--8bff2bcb22f7c2fadc865224.md) | 32 | `declaration-track:8bff2bcb22f7c2fadc865224c6c36637ae4b708cda0e13ec11e96bf929b01931` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/instance--6b2013bb69d38f8421e98ad6.md) | 35 | `declaration-track:6b2013bb69d38f8421e98ad620f43f8512770790465b909351a32d229d7b4fec` |
| 4 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/of--8fa963b1265f6e65abf1f9d9.md) | 41 | `declaration-track:8fa963b1265f6e65abf1f9d9f562630b08090c502929339ba50f595ffaba4fb3` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/coe-of--9866829cd11c18bb4c1cd163.md) | 44 | `result-track:9866829cd11c18bb4c1cd16323749f642e2c954ca6c42283329b6281c56021b8` |
| 6 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom--e8726c226757d5796b2c9396.md) | 49 | `declaration-track:e8726c226757d5796b2c93963dc9f95dc7a52e78e043dec17731b2244f13fa92` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/instance--65fa11fd59cb79978a8ba7d1.md) | 54 | `declaration-track:65fa11fd59cb79978a8ba7d1d43bc2040db82c96c10781ce57e5aaab1e7d7e35` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/instance--bfec3aa2308114943e879516.md) | 59 | `declaration-track:bfec3aa2308114943e8795165926b19a0587cc7dcb7a34a2dfa3a13757f60148` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-hom--358bcee0b46ed1a5713d92b6.md) | 64 | `declaration-track:358bcee0b46ed1a5713d92b60ee63564a37afd602eb929b5c2a9b40849902f54` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ofhom--c8d09f5c2d38e7e5acf65108.md) | 68 | `declaration-track:c8d09f5c2d38e7e5acf651083cef67d7017419f97dd90c45382048ee29deb6ca` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-simps-hom--394e2205bb028e05817b65a3.md) | 75 | `declaration-track:394e2205bb028e05817b65a3f899a7b2e3ed43b21c733dd1ea9a8e6a9c38f3ca` |
| 12 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/coe-id--34797a644ad2c9234bb2a798.md) | 85 | `result-track:34797a644ad2c9234bb2a7983bdba7f25542b9f34b6210563c7dc20715bbc1fa` |
| 13 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/coe-comp--779dd5bc7214cd14a253d4b1.md) | 88 | `result-track:779dd5bc7214cd14a253d4b1e71afc9635bf2c8a273f5bd3e467331c8537750d` |
| 14 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/forget-map--28a3e1b88d47f041cae396d7.md) | 91 | `result-track:28a3e1b88d47f041cae396d76e8751f30b4616137e9778bfaed1493a470590ef` |
| 15 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ext--f88261445aac14915982731f.md) | 95 | `result-track:f88261445aac14915982731f218a7e9ca2846ce648518a7fa4dc17d1de705652` |
| 16 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-id--2da37cee5f80deb7b81cc508.md) | 99 | `result-track:2da37cee5f80deb7b81cc5087cf77ed4ae84850e926f746e9caafa4a67c9376b` |
| 17 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/id-apply--29771a6847cc0632b39936b0.md) | 102 | `result-track:29771a6847cc0632b39936b0cf93bc32d84e6cc46d43d8b91932fd7b9a0c2c4d` |
| 18 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-comp--3da704ea60708f54b5874834.md) | 106 | `result-track:3da704ea60708f54b587483457ea2051de13fd604bf9fe11c45394e67655fd57` |
| 19 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/comp-apply--1204e12e8cea012ee1c5b97f.md) | 110 | `result-track:1204e12e8cea012ee1c5b97f7e88cdfef120dc47549716a61ba161aa8b54772c` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-ext--9356b085617a6fb5b352e79f.md) | 114 | `result-track:9356b085617a6fb5b352e79f1db8e0ce29f77ee2acee8f67f83fb0df42293b6d` |
| 21 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-ofhom--fc47e2fb67d9d3cb8cfca84b.md) | 118 | `result-track:fc47e2fb67d9d3cb8cfca84b391300faf530b3178d32a548043d63590be8035e` |
| 22 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ofhom-hom--e027b18a21629816f534849c.md) | 123 | `result-track:e027b18a21629816f534849cb2d2a00ff32b9343a129258f0a5f861dc019b7e4` |
| 23 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ofhom-id--a3105410ba9021c97b1398f5.md) | 127 | `result-track:a3105410ba9021c97b1398f55fed4d0f67b9614ca2b80fdc612924d031eccc4a` |
| 24 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ofhom-comp--4f0b639b8737b64750c5e99a.md) | 131 | `result-track:4f0b639b8737b64750c5e99aa845f2aac4b2166ea0f9b4c6da0fdaf3b3affa5d` |
| 25 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/ofhom-apply--deb6a82800b8d3d5a77f692f.md) | 137 | `result-track:deb6a82800b8d3d5a77f692f5a6286d42895884fcd6aedc2f59e6983e4213f59` |
| 26 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/inv-hom-apply--72037a595ce7c4fc9cc4d193.md) | 142 | `result-track:72037a595ce7c4fc9cc4d19342df1d8ce0d00aec3edcc5123576c3ee4d5f1b66` |
| 27 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hom-inv-apply--54efacd939e32f4763bd5d85.md) | 145 | `result-track:54efacd939e32f4763bd5d8520c39e019a8401d4b7753afc69449fe74700a6ab` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/instance--5d32d0c1dc16279c4273c38e.md) | 148 | `declaration-track:5d32d0c1dc16279c4273c38e1e1fa317494cca9549d59d9dcb98f15894515fba` |
| 29 | `def` | [toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/tobddlat--1a86d83c4ffa67a00918d4f8.md) | 152 | `declaration-track:1a86d83c4ffa67a00918d4f873358bb2d001de8fda71d23d9874a5b626262c2a` |
| 30 | `theorem` | [coe_toBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/coe-tobddlat--2e45fbe13e263235363897f1.md) | 156 | `result-track:2e45fbe13e263235363897f1adc410c6afe24654c5a69e77a8ee77ed3dcb7f6c` |
| 31 | `instance` | [hasForgetToDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hasforgettodistlat--5c4eda1589453f20cf9ce910.md) | 159 | `declaration-track:5c4eda1589453f20cf9ce91035a8d3d6e021e3a51e323b5f3dd16b7ca41ddc84` |
| 32 | `instance` | [hasForgetToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/hasforgettobddlat--f8c993793b30286a96da5e2a.md) | 163 | `declaration-track:f8c993793b30286a96da5e2aaed7114ec63b3affab37cba8ea52dc2ad0ca9607` |
| 33 | `theorem` | [forget_bddLat_lat_eq_forget_distLat_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/forget-bddlat-lat-eq-forget-distlat-lat--ca9bc86ef85415cd250cbdf2.md) | 167 | `result-track:ca9bc86ef85415cd250cbdf2ba90f6a7c7b71a1605968a3acbffce113acd632e` |
| 34 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/iso-mk--3dfbdc4ad7fc313415403e80.md) | 175 | `declaration-track:3dfbdc4ad7fc313415403e80f77d2f9146f86be78ad31b0dc633b7dcc17dda3a` |
| 35 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/dual--3b36d1d47ac0afae8e64122c.md) | 181 | `declaration-track:3b36d1d47ac0afae8e64122cfb0fead3ad32695d45af57edc4ea2d520884e099` |
| 36 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/dualequiv--865375eeb17845a5c08f5eec.md) | 187 | `declaration-track:865375eeb17845a5c08f5eecfb1ec320243bc73ca6b88203b19db77f162a7c9a` |
| 37 | `theorem` | [bddDistLat_dual_comp_forget_to_distLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddDistLat/Variant465e0cf9b01691b88c6ba19ba1ef9b5347df7d12a17c3dff8a79060d2fa4f7d8.lean/declarations/bdddistlat-dual-comp-forget-to-distlat--2ef8e0e3f15015c3694f8117.md) | 195 | `result-track:2ef8e0e3f15015c3694f8117375d2b933d37d6396f0b9e0f3b2510f42a17f96d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
