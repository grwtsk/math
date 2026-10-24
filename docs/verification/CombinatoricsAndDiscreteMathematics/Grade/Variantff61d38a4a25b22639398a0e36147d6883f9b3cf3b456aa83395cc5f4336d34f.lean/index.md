# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Grade.Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64f62e6518d27c1c3fb8347411216464c14d099b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64f62e6518d27c1c3fb8347411216464c14d099b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Grade` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [covBy_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-cons--f4958b6f3e5447b6e7c898dd.md) | 38 | `result-track:f4958b6f3e5447b6e7c898ddbd9ef72806ca4bf077ba0bdaae871d2c3b61474c` |
| 2 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.exists_multiset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--567872b3eeb3f6b1e6cf11a5.md) | 42 | `result-track:567872b3eeb3f6b1e6cf11a532db6362eb1aa9e1839d859128d921cc37051dce` |
| 3 | `lemma` | [covBy_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-iff--2f648693cac483d8855d78d5.md) | 45 | `result-track:2f648693cac483d8855d78d5fd9e49ee00b7b5770eb9f7a92d5c0773e95305eb` |
| 4 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.card_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--8e678b3e2a6fde75ff6cc94d.md) | 48 | `result-track:8e678b3e2a6fde75ff6cc94d6082a09cd3d729a44d2c5cb3a2e245d056901e17` |
| 5 | `lemma` | [isAtom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/isatom-iff--63040065c3294b1784383538.md) | 51 | `result-track:63040065c3294b17843835382670f827fa03aef94db48a4dd114483fcd16f856` |
| 6 | `lemma` | [isAtom_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/isatom-singleton--da5244d12df02c2e02414a57.md) | 53 | `result-track:da5244d12df02c2e02414a574bea2e344f61c0a4bc3a7f56c9548c8b52e0c0ed` |
| 7 | `instance` | [instGradeMinOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/instgrademinorder--63a0b88aafdf982abf717637.md) | 55 | `declaration-track:63a0b88aafdf982abf71763700ab52ccae92c794ee950c0beb76e486a8a1db6b` |
| 8 | `lemma` | [grade_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/grade-eq--6bc197356f85236de10c12df.md) | 61 | `result-track:6bc197356f85236de10c12df1b899dee5404c1e4c076c98b193af466ad90b797` |
| 9 | `lemma` | [ordConnected_range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/ordconnected-range-val--ce6dcd3dac78672198da4c9b.md) | 69 | `result-track:ce6dcd3dac78672198da4c9b09979e7bbd048cf3d934b8db8333ede68551f021` |
| 10 | `lemma` | [ordConnected_range_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/ordconnected-range-coe--97664c871950a424a2d2b896.md) | 73 | `result-track:97664c871950a424a2d2b896b6ea4bac6989572bc8760ecd8d6dcad2620b1e2a` |
| 11 | `lemma` | [val_wcovBy_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/val-wcovby-val--7fca62ee814f5d6a3428d672.md) | 76 | `result-track:7fca62ee814f5d6a3428d672d6092d7e6e77eb5b27ccf50d8b4452318a99a5b8` |
| 12 | `lemma` | [val_covBy_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/val-covby-val--b748844e63566b1521133acc.md) | 79 | `result-track:b748844e63566b1521133accffff04a1fdcda19ac78e4d855d1965dde0979d24` |
| 13 | `lemma` | [coe_wcovBy_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/coe-wcovby-coe--f122ae26bcfcbc5ea548ea64.md) | 82 | `result-track:f122ae26bcfcbc5ea548ea64d547e0c1ad29504be283de91c3b02daa7f908e8a` |
| 14 | `lemma` | [coe_covBy_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/coe-covby-coe--49d75e634dbb3e3976f8721e.md) | 85 | `result-track:49d75e634dbb3e3976f8721e93b9ee67493344f28000db81fb0d7e859d57c1b3` |
| 15 | `lemma` | [covBy_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-cons--d10bd4c3423a0e954e5b009f.md) | 93 | `result-track:d10bd4c3423a0e954e5b009f0bd3c963791fdb913999b578b4a635e61ee9bacf` |
| 16 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.exists_finset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--29f363b285a0f97a8b08c0fd.md) | 95 | `result-track:29f363b285a0f97a8b08c0fd126882c9d21b27ffb1cc9b912f58bf9d346e93b7` |
| 17 | `lemma` | [covBy_iff_exists_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-iff-exists-cons--ec46534bef2df0f8e4f29e7d.md) | 99 | `result-track:ec46534bef2df0f8e4f29e7d52362e9f4d2278ae6b7b07763d7290f6633cddac` |
| 18 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--eba43db2602826d7f039f27c.md) | 102 | `result-track:eba43db2602826d7f039f27cdeb0ed7040ab1b9c5ee4fe80e6966faeb61988da` |
| 19 | `lemma` | [wcovBy_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/wcovby-insert--9db75eb10819e5ea98f63950.md) | 107 | `result-track:9db75eb10819e5ea98f63950395bc7e3b3346d3aa37a9b904439c48c508c4db4` |
| 20 | `lemma` | [erase_wcovBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/erase-wcovby--63ff5be4fc7c9ae7bbd0f6f6.md) | 108 | `result-track:63ff5be4fc7c9ae7bbd0f6f6dd92c0754a171a0c6170a7235dc1ce65af201158` |
| 21 | `lemma` | [covBy_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-insert--40f6f19e4c9064a2009fd7cf.md) | 110 | `result-track:40f6f19e4c9064a2009fd7cfdc057e543653b9960c821f7511e365f576d61f0e` |
| 22 | `lemma` | [erase_covBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/erase-covby--79336a45fa5305c508adf7c6.md) | 113 | `result-track:79336a45fa5305c508adf7c636bc842da721b74dc304efb3cb7d11094c559abd` |
| 23 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.exists_finset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--ec491232faa623c7b5e22cb5.md) | 115 | `result-track:ec491232faa623c7b5e22cb5404f8c835ef1b887dc2da5e162ff55d2d99b2dbb` |
| 24 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.RootCovByExistsMultisetCons.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.CovBy.exists_finset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-rootcovbyexistsmultisetc--0e17f5f639444ee0fa965bd6.md) | 118 | `result-track:0e17f5f639444ee0fa965bd637848b881e9b7463b04434c03b14b5c117a27d64` |
| 25 | `lemma` | [covBy_iff_exists_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-iff-exists-insert--87e337763df626c903586fc0.md) | 121 | `result-track:87e337763df626c903586fc0296f958b90595408c42928bff5af6f320d44aaf8` |
| 26 | `lemma` | [covBy_iff_card_sdiff_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-iff-card-sdiff-eq-one--d4fc237aaf337335bc840d94.md) | 124 | `result-track:d4fc237aaf337335bc840d94ee107f14a76e93a4c18042895e7ba9a4a2d55eef` |
| 27 | `lemma` | [covBy_iff_exists_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/covby-iff-exists-erase--3fc328591b7d0e335f562a6e.md) | 134 | `result-track:3fc328591b7d0e335f562a6eef14222418fd0276377c5be9516701f5e0123e79` |
| 28 | `lemma` | [isAtom_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/isatom-singleton--b8514412480b2fcfa1552a91.md) | 139 | `result-track:b8514412480b2fcfa1552a91db9ff85fdd480cd558fbb884c6da4f5efcf9745d` |
| 29 | `lemma` | [isAtom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/isatom-iff--0b06085bba83e4f8cf67a848.md) | 142 | `result-track:0b06085bba83e4f8cf67a8481f48a0c67ab99dacc5f5005653af5eed81ccb2ff` |
| 30 | `lemma` | [isCoatom_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/iscoatom-compl-singleton--6b61202529f657c29b966cf1.md) | 148 | `result-track:6b61202529f657c29b966cf192d2d99eaa8de0d3fd1066f2c74d467ac70762d8` |
| 31 | `lemma` | [isCoatom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/iscoatom-iff--7c8ce80f235ddcd8cca56c9d.md) | 150 | `result-track:7c8ce80f235ddcd8cca56c9deb38d045f908480abea0e031b8480b3da4d58681` |
| 32 | `instance` | [instGradeMinOrder_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/instgrademinorder-multiset--9704e94e26a5bbb286ba8519.md) | 157 | `declaration-track:9704e94e26a5bbb286ba851980cb8b6990ee41bbbc409514f38ca029d08c85e6` |
| 33 | `lemma` | [grade_multiset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/grade-multiset-eq--e60218832681360c75618b1b.md) | 163 | `result-track:e60218832681360c75618b1bcdca698bc62a3d1f6c7fead9bed376e8b8a27945` |
| 34 | `instance` | [instGradeMinOrder_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/instgrademinorder-nat--98813be28cf52e45c6ee8060.md) | 165 | `declaration-track:98813be28cf52e45c6ee80603c3ee57b7006d4f0b8d4f0c563617e8895cb421d` |
| 35 | `lemma` | [grade_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/declarations/grade-eq--8fdc9a0f8cc4208baffb761f.md) | 171 | `result-track:8fdc9a0f8cc4208baffb761fd724ced9dd9af2e54a7c6480a0e506ef8b1b2bb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
