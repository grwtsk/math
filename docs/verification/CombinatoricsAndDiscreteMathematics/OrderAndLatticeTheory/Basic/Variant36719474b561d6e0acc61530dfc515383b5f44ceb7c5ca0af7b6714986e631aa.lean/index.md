# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5eba9081fa82525912aa3c2c3fa107120e58eda",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5eba9081fa82525912aa3c2c3fa107120e58eda`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Monotonicity.Attr` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SetLike` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/setlike--72099c48c190afd34132e456.md) | 104 | `declaration-track:72099c48c190afd34132e45650cebe4fe70f632dc009e807e52ed222c521650b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instance--41fbf0dbb56d45f0d54ad0d5.md) | 115 | `declaration-track:41fbf0dbb56d45f0d54ad0d5be94c33230163a511ce53a3b1118b22a0d1ce598` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instance--5b0848829fc39d990eab133e.md) | 117 | `declaration-track:5b0848829fc39d990eab133ed69aa9e66dd1b59c77fbc2c43d2c915c0481cc4f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instance--e4d07196f59452baa2c9c407.md) | 120 | `declaration-track:e4d07196f59452baa2c9c407d93cd39a23a7b3c06e41a162e4668986187f5da5` |
| 5 | `def` | [delabSubtypeSetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/delabsubtypesetlike--094d898ac140e845ff579990.md) | 130 | `declaration-track:094d898ac140e845ff5799905f4c93f946cac78c94bb54f350a48e393fe3e523` |
| 6 | `theorem` | [coe_sort_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-sort-coe--15b02bd614b97f954676f0d3.md) | 143 | `result-track:15b02bd614b97f954676f0d362c55f60c9cc685b704f0184f0469a56a8ef1f34` |
| 7 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/exists--8315763bd9b074340df2fa3e.md) | 148 | `result-track:8315763bd9b074340df2fa3e2fa79c1aac1e95dc1a778d124acef7b9e39ee7c4` |
| 8 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/forall--7dec7e4789ed47e41267034c.md) | 151 | `result-track:7dec7e4789ed47e41267034c74e317828768afceda1e5f2bd87619eaa9d544de` |
| 9 | `theorem` | [coe_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-injective--df2eaa8399236ed94079e5d7.md) | 154 | `result-track:df2eaa8399236ed94079e5d7f38a71fa93d005a7d58de087ca11ea0f2177ba0c` |
| 10 | `theorem` | [coe_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-set-eq--fac77026911e42f787229766.md) | 158 | `result-track:fac77026911e42f787229766c694536353d0111600a6bd594953bf467a430183` |
| 11 | `lemma` | [coe_ne_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-ne-coe--70efa7a63fff5b714bce9216.md) | 161 | `result-track:70efa7a63fff5b714bce921652d74fe199afb470a0e596bdb28aa29c5c2116ca` |
| 12 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/ext--0d379e2e035b7b9a62ff0c24.md) | 163 | `result-track:0d379e2e035b7b9a62ff0c24a176c8a20f622002958d3c584ed4103e73e214ec` |
| 13 | `theorem` | [ext'_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/ext-iff--df9ac56daee882a5f9782dc9.md) | 166 | `result-track:df9ac56daee882a5f9782dc979154bb3734142a79cf08a1d50f2b10344c6a138` |
| 14 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/ext--76c66558541b249ab4a0fecc.md) | 170 | `result-track:76c66558541b249ab4a0fecc9fc3b6188985665391705549e8566a519a37d52e` |
| 15 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/ext-iff--f6575fc734f0357fb46360cc.md) | 173 | `result-track:f6575fc734f0357fb46360cc28159b832657452cc38b7a45ea0adb20b0aab8aa` |
| 16 | `theorem` | [mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/mem-coe--69f25ca64ad08d6c846d7f12.md) | 177 | `result-track:69f25ca64ad08d6c846d7f1202fc1298074c7de60566dd0ca356ca8ac19d5cf7` |
| 17 | `theorem` | [coe_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-eq-coe--b4d07f5c6b6007eaff61b536.md) | 181 | `result-track:b4d07f5c6b6007eaff61b53670347a40c308d53ba1a98f6cfd3b8924404947ad` |
| 18 | `theorem` | [coe_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-mem--64562b1ae8a8278a30009a88.md) | 185 | `result-track:64562b1ae8a8278a30009a8826767f7054e087f4c28382da53b06d70c3a547ed` |
| 19 | `lemma` | [mem_of_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/mem-of-subset--4280d0c15da30b2dfc1b8159.md) | 189 | `result-track:4280d0c15da30b2dfc1b81598a2b2f14de124ff6a8cdcaf1f1ec51cc33238c17` |
| 20 | `theorem` | [eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/eta--977ec7f11d75f45f0cb49070.md) | 192 | `result-track:977ec7f11d75f45f0cb49070ce47e62dcb7c4d8a63bc15b005b98c129c4ba53b` |
| 21 | `lemma` | [setOf_mem_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/setof-mem-eq--d92655b7e598d3d551ee12d0.md) | 194 | `result-track:d92655b7e598d3d551ee12d039cbdd7de264be51667ab54f4b1028df1132b539` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instance--b37b1e9f96037d21ca3af935.md) | 196 | `declaration-track:b37b1e9f96037d21ca3af93579880bf99e8303828fc84d5e1c896be7e2e62d3f` |
| 23 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/le-def--506420acfbddc2dfeef97523.md) | 200 | `result-track:506420acfbddc2dfeef975236ae130c14a7950e9f47ea8cb2055f378cdac38b7` |
| 24 | `lemma` | [coe_subset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-subset-coe--b7e98c2ef93e7229ea72a17f.md) | 203 | `result-track:b7e98c2ef93e7229ea72a17f9eeabe26a862d2865b4610face1f95f83416809b` |
| 25 | `lemma` | [coe_ssubset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-ssubset-coe--f3d516a4b4c3c3d7beb1c679.md) | 204 | `result-track:f3d516a4b4c3c3d7beb1c6790c7be220cdde787c3bc872c177d7ae92b60ac02e` |
| 26 | `theorem` | [coe_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-mono--c85dfb7ba95892881a87643a.md) | 210 | `result-track:c85dfb7ba95892881a87643ac5ed05b6cb141c53eb6d11c0909a12d18078da80` |
| 27 | `theorem` | [coe_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/coe-strictmono--be773341d9ee1b05f28099aa.md) | 213 | `result-track:be773341d9ee1b05f28099aa6dfab00f0cdc6d7dd5a48749dc43ca3ff2e0128e` |
| 28 | `theorem` | [not_le_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/not-le-iff-exists--751e9986ef6c40e3c17b8157.md) | 215 | `result-track:751e9986ef6c40e3c17b81576980740b89d1eaa03b8d323a8b1444670e349d33` |
| 29 | `theorem` | [exists_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/exists-of-lt--20ae59d75ad25ff3d6aa70cb.md) | 218 | `result-track:20ae59d75ad25ff3d6aa70cba18ea535d197a0a0f5a5b67e0bdb24a3a31de7f7` |
| 30 | `theorem` | [lt_iff_le_and_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/lt-iff-le-and-exists--2f47bbc2ce8f14624d983fb2.md) | 221 | `result-track:2f47bbc2ce8f14624d983fb27716b3aaa35e06eec27c302aab369b7973ff6fd4` |
| 31 | `abbrev` | [instSubtypeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instsubtypeset--55efc5ff37cfc2fdbdb27e96.md) | 225 | `declaration-track:55efc5ff37cfc2fdbdb27e968c436744ab87f9c42d627aafb9d5a4f2d8767c04` |
| 32 | `abbrev` | [instSubtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/instsubtype--a753ea4c7b49a886fefda218.md) | 230 | `declaration-track:a753ea4c7b49a886fefda21814f67269540cee267f9d5abdd1dd571402dde48c` |
| 33 | `lemma` | [mem_mk_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/mem-mk-set--9b0be7db7c2fed6fb0a811f0.md) | 238 | `result-track:9b0be7db7c2fed6fb0a811f0e29688a00c2889201be1d2a3439b1522da06fb22` |
| 34 | `lemma` | [mem_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36719474b561d6e0acc61530dfc515383b5f44ceb7c5ca0af7b6714986e631aa.lean/declarations/mem-mk--7044604a19b5ec6d5c219cd3.md) | 241 | `result-track:7044604a19b5ec6d5c219cd319bc686960a9acf6ac2e8dc9a51ad521dbe654de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
