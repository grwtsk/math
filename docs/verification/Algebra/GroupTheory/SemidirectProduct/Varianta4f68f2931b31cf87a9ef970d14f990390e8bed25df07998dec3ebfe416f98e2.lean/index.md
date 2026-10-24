# Verification target: GRWTSK.Algebra.GroupTheory.SemidirectProduct.Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac12b1e45e8c17760e0bd0b5b1e35f276309401a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac12b1e45e8c17760e0bd0b5b1e35f276309401a`.

Source path: `GRWTSK/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Aut` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemidirectProduct](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/semidirectproduct--1a6a99116ee012185515e25d.md) | 50 | `declaration-track:1a6a99116ee012185515e25d6c7b4ee51119a1f0ef74fd3c2d4cbea7a11939f5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/instance--93b5df44068037f98b217f25.md) | 74 | `declaration-track:93b5df44068037f98b217f256bf87249c6a368aa9bba5eee4f79370cab741fd5` |
| 3 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/mul-def--4540a3a4af75c09cf6b2321b.md) | 77 | `result-track:4540a3a4af75c09cf6b2321b0b503dad1fd1d6955043762dc791b8503f626ba8` |
| 4 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/mul-left--9dba7e4e3c9097e57f529d25.md) | 81 | `result-track:9dba7e4e3c9097e57f529d25090f55377a9e0f226c9241dc9f76d10d4d40ee04` |
| 5 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/mul-right--4334810bfa63d61663de207e.md) | 85 | `result-track:4334810bfa63d61663de207efd085a23e729f4d618b78f606cb0ac0113dcfac8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/instance--750c75bf3dc91d901ec03c45.md) | 88 | `declaration-track:750c75bf3dc91d901ec03c45d3fdd0c0f2e715c4a59ca4a7628a289908768c09` |
| 7 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/one-left--0fc1cc827ee290f5e530e901.md) | 91 | `result-track:0fc1cc827ee290f5e530e9018d21885912225ce11b77d85064c2f321b2d5428a` |
| 8 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/one-right--0005c1dcbdfd06ffa6c677a6.md) | 95 | `result-track:0005c1dcbdfd06ffa6c677a6d5939b4ecacb8c002432dd8e836801e90541010a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/instance--c592ee6579594f0f2d40f223.md) | 98 | `declaration-track:c592ee6579594f0f2d40f22338608a97c6bf085295d3deb59fb7d317ae39b8ea` |
| 10 | `theorem` | [inv_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inv-left--da70f630f243c334ce11398c.md) | 102 | `result-track:da70f630f243c334ce11398c4a5b2cf0a49378dbb34aa5a00627ab651d63a87e` |
| 11 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inv-right--756a68b81f11f807727a3781.md) | 106 | `result-track:756a68b81f11f807727a378103857eed9dabe0fae218da6e801b93249a3c5b43` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/instance--c3944d78d6c15c08fcc7112d.md) | 109 | `declaration-track:c3944d78d6c15c08fcc7112d4e4abb67cddd6eee49ba64fba43b506cf02708f2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/instance--cdca59bc8337df930b751da1.md) | 115 | `declaration-track:cdca59bc8337df930b751da1cd7c4ed32b8a3ba8594aded846e58097c7e49158` |
| 14 | `def` | [inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl--50d9a2cca49c96530466f9c6.md) | 118 | `declaration-track:50d9a2cca49c96530466f9c6366e2332aadad520ee5d7749877523cb23e38053` |
| 15 | `theorem` | [left_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/left-inl--0b33734cb17038bf05e894bb.md) | 126 | `result-track:0b33734cb17038bf05e894bb611f87c469a44b7585d7f1dffe1873206d5ba268` |
| 16 | `theorem` | [right_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/right-inl--7734a94a998fed3856eee16a.md) | 130 | `result-track:7734a94a998fed3856eee16ab3acb5f9b141ed9d8623472df43fbbc37db8f9c5` |
| 17 | `theorem` | [inl_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl-injective--f1a47a2e5db128636dd97d27.md) | 133 | `result-track:f1a47a2e5db128636dd97d279803887e96f0b70f111adbf9055209156b2f5b24` |
| 18 | `theorem` | [inl_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl-inj--a9787dfae3af3c6f2a2b4d35.md) | 138 | `result-track:a9787dfae3af3c6f2a2b4d35b35384c56e6180074dbade59d857ba6c5712b644` |
| 19 | `def` | [inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inr--16a093c122091de6e73aa4f2.md) | 143 | `declaration-track:16a093c122091de6e73aa4f2f6fac96242f6782a30453b004463127f575585ca` |
| 20 | `theorem` | [left_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/left-inr--02325a9a82c4e078dacd91c7.md) | 150 | `result-track:02325a9a82c4e078dacd91c775219f8637980f05265b0bea4f49d5805c131670` |
| 21 | `theorem` | [right_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/right-inr--9633ae7294383cbe04d6b18c.md) | 154 | `result-track:9633ae7294383cbe04d6b18c6f03a2ae6b0f6f836a0e01d74d4ed521edd528d6` |
| 22 | `theorem` | [inr_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inr-injective--3e5ca0b6bc6b16072b093809.md) | 157 | `result-track:3e5ca0b6bc6b16072b09380991e98812d4c145cacd138e8931fd00f5618a993e` |
| 23 | `theorem` | [inr_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inr-inj--c1ce5abea83248a4de934bec.md) | 162 | `result-track:c1ce5abea83248a4de934bece3a9bc45c38b4f801a194a2fc5aa2ec5165dddbb` |
| 24 | `theorem` | [inl_aut](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl-aut--0751991497a7443f76619a8d.md) | 166 | `result-track:0751991497a7443f76619a8df11a854599bfac2e3da2f93d1a51c662c40b0d45` |
| 25 | `theorem` | [inl_aut_inv](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl-aut-inv--31732dcd65b1cf7aa494c75a.md) | 170 | `result-track:31732dcd65b1cf7aa494c75ab903809a950f98c70ec29da10aeb1f58a3ef8b9d` |
| 26 | `theorem` | [mk_eq_inl_mul_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/mk-eq-inl-mul-inr--b41d9208db928ec760665bf2.md) | 175 | `result-track:b41d9208db928ec760665bf24dba6606c5aeae67229c3cc6740538939ee8474e` |
| 27 | `theorem` | [inl_left_mul_inr_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/inl-left-mul-inr-right--272c91a74ea908b3fb9b35ad.md) | 179 | `result-track:272c91a74ea908b3fb9b35adf6e901badfea1a2d900a07ecdfd9917f098b7cc3` |
| 28 | `def` | [rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom--bd6aae882980003774e1b00a.md) | 183 | `declaration-track:bd6aae882980003774e1b00a8c619898595448c7a3a6601fd2388f1a375d7d6f` |
| 29 | `theorem` | [rightHom_eq_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-eq-right--1e0845bc7b2428aadf56a7ed.md) | 190 | `result-track:1e0845bc7b2428aadf56a7edc5525fba7408890b5beef5dedffa89d1775bdc61` |
| 30 | `theorem` | [rightHom_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-comp-inl--aa6e1540cd0736f6a0c3f341.md) | 194 | `result-track:aa6e1540cd0736f6a0c3f34125b7349aeee2c427fda4b87a7676ddb60e8667b4` |
| 31 | `theorem` | [rightHom_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-comp-inr--9892b3355d66f80b45e4a813.md) | 198 | `result-track:9892b3355d66f80b45e4a813f927654810905ec5fea6d83cd7c3cab7aa4ffefa` |
| 32 | `theorem` | [rightHom_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-inl--6490a88d29ff21ac4932ed9e.md) | 203 | `result-track:6490a88d29ff21ac4932ed9ea5d525d8cde146e513aa990660cd9661cd86a8ff` |
| 33 | `theorem` | [rightHom_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-inr--4d07a1c01630c571ebfb3763.md) | 207 | `result-track:4d07a1c01630c571ebfb3763c28c3e6d712deb7c40d36ac79048d24ae398634f` |
| 34 | `theorem` | [rightHom_surjective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-surjective--00aafe0fe775628b71207267.md) | 210 | `result-track:00aafe0fe775628b712072673fcd19064cd17b23b2673beb9549334bf11c54f8` |
| 35 | `theorem` | [range_inl_eq_ker_rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/range-inl-eq-ker-righthom--19f7a627a023c71a259eeddd.md) | 214 | `result-track:19f7a627a023c71a259eeddd9dbed6df68a86e277fe3f76116ae6634fe74a12e` |
| 36 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift--c2c900260738ad2644f2ee2e.md) | 225 | `declaration-track:c2c900260738ad2644f2ee2eb90abbc2391a8490fa0bbdd1942ea9f508b73d41` |
| 37 | `theorem` | [lift_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift-inl--bf03a54279ef6fcba95c7e17.md) | 237 | `result-track:bf03a54279ef6fcba95c7e17ae8945958d600996edd921da9ca1e56d889e1db7` |
| 38 | `theorem` | [lift_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift-comp-inl--1ec0fb1f415121812e4dd4cd.md) | 241 | `result-track:1ec0fb1f415121812e4dd4cda3fb79e5c9aa23754e4586c1b8a3c5667654b6b8` |
| 39 | `theorem` | [lift_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift-inr--aaf9ddcf18701d6be817a878.md) | 245 | `result-track:aaf9ddcf18701d6be817a8780af22d1347be01bc37066d293c6b39670080704e` |
| 40 | `theorem` | [lift_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift-comp-inr--91ca1f042bbcebcb3afd8300.md) | 249 | `result-track:91ca1f042bbcebcb3afd8300d7f57eca3cf7c5c08ed81e61c5faca00525b6907` |
| 41 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/lift-unique--8585cc3ab539de489ce3b81c.md) | 252 | `result-track:8585cc3ab539de489ce3b81ce0e9e42af6cb6a1d431ef555eb8e12a7c05994c4` |
| 42 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/hom-ext--7411ada4a36de391dc426b99.md) | 261 | `result-track:7411ada4a36de391dc426b99c7e2604b8208a395a2f9ab3c4bc75d3392472441` |
| 43 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map--a104972dbeb83dab5247f817.md) | 275 | `declaration-track:a104972dbeb83dab5247f817c8f50dbba8340008f5997a82e95d9a697fd6b2f0` |
| 44 | `theorem` | [map_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-left--6cd17ed7201be885267817a0.md) | 289 | `result-track:6cd17ed7201be885267817a0b9e1bf7cf1358b280a5d7a55c6773c72393b2fc1` |
| 45 | `theorem` | [map_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-right--aa15b2261ce9a478003304ca.md) | 293 | `result-track:aa15b2261ce9a478003304caaa3dbffe741d4aca34024c47adb16d5ad713b659` |
| 46 | `theorem` | [rightHom_comp_map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/righthom-comp-map--2137015f90f29902add7ebcb.md) | 297 | `result-track:2137015f90f29902add7ebcb1b8e69fc3457c8cf9543cb64823e1aba55ce26ad` |
| 47 | `theorem` | [map_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-inl--3eea141e72bd2572798d9a67.md) | 301 | `result-track:3eea141e72bd2572798d9a670a882fe319c1d918147837f6c1991df8b6d5c1d8` |
| 48 | `theorem` | [map_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-comp-inl--8507aa833e6874845bc530d1.md) | 305 | `result-track:8507aa833e6874845bc530d198d627828c70acf795b4152a3562ec23b0ca0036` |
| 49 | `theorem` | [map_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-inr--491d8354e9092beeb09758e4.md) | 309 | `result-track:491d8354e9092beeb09758e48f5912f473e83a0b15d571eed05087a74eb513d6` |
| 50 | `theorem` | [map_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/declarations/map-comp-inr--4381c32bc81a9980287611f3.md) | 313 | `result-track:4381c32bc81a9980287611f3a60c5e298d5f02d05aad971973d17d7538d15485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
