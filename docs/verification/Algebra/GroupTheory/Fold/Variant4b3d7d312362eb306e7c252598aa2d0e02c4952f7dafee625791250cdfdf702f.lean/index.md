# Verification target: GRWTSK.Algebra.GroupTheory.Fold.Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda4234a58fe27cd8e93ba3c985d1ed239a8048e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda4234a58fe27cd8e93ba3c985d1ed239a8048e`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.KleisliCat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Foldl](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl--e682170cff9ef8d3ccb249d3.md) | 118 | `declaration-track:e682170cff9ef8d3ccb249d383907558a323a6d049fe97c178f31a369dea632a` |
| 2 | `def` | [Foldl.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-mk--f85c0f12191096de8beead84.md) | 122 | `declaration-track:f85c0f12191096de8beead84a1d41f8cc396b855bb03d8852c1500609a86ff7d` |
| 3 | `def` | [Foldl.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-get--b781a5fa4d52adc8c123c59c.md) | 126 | `declaration-track:b781a5fa4d52adc8c123c59cc1f3757479ece2c2659bbc2e39037a724b4ca692` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-offreemonoid--28ee4d4f6e9b8b3f8188d8dc.md) | 131 | `declaration-track:28ee4d4f6e9b8b3f8188d8dc13144c271162c81ea46e978cae574778c963c1a0` |
| 5 | `def` | [Foldr](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr--05e3ccded9cd1746ca552ed4.md) | 140 | `declaration-track:05e3ccded9cd1746ca552ed445b1025965f850c450c6911689d30e78d8f595af` |
| 6 | `def` | [Foldr.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-mk--2f218f9fd087f8dc54520784.md) | 144 | `declaration-track:2f218f9fd087f8dc545207847740ba171cb1a8303d7e2e25e220800584de057b` |
| 7 | `def` | [Foldr.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-get--7884bc3c06fb888588e274d0.md) | 148 | `declaration-track:7884bc3c06fb888588e274d0cd442856a05e75ce616ea927a474edf8dba3a747` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-offreemonoid--0b47caf05c23d5ed9871fbdc.md) | 153 | `declaration-track:0b47caf05c23d5ed9871fbdcda1c0351f156312ce935b5695260f35336c35236` |
| 9 | `def` | [foldlM](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm--1b689a695bb004b062cb33de.md) | 161 | `declaration-track:1b689a695bb004b062cb33de8b758545e3cb3038fd7c53f1d5c1de382187704b` |
| 10 | `def` | [foldlM.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-mk--95d062e819790e9aceea4511.md) | 165 | `declaration-track:95d062e819790e9aceea451132dda3c68a2cd0cf4df8ef7841d8079d12d7982d` |
| 11 | `def` | [foldlM.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-get--310be8dbbf63fa3749b27f75.md) | 169 | `declaration-track:310be8dbbf63fa3749b27f7536865246dd053d4930b63e674d163dcb1a90d0dd` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-offreemonoid--705531d2607b736c7bcca7ed.md) | 174 | `declaration-track:705531d2607b736c7bcca7ed54eced749196715d88324e1c4c19b23373be7b1d` |
| 13 | `def` | [foldrM](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm--894eb408b417bab79b0a32a9.md) | 182 | `declaration-track:894eb408b417bab79b0a32a907acbe7ef74cf936c8ee314735bd79c3cf1e2839` |
| 14 | `def` | [foldrM.mk](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-mk--572cfa12083c01fed9db8a05.md) | 186 | `declaration-track:572cfa12083c01fed9db8a05f81795715e5e86672dc764c6003e6c806d82c063` |
| 15 | `def` | [foldrM.get](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-get--2afcd3255ef0e51168d0f0d7.md) | 190 | `declaration-track:2afcd3255ef0e51168d0f0d7130f19036512f2184742371c1f32070712ff476e` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-offreemonoid--2625bf95b6986d0690f16785.md) | 195 | `declaration-track:2625bf95b6986d0690f16785c5e54ffd79fcfcde7b3643b183348e777167f1a9` |
| 17 | `def` | [foldMap](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldmap--50b3c526bee200d8986a9f12.md) | 212 | `declaration-track:50b3c526bee200d8986a9f1230a3a0975bc61cfed8bce5af69aa464cab51382d` |
| 18 | `def` | [foldl](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl--5027d89157f20d924b30b9c3.md) | 216 | `declaration-track:5027d89157f20d924b30b9c3de2e2fdbb1803f02054c4cefff57f02dd28de6c4` |
| 19 | `def` | [foldr](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr--c5fc9bfd8a39349daaca2cc0.md) | 220 | `declaration-track:c5fc9bfd8a39349daaca2cc0b9442b054cb22aec2605cd25e49b40ad11d9ded7` |
| 20 | `def` | [toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/tolist--53f2efee835fa91372922e4e.md) | 240 | `declaration-track:53f2efee835fa91372922e4ea5e9958ef09b7dc00df3df3c6c2fe1b6ff93fc22` |
| 21 | `def` | [length](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/length--e0ffc148a94485ee4fc54509.md) | 244 | `declaration-track:e0ffc148a94485ee4fc54509328817e4685574c1d3d8840a6766d1dcd4b83f4e` |
| 22 | `def` | [foldlm](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm--cc7692762b8752f49d1b6c2a.md) | 250 | `declaration-track:cc7692762b8752f49d1b6c2ac074c38567e3f86f621ba79bacc0c82d0c6c9cd4` |
| 23 | `def` | [foldrm](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm--6aae0e2b1763691295840d67.md) | 254 | `declaration-track:6aae0e2b1763691295840d67bd73554e577b2991a54390a0d924401beab6c97b` |
| 24 | `def` | [mapFold](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/mapfold--9c47ad4cec1aeab3a68da991.md) | 266 | `declaration-track:9c47ad4cec1aeab3a68da99191db764c423620e1d50dbe9bf4bdc721ee13a34d` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/free-map-eq-map--c31ce81efba8c9425b91ea46.md) | 273 | `result-track:c31ce81efba8c9425b91ea469fef5ec5e8ef5a84134c7edeefc4dff660ba8212` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-unop-offreemonoid--408a03e7a2370418eee84f72.md) | 278 | `result-track:408a03e7a2370418eee84f725b7c0bfec1dc2c1dbb27b3e1047646586c9619d4` |
| 27 | `theorem` | [foldMap_hom](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldmap-hom--743023f9cf51454cf245b36a.md) | 289 | `result-track:743023f9cf51454cf245b36afdef85806956fa9e86ef22ecf2c3aabd77a1b81a` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldmap-hom-free--cbcc99a09a8e5107266d7a7d.md) | 298 | `result-track:cbcc99a09a8e5107266d7a7d28e70fdebf8e9f68ffdfafc22029f10680579e12` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-offreemonoid-comp-of--80fcad876b13019bec7c01a3.md) | 316 | `result-track:80fcad876b13019bec7c01a3eb2ad397d008e77843299d4e32b3795428bd8cfe` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-offreemonoid-comp-of--12dd2d0fb228fff8933ef919.md) | 322 | `result-track:12dd2d0fb228fff8933ef9191d1a49093d92d88954e3308a55489643637546a1` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-offreemonoid-comp-of--496c5e0c1cca0d92a175d449.md) | 328 | `result-track:496c5e0c1cca0d92a175d449830e3fc1965db156826b6057710e0444fc468e0c` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-offreemonoid-comp-of--52bad1b88c8aab6b665228b4.md) | 335 | `result-track:52bad1b88c8aab6b665228b45eddeaabb846cb879fef9a06eaf1e624ad9d6e5b` |
| 33 | `theorem` | [toList_spec](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/tolist-spec--f73664ce99401906054a4440.md) | 341 | `result-track:f73664ce99401906054a4440611bc6d4e7b61444917bb359e742e14155fdcba0` |
| 34 | `theorem` | [foldMap_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldmap-map--5fa97dc2a6794950259d3492.md) | 357 | `result-track:5fa97dc2a6794950259d34926686e815a4eff5c31accf5691eeeeb10a298ce2a` |
| 35 | `theorem` | [foldl_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-tolist--3a39b8a53795422d92c9498c.md) | 361 | `result-track:3a39b8a53795422d92c9498c34f5c94e231a7f3589de97bcff65457a562f7c41` |
| 36 | `theorem` | [foldr_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-tolist--6c291126f4bd8d73299804ff.md) | 368 | `result-track:6c291126f4bd8d73299804ff99b5d2771101e96efadf3ec07f6faef6e482f933` |
| 37 | `theorem` | [toList_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/tolist-map--f44cc7de3c40a0ab52bbafd7.md) | 375 | `result-track:f44cc7de3c40a0ab52bbafd75f8ae23ba10dad54e82504d1a9d664d243dec3a9` |
| 38 | `theorem` | [foldl_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldl-map--ace3a7abe350b9a0365878b6.md) | 381 | `result-track:ace3a7abe350b9a0365878b69bf4c864823041db3d8b27b76ac9af2d59dfb95e` |
| 39 | `theorem` | [foldr_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldr-map--a326a1f0b5b2772fe9c24846.md) | 387 | `result-track:a326a1f0b5b2772fe9c2484609071de92d85dc67fdd5b1893b1e42201f3dba83` |
| 40 | `theorem` | [toList_eq_self](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/tolist-eq-self--2b1018c1de5cc4f0090c74db.md) | 392 | `result-track:2b1018c1de5cc4f0090c74db64380d3ff63214392712daa03e890ebe0a3caf15` |
| 41 | `theorem` | [length_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/length-tolist--ba40624ee362f8057cc7eb57.md) | 399 | `result-track:ba40624ee362f8057cc7eb577d7f6146f6a791fdf8480d8e5fc0ef13ae720d3c` |
| 42 | `theorem` | [foldlm_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-tolist--8e02792a4ed0922692d94dba.md) | 412 | `result-track:8e02792a4ed0922692d94dba068db16e8920e35ef851e73ebffd85bb3bea340c` |
| 43 | `theorem` | [foldrm_toList](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-tolist--0b8708d2dbe475e26cee69dd.md) | 421 | `result-track:0b8708d2dbe475e26cee69ddf5880e59df9c7bc40bb5cc6eef6228c3ce2a3122` |
| 44 | `theorem` | [foldlm_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldlm-map--886a514a9a934c75451d10b0.md) | 429 | `result-track:886a514a9a934c75451d10b0d9b9eeef4cf243ff9b78a8de3d5e78b888b58370` |
| 45 | `theorem` | [foldrm_map](../../../../../mathematics/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/declarations/foldrm-map--3a1ef2a72669d3fe2ee103fc.md) | 435 | `result-track:3a1ef2a72669d3fe2ee103fc3a583acddb30bb33d9bfc24e96074e6d92623d72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
