# Verification target: GRWTSK.Algebra.GroupTheory.Abelianization.Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fec29de433e523098c9cce8afe6ef4a668287ec6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fec29de433e523098c9cce8afe6ef4a668287ec6`.

Source path: `GRWTSK/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commutator](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator--9eb9d38d4aa2ff033aeb2584.md) | 39 | `declaration-track:9eb9d38d4aa2ff033aeb2584af3b19992e673f20536e5d3265b9c6705be93f80` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--01bf4207908bb48318a84606.md) | 43 | `declaration-track:01bf4207908bb48318a84606c5c515d8348a381761c840ccab4b12bc2ac765e4` |
| 3 | `theorem` | [commutator_def](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-def--25ecb2a06422617b881c4efa.md) | 45 | `result-track:25ecb2a06422617b881c4efa0f2d7f08f3bfa640921f79a4a68f77d7792f5957` |
| 4 | `theorem` | [commutator_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-eq-closure--9a8242f79044ee0ac066c860.md) | 48 | `result-track:9a8242f79044ee0ac066c86097117592a270d01659e48fd999d7738077d10fa3` |
| 5 | `theorem` | [commutator_eq_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-eq-normalclosure--25c0bc2a49877019e106ddec.md) | 51 | `result-track:25c0bc2a49877019e106ddece27be65d42c787ac34d4a98c5f9b418735a0b23e` |
| 6 | `theorem` | [Subgroup.map_subtype_commutator](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/subgroup-map-subtype-commutator--d0fe41f9d70dc41bd172e1f8.md) | 55 | `result-track:d0fe41f9d70dc41bd172e1f86f24aadfeb28ece8071647b8689d32e25e1d2a43` |
| 7 | `instance` | [commutator_characteristic](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-characteristic--b93da6282433bdbe6c12e453.md) | 59 | `declaration-track:b93da6282433bdbe6c12e45334c7dda62676f7d84be46f5917f61c3daa60f7e0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--908ddb84a90cb0603ce2d8e2.md) | 62 | `declaration-track:908ddb84a90cb0603ce2d8e20977f039f559c99f3e60dc4528dcaaa6bf38bc6e` |
| 9 | `theorem` | [rank_commutator_le_card](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/rank-commutator-le-card--3ff43c0be2dfd77765ef9a7b.md) | 66 | `result-track:3ff43c0be2dfd77765ef9a7b508ca63850f63d10099233d5814ef5a369c86ebe` |
| 10 | `theorem` | [commutator_centralizer_commutator_le_center](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-centralizer-commutator-le-center--589d76606e4e24d9aaff1f55.md) | 71 | `result-track:589d76606e4e24d9aaff1f552e17306c0e1e4cd6078e8a6b181bcbacfd434f63` |
| 11 | `theorem` | [mem_commutatorSet_of_isConj_sq](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/mem-commutatorset-of-isconj-sq--1a9712c0c65a9b58c2e85b43.md) | 82 | `result-track:1a9712c0c65a9b58c2e85b43eca2ca40fbe24b228567a708d461fa6907845e2e` |
| 12 | `theorem` | [map_commutator_eq](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map-commutator-eq--7d8d18c917d6562b5eb92f63.md) | 89 | `result-track:7d8d18c917d6562b5eb92f63dd94d3646420780cfde5320682dead6d021a70f6` |
| 13 | `def` | [Abelianization](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianization--c1c95e01386219eef55188a2.md) | 97 | `declaration-track:c1c95e01386219eef55188a23e51e555d6932bcd6d806ee89a68cb6aed0a1d32` |
| 14 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commgroup--286e7c1539e272829714b992.md) | 104 | `declaration-track:286e7c1539e272829714b99211ec777521f964af7c5bf72af849859fbd2d1538` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--e2eee90ae2871742243becb6.md) | 112 | `declaration-track:e2eee90ae2871742243becb6e6725c47293992d3efa603da1c0a4ec4900e1bad` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--55607c1709f4cdd1e2111919.md) | 115 | `declaration-track:55607c1709f4cdd1e21119193098e624888b79a64674ab02c2c932ef82d40bf9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--5820c46fa8a90282b0f742bd.md) | 117 | `declaration-track:5820c46fa8a90282b0f742bd2c5d311233671ae645592e3478ca992a22ea6377` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--ef466902bd34741e8497cc14.md) | 120 | `declaration-track:ef466902bd34741e8497cc14c49b33269e1330ac6f587bbd8c4810f786631cd9` |
| 19 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/of--df2a5625c56171e3d8bb51f4.md) | 126 | `declaration-track:df2a5625c56171e3d8bb51f4463ab52581eee42b44b53c821a27937bf83aeff8` |
| 20 | `theorem` | [mk_eq_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/mk-eq-of--77cccbe042beb1cc9e45b42a.md) | 132 | `result-track:77cccbe042beb1cc9e45b42afc159f81030f7059f4d5b085387597209548d982` |
| 21 | `theorem` | [ker_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/ker-of--c0d2563555db1f00be9ad568.md) | 137 | `result-track:c0d2563555db1f00be9ad5682d6b87823e679185662f32ff9d922649cc4c43a4` |
| 22 | `theorem` | [commutator_subset_ker](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutator-subset-ker--7b792e5dfc27fb14f3765bcd.md) | 147 | `result-track:7b792e5dfc27fb14f3765bcd4dd8087f991a6379139ea8902bc7904cd9c3ed78` |
| 23 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/lift--557a2941b22d15537f13cae9.md) | 154 | `declaration-track:557a2941b22d15537f13cae9a242903c010ee6dde6874b39c6a4d37d4637ccb2` |
| 24 | `theorem` | [lift.of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/lift-of--74214b2e0c7090e138a1afeb.md) | 161 | `result-track:74214b2e0c7090e138a1afebdbb9ef62d2833506f4fd9ca4a2c2c840b49396a8` |
| 25 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/lift-unique--c49532ab376a91a173c0a7a6.md) | 164 | `result-track:c49532ab376a91a173c0a7a65980e2fb9cdf34b4ed93749041feda15d68a0262` |
| 26 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/lift-of--3da66e4a0f15f7c7372be6fb.md) | 171 | `result-track:3da66e4a0f15f7c7372be6fb77e86ad82b3994373569bb48d110ca9df03001e4` |
| 27 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/hom-ext--deb56f22a3f79e5924931259.md) | 180 | `result-track:deb56f22a3f79e592493125925b7ed370734c12a0d6abdbdf0ad45c1613019ae` |
| 28 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map--f5fed90b5fbbfbacde977997.md) | 188 | `declaration-track:f5fed90b5fbbfbacde977997c56fae19b5ef9be3a4ddda64dfbe10b4a7183ffc` |
| 29 | `theorem` | [lift_of_comp](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/lift-of-comp--099af338799dcd8829507919.md) | 192 | `result-track:099af338799dcd8829507919fe81525f245d3c98d8107c77224c28587162ca58` |
| 30 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map-of--7ff1554623b1d5c7a7e6b6fc.md) | 196 | `result-track:7ff1554623b1d5c7a7e6b6fc4b08fcc83f872f315d5c7c2773ac4b215021d3b0` |
| 31 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map-id--1868bcb499ba780583960bfa.md) | 200 | `result-track:1868bcb499ba780583960bfa9ae620871c32e77074adbd3c9d845f3af90774c5` |
| 32 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map-comp--94bbb8148b27f67f0911537e.md) | 204 | `result-track:94bbb8148b27f67f0911537e6aded803e2fc7e2ad4d1d44197564a754cb36423` |
| 33 | `theorem` | [map_map_apply](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/map-map-apply--9d8762289bf0b6069126e9f4.md) | 208 | `result-track:9d8762289bf0b6069126e9f4e4e32624ebc3a0cbc53e03fa4b99ae9acbf933b1` |
| 34 | `def` | [MulEquiv.abelianizationCongr](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/mulequiv-abelianizationcongr--eaea9520b9097d8469cd254b.md) | 222 | `declaration-track:eaea9520b9097d8469cd254b6d0d512410d9c98dd99f0f8763d38f28559eaf68` |
| 35 | `theorem` | [abelianizationCongr_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianizationcongr-of--2dd4347db773f3c561b28ff6.md) | 234 | `result-track:2dd4347db773f3c561b28ff65a855774361668081d64353c62cfcf98cfc030ec` |
| 36 | `theorem` | [abelianizationCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianizationcongr-refl--89bed12505f5b91376fc55b9.md) | 239 | `result-track:89bed12505f5b91376fc55b9f3dc1bda8ae20df51485a4ea508977b46c1d4a1d` |
| 37 | `theorem` | [abelianizationCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianizationcongr-symm--1f3168083f95f2b7c634c83e.md) | 244 | `result-track:1f3168083f95f2b7c634c83e7c7a736310847f230adec2550ce8ba35d8077c8b` |
| 38 | `theorem` | [abelianizationCongr_trans](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianizationcongr-trans--80f82e145a36d754cf56d2d1.md) | 249 | `result-track:80f82e145a36d754cf56d2d19a54ef928f46d59b76031b9a2d0c59473d7f63b0` |
| 39 | `def` | [Abelianization.equivOfComm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/abelianization-equivofcomm--31f93a887fefcf1d1cfa5fb5.md) | 257 | `declaration-track:31f93a887fefcf1d1cfa5fb5ae35127cf9eba8a77e0482a6eb902c7d27d69f65` |
| 40 | `def` | [commutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/commutatorrepresentatives--7862dd59abb7cc7cb62664b5.md) | 271 | `declaration-track:7862dd59abb7cc7cb62664b5b595e47242d25d5071101d599762aa87a00f71db` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--d5c65b0f259663899bfa6d45.md) | 274 | `declaration-track:d5c65b0f259663899bfa6d455e5323d0be2e4a8e9cf6c75aa76af6f33076a5d4` |
| 42 | `def` | [closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/closurecommutatorrepresentatives--004daf7262ad0c41c602bf00.md) | 278 | `declaration-track:004daf7262ad0c41c602bf000a7c1b03b5938e24f3318c5390fed24353cdb0de` |
| 43 | `instance` | [closureCommutatorRepresentatives_fg](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/closurecommutatorrepresentatives-fg--ae0d8ba7600116bbfa7e3015.md) | 281 | `declaration-track:ae0d8ba7600116bbfa7e301575f0b12dc5bbebf363f3c91f7f56a79a4b165c02` |
| 44 | `theorem` | [rank_closureCommutatorRepresentatives_le](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/rank-closurecommutatorrepresentatives-le--b307092ff49b8b2a39356d99.md) | 285 | `result-track:b307092ff49b8b2a39356d9934cd07addd15589c20373e698c45fe4a1bfb038e` |
| 45 | `theorem` | [image_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/image-commutatorset-closurecommutatorrepresentatives--03e0686a3584136869a00f05.md) | 294 | `result-track:03e0686a3584136869a00f055c5a605046e7b80f2d1bcec0813f1fca10a55e71` |
| 46 | `theorem` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/card-commutatorset-closurecommutatorrepresentatives--4ed0c8ecbd551885a7024e0b.md) | 307 | `result-track:4ed0c8ecbd551885a7024e0b4e5eb0dbbc07c31b692a645fdd09105ebacdbe85` |
| 47 | `theorem` | [card_commutator_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/card-commutator-closurecommutatorrepresentatives--ac14ace8799ea7d08ee2fbc5.md) | 312 | `result-track:ac14ace8799ea7d08ee2fbc538aa447cb16f3b5fc1c34072b24020f6dce098fd` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/instance--9aad1e30fb8e2466fb65d193.md) | 318 | `declaration-track:9aad1e30fb8e2466fb65d1932b2825c27a7435181f77fdaa531f7e2940943ee4` |
| 49 | `theorem` | [Subgroup.Normal.quotient_commutative_iff_commutator_le](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/subgroup-normal-quotient-commutative-iff-commutator-le--cdb93120cda79ecea4fa5901.md) | 330 | `result-track:cdb93120cda79ecea4fa5901f405b595f24d2c250cac1e04413f084fb6103d0d` |
| 50 | `theorem` | [Subgroup.Normal.commutator_le_of_self_sup_commutative_eq_top](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variant16cbabc9655926891db58c53a880242fbce962c7db7255dc425dfec8e7f8822b.lean/declarations/subgroup-normal-commutator-le-of-self-sup-commutative-eq-top--a151fc3331a06350399b560f.md) | 354 | `result-track:a151fc3331a06350399b560f7ecbd631190e9c1ad3758bebea2463fdffefd6f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
