# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "012dfcde951ee1cd637568ea888de7ece7c622cc",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `012dfcde951ee1cd637568ea888de7ece7c622cc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/absolutevalue--3cd83c7ce38b1cd3023d0884.md) | 32 | `declaration-track:3cd83c7ce38b1cd3023d0884c8560cffc80b4557fc9581d32c3f5753a2f57df4` |
| 2 | `instance` | [funLike](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/funlike--f94010da718f7c2857c36f35.md) | 51 | `declaration-track:f94010da718f7c2857c36f35ef916ae71968633990cc1ed5f6da0eaf389fbd63` |
| 3 | `instance` | [zeroHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/zerohomclass--b79695da5caacbec683b7b97.md) | 55 | `declaration-track:b79695da5caacbec683b7b979e72bd7ce0456767df6c81da1b7c8d547b1eeed8` |
| 4 | `instance` | [mulHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/mulhomclass--66d519bfc03140869a772381.md) | 58 | `declaration-track:66d519bfc03140869a7723814fbacca91365839874c58e249ddb8e92c7ec81c6` |
| 5 | `instance` | [nonnegHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/nonneghomclass--4034cec999c85397226b6c38.md) | 61 | `declaration-track:4034cec999c85397226b6c38646878d1933fbcf0f23a2ac6aa505f16388b4de4` |
| 6 | `instance` | [subadditiveHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/subadditivehomclass--f4e90622ab3e739182df9172.md) | 64 | `declaration-track:f4e90622ab3e739182df9172ea188490279d5b59e2377045d017612bb836bb2e` |
| 7 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/coe-mk--9dee25fcbda47455cd1db5af.md) | 68 | `result-track:9dee25fcbda47455cd1db5afe6aa0e93f1a437c11ec93ada6451236e1d50df83` |
| 8 | `theorem` | [ext](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/ext--39592ac74899ec05c2085abf.md) | 72 | `result-track:39592ac74899ec05c2085abf94913088ac26bac1681fc2436f0bb7a753b8094a` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/simps-apply--9d31cdbffde4ec157ed28c0d.md) | 76 | `declaration-track:9d31cdbffde4ec157ed28c0dd9c8df7beb9e8644819d1e4fd8d6304f83525eaf` |
| 10 | `theorem` | [coe_toMulHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/coe-tomulhom--57ad63377b358b522592c4e7.md) | 82 | `result-track:57ad63377b358b522592c4e74b1259578132ae991d2c54ea721b7b94dbed6e22` |
| 11 | `theorem` | [nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/nonneg--53dfaeb3e230c3d56ea45341.md) | 86 | `result-track:53dfaeb3e230c3d56ea4534122a768ce3afe8be90a23effdcb7699cb6eee5ad5` |
| 12 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/eq-zero--ac2bf3a0b00387eb35825aa1.md) | 90 | `result-track:ac2bf3a0b00387eb35825aa1adac34cdef80a96b288995fa4e72a86b0f6d4bfe` |
| 13 | `theorem` | [add_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/add-le--ccf5cdb63d5701ccaf96e4fb.md) | 94 | `result-track:ccf5cdb63d5701ccaf96e4fbbdf24daf6a933a0c8d6a77a3c8931f161f86ac91` |
| 14 | `lemma` | [listSum_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/listsum-le--87e99273c4c89a15a89e9e53.md) | 98 | `result-track:87e99273c4c89a15a89e9e53a7237140fb2848eb16df046143dbbff7167fafff` |
| 15 | `theorem` | [map_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-mul--b191faf88dff6752a5e2c96c.md) | 104 | `result-track:b191faf88dff6752a5e2c96c66e77753ed842bb27563ec4a4eb6d7c94dc30d5f` |
| 16 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/ne-zero-iff--bfa039c105dbfbe656f8fb65.md) | 107 | `result-track:bfa039c105dbfbe656f8fb65cdc7d3ab631ef836412cc45dbc5b4d503d25091c` |
| 17 | `theorem` | [pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/pos-iff--8ec460c297d412c32c927b39.md) | 112 | `result-track:8ec460c297d412c32c927b399e3b96b9530047636fc51ef258241cb992fb0ab8` |
| 18 | `theorem` | [map_one_of_isLeftRegular](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-one-of-isleftregular--444cb23f027744d7cef4f26e.md) | 116 | `result-track:444cb23f027744d7cef4f26e72c3ed6318b7d0637ba3306d7a031c075ce1b255` |
| 19 | `theorem` | [map_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-zero--d47898bb04c3b458602e0965.md) | 120 | `result-track:d47898bb04c3b458602e0965d8c9f32ae0b7bc6d68b36403cc393bf8aaf7b0e7` |
| 20 | `theorem` | [sub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/sub-le--96cd23655730a08376e421ea.md) | 129 | `result-track:96cd23655730a08376e421ea0990ea9c3afef8d33e48e77993d9db47c8baaa34` |
| 21 | `theorem` | [map_sub_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-sub-eq-zero-iff--59947fa222858fbf75bd3b85.md) | 133 | `result-track:59947fa222858fbf75bd3b85dac917946a55d458a9c0fa785dfa739840f0a554` |
| 22 | `theorem` | [map_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-one--c64c93d17ade73a9ce5c0d32.md) | 148 | `result-track:c64c93d17ade73a9ce5c0d32d1be9a6b4722b311aa2545893ef37508b2dc79ef` |
| 23 | `instance` | [monoidWithZeroHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/monoidwithzerohomclass--a3bbfc3f866f936bf0cc554d.md) | 151 | `declaration-track:a3bbfc3f866f936bf0cc554de1625e33af29aea88b055d19425f13f0b595b10e` |
| 24 | `def` | [toMonoidWithZeroHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/tomonoidwithzerohom--f7a4048962f7a01cb53b7d2c.md) | 157 | `declaration-track:f7a4048962f7a01cb53b7d2c05a7e5bfaa7033bf56424a8d72b2f93f9b80ed80` |
| 25 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/coe-tomonoidwithzerohom--185bfd0633c4f487333f3b91.md) | 161 | `result-track:185bfd0633c4f487333f3b91c775283146fb1c75633d446d9e8b0321359d4bfa` |
| 26 | `def` | [toMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/tomonoidhom--fc6b583e9ff6bfa4a5210ccc.md) | 165 | `declaration-track:fc6b583e9ff6bfa4a5210ccc96521574b42508762f9da1990a314c9715f657f3` |
| 27 | `theorem` | [coe_toMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/coe-tomonoidhom--8baf86b0575cbc53b06bf557.md) | 169 | `result-track:8baf86b0575cbc53b06bf557c4e98f32782680903ba9c67fba80de534d7cc724` |
| 28 | `theorem` | [map_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-pow--b78857bd7622ec0d7a0fbbea.md) | 173 | `result-track:b78857bd7622ec0d7a0fbbeafcd1781fbf639a320c1c5eff73fe04686fa72ffd` |
| 29 | `lemma` | [apply_nat_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/apply-nat-le-self--8dd81d722fd2eef34472ae58.md) | 178 | `result-track:8dd81d722fd2eef34472ae585d8ba5ddb6a265b57acfd71ee5bef60b03295e95` |
| 30 | `theorem` | [le_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/le-sub--7c59939cd83943c8990da57f.md) | 204 | `result-track:7c59939cd83943c8990da57f8b05083b781ca97d78fda4765c4078df89800508` |
| 31 | `theorem` | [map_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-neg--d5927b7e8d4fac10dada4810.md) | 217 | `result-track:d5927b7e8d4fac10dada481014946f6289fb51769496a1461ff2dc44e970f85f` |
| 32 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/map-sub--dc1c250c4992fb741be4ebf8.md) | 223 | `result-track:dc1c250c4992fb741be4ebf862a7798fadc9a4cfbef7b3c0e627a669111230ea` |
| 33 | `theorem` | [le_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/le-add--0581f553a0a55b10eb85d182.md) | 227 | `result-track:0581f553a0a55b10eb85d182ca57481541ea291119552a70c768149868dd1803` |
| 34 | `lemma` | [sub_le_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/sub-le-add--276c51b933017b9e49307e51.md) | 232 | `result-track:276c51b933017b9e49307e5104c019c812a1b174bcd3b97547be94d95a7e31a9` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/instance--372bfd5870cd01a787d79079.md) | 235 | `declaration-track:372bfd5870cd01a787d7907910d25c945033fd648581232bfc9e348f888f1599` |
| 36 | `lemma` | [apply_natAbs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/apply-natabs-eq--226c0ae28320ff5db4cb5439.md) | 242 | `result-track:226c0ae28320ff5db4cb5439993db5a915841795e0e94b25ecbb527e2f1649df` |
| 37 | `lemma` | [eq_on_nat_iff_eq_on_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/eq-on-nat-iff-eq-on-int--3f6213b472be490490b0f8d7.md) | 248 | `result-track:3f6213b472be490490b0f8d7d16dee27ecdfad5ea52fabeaf25897893116f2b9` |
| 38 | `def` | [abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abs--3355c4c958768537f96e96df.md) | 262 | `declaration-track:3355c4c958768537f96e96df58f445d3f3cc5b58915995f3358d4028adab3913` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/instance--82972fd39a60f2349b40ca2a.md) | 269 | `declaration-track:82972fd39a60f2349b40ca2ae7cd21687fd34a4d194520cb254b1aee7115efe9` |
| 40 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abs-abv-sub-le-abv-sub--ed7a4a00606b99b9b4fd8249.md) | 280 | `result-track:ed7a4a00606b99b9b4fd8249a4a0d2af0557be6be0c1081fd81e58e3eee7da0d` |
| 41 | `def` | [trivial](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/trivial--f7ef41451fff9b71d9b4dff3.md) | 292 | `declaration-track:f7ef41451fff9b71d9b4dff33cb9cba9c1724e107426c755be43d291105b2120` |
| 42 | `lemma` | [trivial_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/trivial-apply--9f43edbd6a45b0ca3355234a.md) | 311 | `result-track:9f43edbd6a45b0ca3355234add1c7a89b816351450cc6b6e75cacd6b319c1ce1` |
| 43 | `def` | [IsNontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/isnontrivial--a51b8a859d3b15b8f83c39ea.md) | 327 | `declaration-track:a51b8a859d3b15b8f83c39ea795efcbea59e85233dcef35a8672924c35556c16` |
| 44 | `lemma` | [isNontrivial_iff_ne_trivial](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/isnontrivial-iff-ne-trivial--15fb441c34600051dc2765d8.md) | 330 | `result-track:15fb441c34600051dc2765d806f0c02d8b6e2453e46597d108e5b38c7561a9ee` |
| 45 | `lemma` | [not_isNontrivial_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/not-isnontrivial-iff--2fc20e37730211d8155806a3.md) | 342 | `result-track:2fc20e37730211d8155806a3ccd7fb5024f1779fbc6d08754feb7476ea57ccd5` |
| 46 | `lemma` | [not_isNontrivial_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/not-isnontrivial-apply--d7dfed7826b18ec9511d34ac.md) | 350 | `result-track:d7dfed7826b18ec9511d34ac1b2357375009a957701c6cc72a6c1f8db4cb8762` |
| 47 | `lemma` | [IsNontrivial.exists_abv_gt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/isnontrivial-exists-abv-gt-one--cfc790057b362337632d3471.md) | 361 | `result-track:cfc790057b362337632d3471adfdf5cc97647d50fad1930e3e943ae2170b3b43` |
| 48 | `lemma` | [IsNontrivial.exists_abv_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/isnontrivial-exists-abv-lt-one--3cfc8363230b75b6a1a1de9d.md) | 369 | `result-track:3cfc8363230b75b6a1a1de9d9aac0f17f1023706cc7b4c5988a3cbd2ae74ddb8` |
| 49 | `class` | [IsAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/isabsolutevalue--ad32fb71b3fc190fe9fe3232.md) | 387 | `declaration-track:ad32fb71b3fc190fe9fe32326cf38c9253151faf5e6a8cc5413bd097f78630e5` |
| 50 | `lemma` | [abv_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-nonneg--d5e8fc4dfe8e0829747ac8ab.md) | 404 | `result-track:d5e8fc4dfe8e0829747ac8aba6e8e03fe240fa076f584004df53df0cdaacc276` |
| 51 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/mathlib-meta-positivity-evalabv--31fbc27912ef35f890278fb7.md) | 409 | `declaration-track:31fbc27912ef35f890278fb76e4eee92ed33aa580f33738b843275efb8c791e7` |
| 52 | `lemma` | [abv_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-eq-zero--924929bb46be92edb30c3f1b.md) | 414 | `result-track:924929bb46be92edb30c3f1b44b347f4284a2cc7f1fa2e35e4b70d9173150312` |
| 53 | `lemma` | [abv_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-add--b7636b18ef5930e94878a44a.md) | 416 | `result-track:b7636b18ef5930e94878a44af8024942434e4325a8f0c96c1c4e75a2d44b7fac` |
| 54 | `lemma` | [abv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-mul--755b2b9e9d0bbbbefaa755b2.md) | 418 | `result-track:755b2b9e9d0bbbbefaa755b2d46328732e6d6a2a2606181c15aeff73381f53f0` |
| 55 | `instance` | [_root_.AbsoluteValue.isAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/root-absolutevalue-isabsolutevalue--754eac49e003b5cadfced095.md) | 421 | `declaration-track:754eac49e003b5cadfced0952f91c9a69ccc020ad4caa2d7c84c2c7111e91af4` |
| 56 | `def` | [toAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/toabsolutevalue--c112f73e5a21bd2c3db611b6.md) | 429 | `declaration-track:c112f73e5a21bd2c3db611b6fcc26221bfa7e7e6389a3bf102c95cc4944e8432` |
| 57 | `theorem` | [abv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-zero--9a0c08570b532789f98e6876.md) | 436 | `result-track:9a0c08570b532789f98e6876dcd09de84171ec0f5f7d6ca9c4ec2a2fde404cdb` |
| 58 | `theorem` | [abv_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-pos--adc0eec70c38beca07246bf5.md) | 439 | `result-track:adc0eec70c38beca07246bf5a7b521ea87b6ad6deddba13f1ddfa678d1dda9ba` |
| 59 | `instance` | [abs_isAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abs-isabsolutevalue--d6f2544e263fb078ed528a01.md) | 448 | `declaration-track:d6f2544e263fb078ed528a01b357e53ea3f82501e15dda4e6608b1ef9f9b15b3` |
| 60 | `theorem` | [abv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-one--f7f1ce3ba9f88d511c68bb86.md) | 462 | `result-track:f7f1ce3ba9f88d511c68bb86a7660b314ee98cbfff143f5d959f439d7ec19e9b` |
| 61 | `def` | [abvHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abvhom--2f9f95a6d43b3d6c731c257c.md) | 466 | `declaration-track:2f9f95a6d43b3d6c731c257c2611a562c3570e30760aacf9827bb73fc5903656` |
| 62 | `theorem` | [abv_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-pow--64de6b7ac70847c7c9c8167e.md) | 469 | `result-track:64de6b7ac70847c7c9c8167ed5d255f2d7d362748fd8511b6fde8a6bc39ddcb0` |
| 63 | `theorem` | [abv_sub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-sub-le--cba500d5d8d5a97be64b95e7.md) | 479 | `result-track:cba500d5d8d5a97be64b95e737e4de1a1f400285bfe9185f29e1d862930bf372` |
| 64 | `theorem` | [sub_abv_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/sub-abv-le-abv-sub--fe186f18fb452141ada0c080.md) | 482 | `result-track:fe186f18fb452141ada0c0805778df437e8425b9eb18a5a80811d83648fa99ac` |
| 65 | `theorem` | [abv_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-neg--90646263ce27fd649849bb1d.md) | 493 | `result-track:90646263ce27fd649849bb1de76f88610569901c45ed8d7a5b94c224193a33bf` |
| 66 | `theorem` | [abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-sub--096a66aa96b61db96a71dc93.md) | 496 | `result-track:096a66aa96b61db96a71dc932efa614b54021c39ce0c70d73ed30b20c51b4f46` |
| 67 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abs-abv-sub-le-abv-sub--36b8ba1c30e761c81f22368a.md) | 509 | `result-track:36b8ba1c30e761c81f22368a08be5a2413f71cf68c262ccd386586d9ba4b259e` |
| 68 | `theorem` | [abv_one'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-one--2d0d602373e8746093955e4e.md) | 525 | `result-track:2d0d602373e8746093955e4e0add365849eef7515beef67e0f0c60a9206d7ed8` |
| 69 | `def` | [abvHom'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abvhom--5b0793e5f5f64911419351da.md) | 530 | `declaration-track:5b0793e5f5f64911419351daf1d3adb6fe587395bd676800fca7a3984fe2525d` |
| 70 | `theorem` | [abv_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-inv--aa56c59152d7a8565e06be12.md) | 545 | `result-track:aa56c59152d7a8565e06be1299099c0281e7c568a5e4948219e2ca959b240b9e` |
| 71 | `theorem` | [abv_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/declarations/abv-div--205a92b1ace5dcba8e5adc2d.md) | 548 | `result-track:205a92b1ace5dcba8e5adc2d258cc9ff29c6674de4541d381c413e59f00860ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
