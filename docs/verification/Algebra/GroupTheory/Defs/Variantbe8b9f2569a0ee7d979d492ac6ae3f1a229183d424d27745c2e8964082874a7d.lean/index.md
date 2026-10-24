# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0baf38335c6d6d4b6421419c7bc3ad702e409ce",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0baf38335c6d6d4b6421419c7bc3ad702e409ce`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddGroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/addgroupextension--75a77f10c8ffd2f3b1345331.md) | 64 | `declaration-track:75a77f10c8ffd2f3b1345331cbaa8596a12e5bc963e4f8315abbd47f3aa1a145` |
| 2 | `structure` | [GroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/groupextension--16d8d9255b67e018a79b2cc7.md) | 78 | `declaration-track:16d8d9255b67e018a79b2cc7b377de3a62e6f3a1ec720bb81bb6c94a10a46e17` |
| 3 | `structure` | [Equiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/equiv--b22c0e86a43479de4d6369e7.md) | 99 | `declaration-track:b22c0e86a43479de4d6369e75f85ec5dbb5876aacf4e1fffdc28def8813f95d8` |
| 4 | `structure` | [Section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/section--68d7b90106576a17de3dda08.md) | 106 | `declaration-track:68d7b90106576a17de3dda08716621dd97abf48450b5f5b8e0c48c0d24987a7d` |
| 5 | `structure` | [Splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/splitting--5c629a7882bc6cd02e0b1e81.md) | 113 | `declaration-track:5c629a7882bc6cd02e0b1e8109ea7fa34d1af26a8fce1a9fceaa096da1f67f32` |
| 6 | `instance` | [normal_inl_range](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/normal-inl-range--2c14e10ac4fc826c3d757309.md) | 126 | `declaration-track:2c14e10ac4fc826c3d7573099d84606e76ff882ccc4c495e33aae568490732e8` |
| 7 | `theorem` | [rightHom_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-inl--069d0566512986fe2d5ae754.md) | 130 | `result-track:069d0566512986fe2d5ae754605214af9d9fe34b8eaea74ec6f44d7b36c96ab9` |
| 8 | `theorem` | [rightHom_comp_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-comp-inl--ce22453d4c728d8adeb70186.md) | 135 | `result-track:ce22453d4c728d8adeb70186e8124cd6559242dfeea60258f8370444b84cef7d` |
| 9 | `def` | [conjAct](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/conjact--2971e7aa81fb69b4faf33ef5.md) | 141 | `declaration-track:2971e7aa81fb69b4faf33ef511be14a9e7541d8853c9e28809b8a93e6f08ab00` |
| 10 | `theorem` | [inl_conjAct_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/inl-conjact-comm--272b4332feaaa1d20fa1d71a.md) | 152 | `result-track:272b4332feaaa1d20fa1d71a98c9b16a8575d3f2c78edda9c5cd50f49ad1ec52` |
| 11 | `structure` | [Equiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/equiv--d7cde47478fad3b2ced2a586.md) | 160 | `declaration-track:d7cde47478fad3b2ced2a58695f886034e578045691b1b289dfcd81f9452b3e3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/instance--ef0776a7d076943262f7aef2.md) | 172 | `declaration-track:ef0776a7d076943262f7aef23ae4ffd4de9d0169bc5a523d64f400a428cbef9a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/instance--dcab67230a182b53e151d330.md) | 183 | `declaration-track:dcab67230a182b53e151d3302ebd0d116e7d641a7014a4b7139d6fcc26a32457` |
| 14 | `theorem` | [toMulEquiv_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/tomulequiv-eq-coe--ee5a8b437ec7a91005dec8d9.md) | 189 | `result-track:ee5a8b437ec7a91005dec8d969ec33abb6451b0335034030e022ec7525d9ebaa` |
| 15 | `theorem` | [coe_toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/coe-tomulequiv--dc6150cc613560527c41ac6e.md) | 192 | `result-track:dc6150cc613560527c41ac6e68b1e3867b86ec1013636e17bb245276ede8d559` |
| 16 | `theorem` | [map_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/map-inl--9dedfff45a8cceca8aa5c78a.md) | 195 | `result-track:9dedfff45a8cceca8aa5c78a30c8f7f1e7e54085e9b4c32ed65e61511aef5253` |
| 17 | `theorem` | [rightHom_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-map--3ffa4c213e600874dcc0c22a.md) | 198 | `result-track:3ffa4c213e600874dcc0c22aeee4145ca23841b7b71d620867a620c031e06153` |
| 18 | `def` | [symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/symm--c6779ea1b808405ed78d8d29.md) | 203 | `declaration-track:c6779ea1b808405ed78d8d293ed10afc980fb4667df9dca404e7e71a22682805` |
| 19 | `def` | [Simps.symm_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/simps-symm-apply--be76c7d2c21e67e8a53c1de8.md) | 210 | `declaration-track:be76c7d2c21e67e8a53c1de8d10475e0a8d669b80e7909360f7dda5813165385` |
| 20 | `theorem` | [coe_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/coe-symm--d8aab7a2f43e7a2bedd70232.md) | 213 | `result-track:d8aab7a2f43e7a2bedd70232079ee1974ae91852baf733889f6237e2c5ec4b2c` |
| 21 | `def` | [trans](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/trans--a47eb44a77fcc129495021f9.md) | 226 | `declaration-track:a47eb44a77fcc129495021f91e85c471f27389bd065daf2e75fbe2f8626610d1` |
| 22 | `def` | [refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/refl--0a4803e3c7cbdcbae3576a13.md) | 236 | `declaration-track:0a4803e3c7cbdcbae3576a13081b7fb8d4652bbdfd6079ce8af39b9f28a09850` |
| 23 | `structure` | [Section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/section--0e19a520bf0d7e01731a3387.md) | 245 | `declaration-track:0e19a520bf0d7e01731a3387c9f29680dc95cfe9e0e875274a27c318ff78ac07` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/instance--40e285c830e9ff8861887b3b.md) | 254 | `declaration-track:40e285c830e9ff8861887b3ba28cedf76ada3a460693bf375f607096d34ecb3a` |
| 25 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/coe-mk--0179908a200b10e3609a5d55.md) | 261 | `result-track:0179908a200b10e3609a5d556d2b0de546812cd27253a932e75bad84150a6e93` |
| 26 | `theorem` | [rightHom_section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-section--9f22ca82099cbcd9f101693f.md) | 266 | `result-track:9f22ca82099cbcd9f101693f74b824a6cb3a9c0c7240af362e2c0b8aacadc1f3` |
| 27 | `theorem` | [rightHom_comp_section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-comp-section--fd29bfd11d5048251e098fc1.md) | 269 | `result-track:fd29bfd11d5048251e098fc1c82e5a74fe44c4fba38646fddbede4a6297d46bb` |
| 28 | `structure` | [Splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/splitting--2a8a60915db8466b7b3ba0de.md) | 275 | `declaration-track:2a8a60915db8466b7b3ba0de259d209593eb9bff752e8db356bf8349bbe8ce47` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/instance--cae75c39bd9ae88e23c7fdf8.md) | 283 | `declaration-track:cae75c39bd9ae88e23c7fdf83b7039b767321257488862bd59da098582696a77` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/instance--26e90a6f77d7206227e779c1.md) | 291 | `declaration-track:26e90a6f77d7206227e779c18734754d16f94abd6a2a79425eb1325d6189b6c8` |
| 31 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/coe-mk--f968aff0cdff8adbecbb65f6.md) | 298 | `result-track:f968aff0cdff8adbecbb65f61f7a0f93d1a09df77d731b6213e74143e7c652a4` |
| 32 | `theorem` | [coe_monoidHom_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/coe-monoidhom-mk--23a3de7573bbd31816f55da6.md) | 301 | `result-track:23a3de7573bbd31816f55da67b106fd0a0b5c018445dbbe5802a23bb0167975b` |
| 33 | `theorem` | [rightHom_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-splitting--b4994adf0ec707189f1c329d.md) | 307 | `result-track:b4994adf0ec707189f1c329dbd4446d4203d9161467218771c98dc7716a2e8c0` |
| 34 | `theorem` | [rightHom_comp_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/righthom-comp-splitting--2b45c6257b6c42f3d886a77a.md) | 310 | `result-track:2b45c6257b6c42f3d886a77a98f25a9c05d8b7fb07015e1e7eae55f61dd20178` |
| 35 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/isconj--a6d099946d04923bd5d42a2f.md) | 321 | `declaration-track:a6d099946d04923bd5d42a2f4d9a43a3fb007ae80dae158cefa6b12a3ca51d03` |
| 36 | `def` | [toGroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/togroupextension--cf0d7399ee36610e74808bab.md) | 330 | `declaration-track:cf0d7399ee36610e74808bab5184325f381ece2d1d67876a22ae126f20726381` |
| 37 | `theorem` | [toGroupExtension_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/togroupextension-inl--9d5776b60afb42a06bc15978.md) | 337 | `result-track:9d5776b60afb42a06bc1597821e08f8e496b33f028f017e269bbc8ae948f0aac` |
| 38 | `theorem` | [toGroupExtension_rightHom](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/togroupextension-righthom--78c0522c08cfea5082b10865.md) | 339 | `result-track:78c0522c08cfea5082b108651860f077adad095a55d5a1cf482071c021633555` |
| 39 | `def` | [inr_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbe8b9f2569a0ee7d979d492ac6ae3f1a229183d424d27745c2e8964082874a7d.lean/declarations/inr-splitting--b97a4d91dce4c17e87f82e10.md) | 343 | `declaration-track:b97a4d91dce4c17e87f82e1050fb47edce3680ec587e96f025ffe1a81b9d83aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
