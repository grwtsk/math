# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4762e2782dfbb5466cfe0c6d05a6ec7993cdf30d",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4762e2782dfbb5466cfe0c6d05a6ec7993cdf30d`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ofnathom--146e0aa4ec173163e20e5cf4.md) | 42 | `declaration-track:146e0aa4ec173163e20e5cf4abeb59f1621ddc1bfc18f19eca32177acaddb350` |
| 2 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-ite--24862bf4ca3c5ebe9d52d60a.md) | 48 | `result-track:24862bf4ca3c5ebe9d52d60a461470889ce04968bc0052972d1b7226bbd09f6a` |
| 3 | `def` | [castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/castaddhom--cf9c6b4ec73f4383238a96cc.md) | 53 | `declaration-track:cf9c6b4ec73f4383238a96cc3276f3ae88ccfd272bdbe627987fe57cf88a3ef6` |
| 4 | `lemma` | [coe_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/coe-castaddhom--18958c86b8f1f47e92d46678.md) | 61 | `result-track:18958c86b8f1f47e92d46678b0468151bbf5473998623fc3400a930f3d412c8e` |
| 5 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.OfNatHom.Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.Even.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/root-grwtsk-algebra-grouptheory-ofnathom-variant3b527052d7e2c6983a45f1ce--dced3c2102e4876a96ae0fd0.md) | 63 | `result-track:dced3c2102e4876a96ae0fd086e82d95ad9686ba308b6284d6f9dd97c93f3bad` |
| 6 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-eq-zero--a25b71402f73166570efde7f.md) | 67 | `result-track:a25b71402f73166570efde7fdcecd717a306ec2bd9fe538619d521e78f47c299` |
| 7 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-inj--d6476a65a7f853ecb9f93087.md) | 77 | `result-track:d6476a65a7f853ecb9f93087cf33ac0a131de1e3fcbc43a36c92238917bf8f8d` |
| 8 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-injective--52e7b218619166bc685e2a20.md) | 79 | `result-track:52e7b218619166bc685e2a20bdd5f9c5cd2896e39edf5cbc139a278376c547bf` |
| 9 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-ne-zero--895e7782d23c52a51e98ead7.md) | 81 | `result-track:895e7782d23c52a51e98ead7fd169ecb643cf5a34fbb0b3239a6bf5d438ef00e` |
| 10 | `lemma` | [cast_eq_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-eq-one--1cd59560ab169ded46bb49f7.md) | 83 | `result-track:1cd59560ab169ded46bb49f7ef875e5757d705a33f1dd5b14ba5ddd80110499c` |
| 11 | `lemma` | [cast_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-ne-one--9c308d115b1d9567fa0dd14d.md) | 85 | `result-track:9c308d115b1d9567fa0dd14ddcf6f35763d4f60b27c0ba6b5e47336ba5a8cce1` |
| 12 | `def` | [castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/castringhom--b4cd54d608426911cc761e16.md) | 94 | `declaration-track:b4cd54d608426911cc761e16b21caa5e546ab080f096d79bfa8724e6a402daf3` |
| 13 | `lemma` | [coe_castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/coe-castringhom--2fe5b5d79e92e2e664e5f26f.md) | 101 | `result-track:2fe5b5d79e92e2e664e5f26f5c02caf2302cdd658d40f806fbf4f656690d7a8c` |
| 14 | `lemma` | [cast_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-commute--e29787eb4c4d9138af34baca.md) | 103 | `result-track:e29787eb4c4d9138af34bacaa3809dc800a7f4ad2019265f630338bcbf09dd5d` |
| 15 | `lemma` | [cast_comm](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-comm--19d4cd09f68a765182557f9b.md) | 109 | `result-track:19d4cd09f68a765182557f9b814641713f4a97fbe02c50f191237597aeba7fc3` |
| 16 | `lemma` | [commute_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/commute-cast--a4531fd61b5e5fb5bafce52a.md) | 111 | `result-track:a4531fd61b5e5fb5bafce52aa5a4fe35572eb1686cb508de0991d8a0de00e6d9` |
| 17 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.OfNatHom.Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.zsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/root-grwtsk-algebra-grouptheory-ofnathom-variant3b527052d7e2c6983a45f1ce--9615b27e35db47dcd92618bd.md) | 113 | `result-track:9615b27e35db47dcd92618bd0c2a94d0ba60234ca15363b89585a74ba376a7fc` |
| 18 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.OfNatHom.Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.zsmul_eq_mul'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/root-grwtsk-algebra-grouptheory-ofnathom-variant3b527052d7e2c6983a45f1ce--2f3e3a0eca79b46deb340d3f.md) | 117 | `result-track:2f3e3a0eca79b46deb340d3fa9cd6ff50d901979c1f8c47134f88bf13f99bf29` |
| 19 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.OfNatHom.Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.Odd.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/root-grwtsk-algebra-grouptheory-ofnathom-variant3b527052d7e2c6983a45f1ce--2fec931a6c0d4f6d2de4a2b6.md) | 125 | `result-track:2fec931a6c0d4f6d2de4a2b66b8fa10b06ac23049b4c79bbb675950aac4a832a` |
| 20 | `theorem` | [cast_dvd_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/cast-dvd-cast--254a9bbe88c30673c64b4d2d.md) | 129 | `result-track:254a9bbe88c30673c64b4d2dea7e4373ece76f122e8adfa9909455f9802aa3c9` |
| 21 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-right--84a62d8e9dee92111eea84fb.md) | 141 | `result-track:84a62d8e9dee92111eea84fb60ccf8dc29f23697e5048b4efd7d6ecd9bf5baf9` |
| 22 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-left--d8404e517d7324c5adc3e97d.md) | 144 | `result-track:d8404e517d7324c5adc3e97d02f037beec2160b2d6c45122d62dc55028c4f75a` |
| 23 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-intcast-mul--43001e3746444e1e91db9831.md) | 147 | `result-track:43001e3746444e1e91db9831f5d0f70b9699f5973b80a9d613e1ffbc6f46903c` |
| 24 | `lemma` | [intCast_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-left--fe1aed7f67047b9fb2e97a55.md) | 156 | `result-track:fe1aed7f67047b9fb2e97a552dc2597def0608cba55b8bad3496e70aeec2177f` |
| 25 | `lemma` | [intCast_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-right--3d60c0058709c86cb3c35dee.md) | 158 | `result-track:3d60c0058709c86cb3c35deef4c4d7364eaa70ea4b224ab537832433782c8246` |
| 26 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-right--186b01c7968891128bbc2e42.md) | 165 | `result-track:186b01c7968891128bbc2e42a2fa1954ee88505355bda7ee9e0fa69d9580b843` |
| 27 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-left--032183045c5254e8c677153c.md) | 168 | `result-track:032183045c5254e8c677153c8232ec0e934979e719cd0ddfd8bd03f9e827d321` |
| 28 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-intcast-mul--4033265a83bdee273976f57f.md) | 171 | `result-track:4033265a83bdee273976f57f923e31cf7301d72c8dcccf38d8deb48117b5a313` |
| 29 | `lemma` | [self_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/self-intcast-mul--f7b0ac8e24b5f0cba1d91063.md) | 176 | `result-track:f7b0ac8e24b5f0cba1d91063f0ea8bd4200d1dc1efb4fbbd0784b41678585a28` |
| 30 | `lemma` | [intCast_mul_self](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/intcast-mul-self--61f732bb274455297bd140bf.md) | 178 | `result-track:61f732bb274455297bd140bf1350e9be536ccbc167f460ba5100cbef07ea7346` |
| 31 | `lemma` | [self_intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/self-intcast-mul-intcast-mul--207b4614cb2f157ce06822c0.md) | 180 | `result-track:207b4614cb2f157ce06822c0027b9d52bf362553f2e2ebdea249547be39bb848` |
| 32 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-int--963d86c4e975361838dd5790.md) | 193 | `result-track:963d86c4e975361838dd5790bf1634e9e790fbc02a3d9047c91b085951e98920` |
| 33 | `theorem` | [eq_intCastAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/eq-intcastaddhom--7170a3bc04b22fff6cd1504d.md) | 202 | `result-track:7170a3bc04b22fff6cd1504dd2aff58b26030437e7298be8a05f5839f4f71559` |
| 34 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/eq-intcast--7e473ed990676ac959f3daad.md) | 207 | `result-track:7e473ed990676ac959f3daad0bcff4f8cc7a605aff5363b04b55a66de6080583` |
| 35 | `theorem` | [map_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/map-intcast--57b1ac4942d357c57ebb5a95.md) | 213 | `result-track:57b1ac4942d357c57ebb5a95f8bfdd9418643ddab911c62bf41a6d61fbfe87b1` |
| 36 | `theorem` | [Int.castAddHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/int-castaddhom-int--1ca5f99cf44fe2daf12f82f1.md) | 218 | `result-track:1ca5f99cf44fe2daf12f82f1fce351462f4d797e8078113ced65361ddb440d9d` |
| 37 | `theorem` | [ext_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-mint--ca90b9736f15cd6c87340c89.md) | 228 | `result-track:ca90b9736f15cd6c87340c894f2574945fead61c2b4d9bc09d56c082e4627dad` |
| 38 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-int--2f3049d1efdaa6bb0a5191f8.md) | 233 | `result-track:2f3049d1efdaa6bb0a5191f83c5fa7eda0a8061796b576da4a5043ab7cf763e5` |
| 39 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-int--7af0a9e369eb77ad021b3840.md) | 249 | `result-track:7af0a9e369eb77ad021b3840546bb0a088ec13ec71291c7e0176bba6b60059b4` |
| 40 | `theorem` | [ext_int'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-int--e701b21bf5a618177e2f2c7e.md) | 258 | `result-track:e701b21bf5a618177e2f2c7eb88f0613a77f4814f3033e7b95d133b0a51be1c1` |
| 41 | `def` | [zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultipleshom--646fdd1f3bdc68ca05901485.md) | 272 | `declaration-track:646fdd1f3bdc68ca05901485145f990ffc509a5cf2974d111b76834c3ad89073` |
| 42 | `def` | [zpowersHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowershom--49814deaee926981b4c2de78.md) | 283 | `declaration-track:49814deaee926981b4c2de785c24b016910601b8a3cb521e6ee31889aa2b1a51` |
| 43 | `lemma` | [zmultiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultipleshom-apply--1ce82d188730bd9443f1318f.md) | 286 | `result-track:1ce82d188730bd9443f1318f43ecc80004dc620312bcb664dd806a4ac9f896a4` |
| 44 | `lemma` | [zmultiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultipleshom-symm-apply--5c39b60a2c4d3497bd0f8d15.md) | 288 | `result-track:5c39b60a2c4d3497bd0f8d15f303ee0316063b98c350c40e26be73d31266a3a5` |
| 45 | `lemma` | [zpowersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowershom-apply--8283c6e1636bb026a082bc93.md) | 290 | `result-track:8283c6e1636bb026a082bc935894752e446e570864ce0ad28a2e5e1df25b978a` |
| 46 | `lemma` | [zpowersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowershom-symm-apply--21a75305353c93ab51cf2734.md) | 293 | `result-track:21a75305353c93ab51cf273456c269e5dffe09690b0b13e967f1a0209d4b2dea` |
| 47 | `lemma` | [MonoidHom.apply_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/monoidhom-apply-mint--2291157699788e61be7fc44b.md) | 296 | `result-track:2291157699788e61be7fc44b5fbb98e6dc5b07b722735ef35b6bbe8f3da46fac` |
| 48 | `lemma` | [AddMonoidHom.apply_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/addmonoidhom-apply-int--8b92236c15162cad40c004b5.md) | 300 | `result-track:8b92236c15162cad40c004b5848b3ea624e12d276dd8f9f735003caba5a81727` |
| 49 | `def` | [zmultiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultiplesaddhom--1d087d9f0cc0a7da5ce19ff3.md) | 309 | `declaration-track:1d087d9f0cc0a7da5ce19ff3aeebb1681dfa85bb4c13de2910aaddb5eed4a136` |
| 50 | `def` | [zpowersMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowersmulhom--0a5888909682afe1d7e1085f.md) | 313 | `declaration-track:0a5888909682afe1d7e1085f0e7e8571c39b2c89d1158afe8474e306621354e3` |
| 51 | `lemma` | [zpowersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowersmulhom-apply--3d9dc49e803cea446f878c80.md) | 319 | `result-track:3d9dc49e803cea446f878c800a81a7544f724d9a70d7e5722b45f80c85a3c630` |
| 52 | `lemma` | [zpowersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zpowersmulhom-symm-apply--b61c24645bd954569db36f9f.md) | 322 | `result-track:b61c24645bd954569db36f9f394b7697a9659961dd62e623ff5e31fe0be0f55f` |
| 53 | `lemma` | [zmultiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultiplesaddhom-apply--d361dfc96e82d2a9bb6514c9.md) | 325 | `result-track:d361dfc96e82d2a9bb6514c917c1be85ae0a224b4d65c8f6513fc55aac28fffe` |
| 54 | `lemma` | [zmultiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/zmultiplesaddhom-symm-apply--397f6cbc37cef52486a7aa0d.md) | 327 | `result-track:397f6cbc37cef52486a7aa0d6097711dcf0836eadd019c18201a19180445cb9e` |
| 55 | `theorem` | [eq_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/eq-intcast--42ef8bd14f60cb3b49d43587.md) | 336 | `result-track:42ef8bd14f60cb3b49d435871fa83bdc4da53a42f60dfa06f52df4c3cbe35d85` |
| 56 | `theorem` | [map_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/map-intcast--11b6122310e55fe9e8ed20e7.md) | 340 | `result-track:11b6122310e55fe9e8ed20e7df1c49b76e624f9b255702a4dc2ea7f38d2b1b7f` |
| 57 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/eq-intcast--0f2d6977b9bb99c7ecb9a305.md) | 345 | `result-track:0f2d6977b9bb99c7ecb9a305816123246d1458531252dfc5ff9da51d9538e458` |
| 58 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/ext-int--0d915b1e8325e23bdc528fbb.md) | 348 | `result-track:0d915b1e8325e23bdc528fbb8b3f868c59eabd4d393b2b9819bd6f604a89a630` |
| 59 | `instance` | [Int.subsingleton_ringHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/int-subsingleton-ringhom--edb54475f8b8a7d54a8e632c.md) | 351 | `declaration-track:edb54475f8b8a7d54a8e632cd0f8e32f6c0db22db97ed680627cc1c5ec93252d` |
| 60 | `theorem` | [Int.castRingHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean/declarations/int-castringhom-int--0cdfc17f0163376ec30f9d08.md) | 359 | `result-track:0cdfc17f0163376ec30f9d087cbf3a45ea802dede1ea13137f3da37cc6d546c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
