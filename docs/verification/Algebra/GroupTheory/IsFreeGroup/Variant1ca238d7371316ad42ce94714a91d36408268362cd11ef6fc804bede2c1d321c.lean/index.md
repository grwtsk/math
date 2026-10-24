# Verification target: GRWTSK.Algebra.GroupTheory.IsFreeGroup.Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f817fc47ec7ed9c6dd2d87041bd101da8e7404c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f817fc47ec7ed9c6dd2d87041bd101da8e7404c`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FreeGroupBasis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/freegroupbasis--8a3a5ba08f05525fd5d41412.md) | 59 | `declaration-track:8a3a5ba08f05525fd5d4141290db7ea07e4dc9968dad5bfb632fe51dc83f5d7b` |
| 2 | `class` | [IsFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/isfreegroup--0e5ba72c79fa2bc8910fcb1a.md) | 68 | `declaration-track:0e5ba72c79fa2bc8910fcb1a8e59fc6be82f993d7a8ffca90afe6a6f211536a3` |
| 3 | `instance` | [instFunLike](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/instfunlike--7de2d9f208c541f133e716d3.md) | 77 | `declaration-track:7de2d9f208c541f133e716d3ccea6d170b0d0cf36d12b0018ca8a65bad66f50b` |
| 4 | `lemma` | [repr_apply_coe](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/repr-apply-coe--3bdac710b6bbe81c0ffec17a.md) | 86 | `result-track:3bdac710b6bbe81c0ffec17ac0fc328dc1f6e523c7951dba543213d59668f38f` |
| 5 | `def` | [ofFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/offreegroup--b0fe24ffa9fddc796a47480e.md) | 91 | `declaration-track:b0fe24ffa9fddc796a47480e1b278ed21d083fc6f23b6e8091459517004547f9` |
| 6 | `lemma` | [ofFreeGroup_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/offreegroup-apply--842fe3b957e23d130ddab821.md) | 93 | `result-track:842fe3b957e23d130ddab821abee169d82b9fc54b2c3b32a4baeee86563e7430` |
| 7 | `def` | [reindex](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/reindex--82b1c8c23e6b9e0c4521d688.md) | 98 | `declaration-track:82b1c8c23e6b9e0c4521d688fc888254e4b49d6c7ac2f7b231e4d2bcea3bce27` |
| 8 | `lemma` | [reindex_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/reindex-apply--c75dd00cdf2df5856aa9ab10.md) | 101 | `result-track:c75dd00cdf2df5856aa9ab10835fa1e5419221314484dc20aaafdded8257c7a1` |
| 9 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/map--010ea447ac69e200fc75b1f7.md) | 105 | `declaration-track:010ea447ac69e200fc75b1f757b417c9767880159c9ec4b3a1d731d67054e29a` |
| 10 | `lemma` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/map-apply--6510a5e3a864d8680df5ffe5.md) | 108 | `result-track:6510a5e3a864d8680df5ffe5fe796cdac4416c5c997e6b3f173acf40367c16c8` |
| 11 | `lemma` | [injective](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/injective--cf1a46a6fb5fefaf33ac1c6c.md) | 111 | `result-track:cf1a46a6fb5fefaf33ac1c6c420235c858f6deea36b56f6122828a0478dbec88` |
| 12 | `lemma` | [isFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/isfreegroup--d5a9dbc0823428283e68b480.md) | 115 | `result-track:d5a9dbc0823428283e68b4809ec7f22697550e83718d1e3a6ea31e8fea0d01da` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/instance--b87c1d445185746421516c3a.md) | 118 | `declaration-track:b87c1d445185746421516c3a85c36f3898818446fe18d0c6ce2f2543b96a2566` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/lift--039ce76c73ffd2ead3470769.md) | 124 | `declaration-track:039ce76c73ffd2ead3470769828996d6b46c040d059f8c404fefd7353e06afcc` |
| 15 | `lemma` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/ext-hom--f72e8f52211d9a636af6d197.md) | 136 | `result-track:f72e8f52211d9a636af6d19783a06e8910cf04293005e30501f5f1c5af313291` |
| 16 | `def` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/oflift--8aa5443b4654cc77bf9514c2.md) | 142 | `declaration-track:8aa5443b4654cc77bf9514c297fbfd9725a1bebb0666be32d008939b6b6bed2d` |
| 17 | `def` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/ofuniquelift--d264cd7cc099ec91275857bc.md) | 161 | `declaration-track:d264cd7cc099ec91275857bccb4999843c338c9da0f0aae25ddc8652cb3d1977` |
| 18 | `def` | [Generators](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/generators--262a4b46f43f7abdf1546662.md) | 180 | `declaration-track:262a4b46f43f7abdf1546662d865e456a75f3f427ac7482fa496ff9431fc7d16` |
| 19 | `def` | [basis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/basis--e815f16b11fb720e0b7084e1.md) | 187 | `declaration-track:e815f16b11fb720e0b7084e179c6689d25d4530223e57f0bea516c169716501b` |
| 20 | `def` | [toFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/tofreegroup--1db0763796a1c7571b369b41.md) | 191 | `declaration-track:1db0763796a1c7571b369b41d43e16293d43aa9d52a855a4c53ea3be85792055` |
| 21 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/of--55253aee08eacd53cfbed898.md) | 197 | `declaration-track:55253aee08eacd53cfbed898b4e3683c46e011afd918e66cbf8f141e654f03db` |
| 22 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/lift--0ba3bc8df9a293547d94d165.md) | 204 | `declaration-track:0ba3bc8df9a293547d94d16535e27e73f687c9d51f8f3ffd38dfef99c54f3006` |
| 23 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/lift-of--beea56570dd39df3d67267e2.md) | 208 | `result-track:beea56570dd39df3d67267e261d1166f05b69c4bc0099648ab4d4fd82d24b551` |
| 24 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/lift-symm-apply--0cec252456640b6ce3161bb8.md) | 212 | `result-track:0cec252456640b6ce3161bb8b165fa3bdf1e6b3a6149c0d25ad9ccec092aab70` |
| 25 | `theorem` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/ext-hom--719ac4aa121de0fbc169d44d.md) | 216 | `result-track:719ac4aa121de0fbc169d44d3b42b0343faea65687bbd2ff83ca03ed580d558c` |
| 26 | `theorem` | [unique_lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/unique-lift--8ab1d1a74cf75baefed3845f.md) | 224 | `result-track:8ab1d1a74cf75baefed3845f542503c56b14cf6dc0538cca2cf2b7fc7d9cd448` |
| 27 | `lemma` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/oflift--5468833271030f7706566b1d.md) | 230 | `result-track:5468833271030f7706566b1d2ea9d852d27b776217a72af9739d56246f474578` |
| 28 | `lemma` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/ofuniquelift--7cf0df101d06bb76811ed352.md) | 238 | `result-track:7cf0df101d06bb76811ed352f694dad1897cadd0fa2875f2cd453e271e986d0a` |
| 29 | `lemma` | [ofMulEquiv](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/declarations/ofmulequiv--b613d2400a35e91fd040dbd4.md) | 243 | `result-track:b613d2400a35e91fd040dbd49579bf65ebafd742e2925deb003dbbdded576b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
