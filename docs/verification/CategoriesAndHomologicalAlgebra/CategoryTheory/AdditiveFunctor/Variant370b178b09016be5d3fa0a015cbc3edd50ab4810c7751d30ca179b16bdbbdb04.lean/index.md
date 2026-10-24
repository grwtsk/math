# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdditiveFunctor.Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be34207a87f4608e54573435bc614bb9b9fd97e2",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be34207a87f4608e54573435bc614bb9b9fd97e2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/functor-additive--b5a81b71e28b9d19a03309c4.md) | 39 | `declaration-track:b5a81b71e28b9d19a03309c4e80d878feba0675be8bad4291fca84b15fadb4ba` |
| 2 | `theorem` | [map_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-add--fd7d4b853a1927b3a1b84b3b.md) | 55 | `result-track:fd7d4b853a1927b3a1b84b3b818a571c3a0b7ba09f4611e4095869a8aa91fe3b` |
| 3 | `def` | [mapAddHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/mapaddhom--0863c0c92a885519b760b261.md) | 62 | `declaration-track:0863c0c92a885519b760b261d7cfb687acfa5314f198ac00823cdbddcaa6442c` |
| 4 | `theorem` | [coe_mapAddHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/coe-mapaddhom--de46967735fbf0f16b40d12e.md) | 66 | `result-track:de46967735fbf0f16b40d12e82cab1ee3cb286da5ce5bfafafdccfbf75b11fa5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--6e419368753d43095549f1de.md) | 70 | `declaration-track:6e419368753d43095549f1deb0194cee28c6499bd2ac5674a1db9e25f9f7c68e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--a448becae76e5fc631c5d79d.md) | 74 | `declaration-track:a448becae76e5fc631c5d79ddd6e50b7619e7c2e1a789ce67e484e1edfc9dc2c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--b648f52762bf63c9e089aacf.md) | 76 | `declaration-track:b648f52762bf63c9e089aacf868e3190a3ed876e38eb2835702d4c9ac43c671b` |
| 8 | `theorem` | [map_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-neg--c9accb6812c19fa3fa8f48a6.md) | 80 | `result-track:c9accb6812c19fa3fa8f48a68c28112f16e87300f1d0771c0afc04532184766f` |
| 9 | `theorem` | [map_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-sub--5eef8d5f492993c9e6c8b712.md) | 85 | `result-track:5eef8d5f492993c9e6c8b7120f6ebd3875bb82ee2f551b1c22a3c45dadab3b10` |
| 10 | `theorem` | [map_nsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-nsmul--3b85797a5c3a12f1689667a9.md) | 89 | `result-track:3b85797a5c3a12f1689667a9d791489d0295f163943d72e6682135dd93aeaf7c` |
| 11 | `theorem` | [map_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-zsmul--42006a60fd0da6c15e1b7240.md) | 94 | `result-track:42006a60fd0da6c15e1b724096ba6ebc0f0a758c20a10ba455f605a930e94b3c` |
| 12 | `theorem` | [map_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/map-sum--219c473de73a4a9c97745df1.md) | 101 | `result-track:219c473de73a4a9c97745df1e6068fe8eeb03d339bc48b2b9d075363dd260be1` |
| 13 | `instance` | [inducedFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/inducedfunctor-additive--1335dd76f47bb1696b842303.md) | 112 | `declaration-track:1335dd76f47bb1696b8423032cff09ca2873df9a639e73b3ade21d1de3291dc7` |
| 14 | `instance` | [fullSubcategoryInclusion_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/fullsubcategoryinclusion-additive--7f7f7a6725d5f0613710ae64.md) | 117 | `declaration-track:7f7f7a6725d5f0613710ae6445632e56792bd71393628a848838204a5031490e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--d440ceff5a183562c8a827b9.md) | 133 | `declaration-track:d440ceff5a183562c8a827b9c4306ea2811dc49fd0dab9d12f144840c31b08f4` |
| 16 | `theorem` | [additive_of_preservesBinaryBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additive-of-preservesbinarybiproducts--cb8e13612ecc2722f56393c7.md) | 143 | `result-track:cb8e13612ecc2722f56393c786a71a27556bab11bb903c22783c7b1e95ecfe2e` |
| 17 | `instance` | [inverse_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/inverse-additive--19dfbf18fa4e18fe4f29879a.md) | 161 | `declaration-track:19dfbf18fa4e18fe4f29879a6c493d480d4cfb0d9ab671289c79289961419810` |
| 18 | `def` | [AdditiveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor--4369b338494d36d303b05b51.md) | 173 | `declaration-track:4369b338494d36d303b05b519de28583347bd7324efd01cd2ca8539bf0b28075` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--7c0d052d4e5978af3067dbf1.md) | 178 | `declaration-track:7c0d052d4e5978af3067dbf11bc1ccabc6302c97f73d5d10056471b106674253` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--8db0dfdaef330b166d0b9111.md) | 184 | `declaration-track:8db0dfdaef330b166d0b9111b74feb6dc2c96aaade5b75fe3c87d26480cb156c` |
| 21 | `def` | [AdditiveFunctor.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-forget--886f902305a67d2b5af6f7c6.md) | 188 | `declaration-track:886f902305a67d2b5af6f7c6ccd2f954d393392ed9bd45707bcb6249e9bd8822` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--bfcee38d72fc815999c3225a.md) | 193 | `declaration-track:bfcee38d72fc815999c3225a5b913efd04415ea14f8e41a676688b19684164c0` |
| 23 | `def` | [AdditiveFunctor.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-of--9e38d0f31b6d45e652e58a9b.md) | 199 | `declaration-track:9e38d0f31b6d45e652e58a9b02e38e154bbb526336acacbaa3ce70817f9c1006` |
| 24 | `theorem` | [AdditiveFunctor.of_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-of-fst--57e197cc70e2b5a1c7726016.md) | 205 | `result-track:57e197cc70e2b5a1c77260160804ce6588fed3497e47680194d9d2297d302e6e` |
| 25 | `theorem` | [AdditiveFunctor.forget_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-forget-obj--ad71e42d8840b53e0a639187.md) | 211 | `result-track:ad71e42d8840b53e0a63918725eb586f6ab3e67e8ab68434d0412041d171fd78` |
| 26 | `theorem` | [AdditiveFunctor.forget_obj_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-forget-obj-of--021f6754b63149efd017439d.md) | 216 | `result-track:021f6754b63149efd017439d1a7bc83651e1334ea937f11266b040c1dcf47cd7` |
| 27 | `theorem` | [AdditiveFunctor.forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-forget-map--5a3eda0149ed70f21679554d.md) | 223 | `result-track:5a3eda0149ed70f21679554d566d112d68a8542ea731312572000392f2e14b02` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--0e374f209144f143ad381fb4.md) | 229 | `declaration-track:0e374f209144f143ad381fb4345e0ae78f668d65062f8234c5ee5799dc18d1d9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--76dcdbddb41cba94172180f9.md) | 231 | `declaration-track:76dcdbddb41cba94172180f9b4af119e630a4c241ec2bdf0b641629f2310ea30` |
| 30 | `def` | [AdditiveFunctor.ofLeftExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofleftexact--d91971da0540113497de809d.md) | 251 | `declaration-track:d91971da0540113497de809d4a8ca0081dd6f3de7da89c2818c553e9b6e6a932` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--4ed0eac0c500bbb4fcbf3518.md) | 257 | `declaration-track:4ed0eac0c500bbb4fcbf35180b4085f46b742d138030da6e16326fc0a25f2018` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--e7694326b644281fb934c54d.md) | 258 | `declaration-track:e7694326b644281fb934c54df495f46f807fca8531d59fac99bcb4882e756436` |
| 33 | `def` | [AdditiveFunctor.ofRightExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofrightexact--37ad025155e5ff83d4e024cc.md) | 261 | `declaration-track:37ad025155e5ff83d4e024cc8a6a01f38542b414c0a1cee37340cafb290db548` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--0a91aec5fd091813bb50a4bc.md) | 267 | `declaration-track:0a91aec5fd091813bb50a4bc2d3f4d59cdfe165b1ae0843593024b771c3af6ce` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--2b359a1020bd91b2dd637b27.md) | 268 | `declaration-track:2b359a1020bd91b2dd637b27707b74e938b1dd785fbfacbd219898d3e27b8f5f` |
| 36 | `def` | [AdditiveFunctor.ofExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofexact--7ed01704f970750050bc0375.md) | 271 | `declaration-track:7ed01704f970750050bc0375d7278eabd11d165895b9c69ecf1539c37aa8f4cb` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--0a32ff31b80412b4be515a50.md) | 277 | `declaration-track:0a32ff31b80412b4be515a50a4769bac8d942701063c349f636dae6a42d25091` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/instance--d05db870ff4d10ca4deb6d84.md) | 278 | `declaration-track:d05db870ff4d10ca4deb6d8491786b3ddcf75f5f0b7c326e74d2e1c3e46b8cef` |
| 39 | `theorem` | [AdditiveFunctor.ofLeftExact_obj_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofleftexact-obj-fst--ee19b94857d450f9922147a2.md) | 285 | `result-track:ee19b94857d450f9922147a2eddf0686a59ecf9f38b43569c6b5c194a7bf9bb7` |
| 40 | `theorem` | [AdditiveFunctor.ofRightExact_obj_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofrightexact-obj-fst--f370ba939a351f07bf07f115.md) | 292 | `result-track:f370ba939a351f07bf07f115730adcb3b9dc36c9be98a14926dd688d4315c10a` |
| 41 | `theorem` | [AdditiveFunctor.ofExact_obj_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofexact-obj-fst--649128ecd074d62d62852591.md) | 299 | `result-track:649128ecd074d62d628525911dd63ca7e38ae5082832caa97089e5ad556c983e` |
| 42 | `theorem` | [AdditiveFunctor.ofLeftExact_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofleftexact-map--f67c782afdc82b383c4fa217.md) | 306 | `result-track:f67c782afdc82b383c4fa217b2000a18aa0decc8f4f7369eb62fc562e58448e7` |
| 43 | `theorem` | [AdditiveFunctor.ofRightExact_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofrightexact-map--ce2fc00633c931efac5f839f.md) | 313 | `result-track:ce2fc00633c931efac5f839fc2dddd1a4dcdc6af62cc660ff8e308bd58414aba` |
| 44 | `theorem` | [AdditiveFunctor.ofExact_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/declarations/additivefunctor-ofexact-map--d6e4f1138e11c73f1f26b5c5.md) | 320 | `result-track:d6e4f1138e11c73f1f26b5c5228890f8ae8d7198eb33885ea6907f7eb59cb13d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
