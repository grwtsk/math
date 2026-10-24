# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad209f02c2755c8e3d1f143f54e613dad4893a13",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad209f02c2755c8e3d1f143f54e613dad4893a13`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstMap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/addconstmap--8d87462d338ca2d57a11ba8f.md) | 45 | `declaration-track:8d87462d338ca2d57a11ba8f297edcc108c1eeb073e0bac6e7fe5ac08af226be` |
| 2 | `class` | [AddConstMapClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/addconstmapclass--74251ea8e2e1072afa3e19d2.md) | 60 | `declaration-track:74251ea8e2e1072afa3e19d20c4379be856bd48e9d468a91bf8d63f1dc1a687a` |
| 3 | `theorem` | [semiconj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/semiconj--8c1122c4c530440bdbc6319e.md) | 78 | `result-track:8c1122c4c530440bdbc6319e2816b05b45107316ef3f3f98962aab23923e3068` |
| 4 | `theorem` | [map_add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-nsmul--ee9378e8e33cca7ea188e849.md) | 83 | `result-track:ee9378e8e33cca7ea188e849821344a79adbce87c0fd7179d0fac1b0c4181df0` |
| 5 | `theorem` | [map_add_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-nat--a717e0f8b944d4e7b7b789ec.md) | 88 | `result-track:a717e0f8b944d4e7b7b789ecd80b8055c002befc721fbbf913d659fef5557fa3` |
| 6 | `theorem` | [map_add_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-one--a2159015477af2aaa817fee2.md) | 91 | `result-track:a2159015477af2aaa817fee2b0439a511d189956f37f48706268bc9c68f2deba` |
| 7 | `theorem` | [map_add_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-ofnat--bec8014ee0fc49a0864224e4.md) | 95 | `result-track:bec8014ee0fc49a0864224e40dbd148f7cf6a2984a0973da0c7bbaaa626cc2c1` |
| 8 | `theorem` | [map_add_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-nat--78dfd7e76d5039965411245f.md) | 100 | `result-track:78dfd7e76d5039965411245faa9c928a343e51cc998297f2cea27e413baf3c5b` |
| 9 | `theorem` | [map_add_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-ofnat--30f1b7f22eb8895b6358f807.md) | 103 | `result-track:30f1b7f22eb8895b6358f8071dce30ba742e0ff3faf7eb30b61392a6a3438bf8` |
| 10 | `theorem` | [map_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-const--9560a6bc27fe4821a132b51e.md) | 108 | `result-track:9560a6bc27fe4821a132b51e354b1e1b36b8e4be53dcbb1cd307b0ec0bcde162` |
| 11 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-one--e26cff5bf1773853a49102c1.md) | 112 | `result-track:e26cff5bf1773853a49102c1aba6fae2b22fd46670daf6037d6c03a16b96cf06` |
| 12 | `theorem` | [map_nsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nsmul-const--84e956c537e8b67057f6ae0b.md) | 117 | `result-track:84e956c537e8b67057f6ae0b6b901722347dd729615bd5f7024dc322ba494f42` |
| 13 | `theorem` | [map_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nat--c740306cd708da224013af9d.md) | 122 | `result-track:c740306cd708da224013af9dc111e70d8093ecd070690e6870c2ea65f62630e0` |
| 14 | `theorem` | [map_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-ofnat--9fa53fd4e1c0eefaa6556cc9.md) | 126 | `result-track:9fa53fd4e1c0eefaa6556cc9724fbe88bb5c3029b55a46d7e1d74a98988ead7f` |
| 15 | `theorem` | [map_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nat--23ee3f55228d0b69b2f1d11e.md) | 131 | `result-track:23ee3f55228d0b69b2f1d11eceadb5e28ae1485c17c1b15edf404d2ea73756d1` |
| 16 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-ofnat--0a74e2e6c4c8f45927623cca.md) | 134 | `result-track:0a74e2e6c4c8f45927623cca1a6b5f15ef5165bbc8e46d8d8eb804ecffe9b2bf` |
| 17 | `theorem` | [map_const_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-const-add--4f24a85b06822fe572a5a489.md) | 139 | `result-track:4f24a85b06822fe572a5a489ca9fc093fb5b13e56defab7c38facb02ea9aaed5` |
| 18 | `theorem` | [map_one_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-one-add--1bbe80ee9a467a6940ef711d.md) | 143 | `result-track:1bbe80ee9a467a6940ef711dedafdb4289d72afb1bfbd3084d68890a98e2bf18` |
| 19 | `theorem` | [map_nsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nsmul-add--e576a32711b12aba1fbb223b.md) | 147 | `result-track:e576a32711b12aba1fbb223b4d152e50c3667c26a76f645c7846adfa32f6d41e` |
| 20 | `theorem` | [map_nat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nat-add--8ce00ac31c742a781c539617.md) | 152 | `result-track:8ce00ac31c742a781c5396170fcb5291acbe8d20fbfc8a3be5760bde2cc3047c` |
| 21 | `theorem` | [map_ofNat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-ofnat-add--c13a6ce8ef82581291abe762.md) | 156 | `result-track:c13a6ce8ef82581291abe76229bd77b6b9d990b5e6c77759f515c5733ad93272` |
| 22 | `theorem` | [map_nat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-nat-add--0da631303cdec6cbc3647921.md) | 161 | `result-track:0da631303cdec6cbc36479217f23598caa4a1621936e869394f92e144d6568bf` |
| 23 | `theorem` | [map_ofNat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-ofnat-add--b4188262fdb200bd54f5287c.md) | 164 | `result-track:b4188262fdb200bd54f5287cadd70a52c8227de58c9f89b78d47fc59d71b6a12` |
| 24 | `theorem` | [map_sub_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-nsmul--4e2fb78a5ec42429ea64202f.md) | 170 | `result-track:4e2fb78a5ec42429ea64202fb2c5879eae47a0ae9757d6c66855f69236d61ef6` |
| 25 | `theorem` | [map_sub_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-const--92dc0c49a763bc95c3fbcee5.md) | 175 | `result-track:92dc0c49a763bc95c3fbcee5c8ab045d6e985188f1eb63b9d88f6b163e71f389` |
| 26 | `theorem` | [map_sub_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-one--dbfbd33c6e661af4698e9c4a.md) | 179 | `result-track:dbfbd33c6e661af4698e9c4ace9b3a9088a34d80404d52014351b9d389f10aa0` |
| 27 | `theorem` | [map_sub_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-nat--fc1ddcdc07963328dbb7b508.md) | 184 | `result-track:fc1ddcdc07963328dbb7b5086f15581393e4c00d7b429505c12efb35bd953606` |
| 28 | `theorem` | [map_sub_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-ofnat--3121c43dbacb6b1068926a7c.md) | 189 | `result-track:3121c43dbacb6b1068926a7ceafb1893a0658e341f490c45d175d25ae88db27d` |
| 29 | `theorem` | [map_add_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-zsmul--297e7e45c288cdf327d718fa.md) | 195 | `result-track:297e7e45c288cdf327d718faecee6c8f8cfde72f5318e82907778495499228b5` |
| 30 | `theorem` | [map_zsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-zsmul-const--5702ea0db42f912f8ef780f4.md) | 201 | `result-track:5702ea0db42f912f8ef780f48d2d56f0fe6be441147fe5212d2fdf1dc60beaaa` |
| 31 | `theorem` | [map_add_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-int--d9f5f89ba9a47e8ec601e632.md) | 206 | `result-track:d9f5f89ba9a47e8ec601e632d66f798aa3b86163965a863fe5696c6c66f5658f` |
| 32 | `theorem` | [map_add_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-add-int--b81527e3f0efb10634599cfa.md) | 210 | `result-track:b81527e3f0efb10634599cfa8f1f7852f22334bf4643f69636d3ab5dcda9ab1e` |
| 33 | `theorem` | [map_sub_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-zsmul--286425da524dea321f43d971.md) | 214 | `result-track:286425da524dea321f43d971cc86dc80806cbce82006258d9cf3d77d880917a4` |
| 34 | `theorem` | [map_sub_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-int--7a44ba82676174a42ac524b2.md) | 219 | `result-track:7a44ba82676174a42ac524b278d7d5e58d767dd9c86b1856934859f076430294` |
| 35 | `theorem` | [map_sub_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-sub-int--944692ff73e948c777e1ac9b.md) | 223 | `result-track:944692ff73e948c777e1ac9b894d808799868c9b4fe6c63b77aa542c5ee1c6ad` |
| 36 | `theorem` | [map_zsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-zsmul-add--27cec85d4c1c6d03ff9ee944.md) | 227 | `result-track:27cec85d4c1c6d03ff9ee944772093f75cbf4bbd6d08ce4fbb16768263260011` |
| 37 | `theorem` | [map_int_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-int-add--e1ccdbb4fd427445bbb48de8.md) | 232 | `result-track:e1ccdbb4fd427445bbb48de86fd80d59288a521d16ee67002e600155a13cddcd` |
| 38 | `theorem` | [map_int_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-int-add--d49f758c204a7c94415abf80.md) | 236 | `result-track:d49f758c204a7c94415abf80aaf74ad1670b2503e22c386a55371bbd1846911c` |
| 39 | `theorem` | [map_fract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/map-fract--88be27e7a7883974cbc706df.md) | 239 | `result-track:88be27e7a7883974cbc706df920e24071b1fcf9f33e6459ebd4ca9d025fe6e26` |
| 40 | `theorem` | [rel_map_of_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/rel-map-of-icc--c6c9ebbfa012910c3f1bfa6b.md) | 247 | `result-track:c6c9ebbfa012910c3f1bfa6b4aa18b9ac86592096d0b9654859ad63d00abd661` |
| 41 | `theorem` | [monotone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/monotone-iff-icc--9cedc927c80810da47cb57d9.md) | 289 | `result-track:9cedc927c80810da47cb57d9265f704dcae9654dabf747123a40ff67537bee09` |
| 42 | `theorem` | [antitone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/antitone-iff-icc--609982bdf9bdfc8699fc48c9.md) | 296 | `result-track:609982bdf9bdfc8699fc48c9f94ee3b687dae7eed5cf77a905a48b376487d4de` |
| 43 | `theorem` | [strictMono_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/strictmono-iff-icc--256fa32e8f3a051a7ccf9212.md) | 302 | `result-track:256fa32e8f3a051a7ccf921277fd7da01479821fa1b25dcc49bdbba74ac8af6a` |
| 44 | `theorem` | [strictAnti_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/strictanti-iff-icc--8c5b3cd1e2cf5bb8b144beef.md) | 308 | `result-track:8c5b3cd1e2cf5bb8b144beef3514069bacfc72dd8dfe2b441c5e7795ce51fcc4` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--6088075736196af584004e7d.md) | 328 | `declaration-track:6088075736196af584004e7d6f910a38bfec9c4f210ea29154a274bde632e562` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/coe-mk--c6e93ddfa624a5431ff082e4.md) | 332 | `result-track:c6e93ddfa624a5431ff082e43a165322c67d981cd90ea1860ea8f4b61e4da6f9` |
| 47 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/mk-coe--34e7f7caf4637c1c40c64caf.md) | 333 | `result-track:34e7f7caf4637c1c40c64caf06cdb5d9129e2195b0cf0ba5863133850e702d73` |
| 48 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/tofun-eq-coe--f93b78aad2471ed83540c12d.md) | 334 | `result-track:f93b78aad2471ed83540c12dba85cd6367dd57f402361e29465893e640da7794` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--6757569c08c130ead3475997.md) | 336 | `declaration-track:6757569c08c130ead3475997edadd1aa6a76b23aeefa7c85b0ace687efcd5401` |
| 50 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/ext--a49fb9d72e468b545e07fc01.md) | 339 | `result-track:a49fb9d72e468b545e07fc01d99ff673a3e2b7125c73beddef6d2c1266521f43` |
| 51 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/id--8199b3002cd8893b988c7f4e.md) | 350 | `declaration-track:8199b3002cd8893b988c7f4ecdf1e48183e7d4257c5ce546ccdb3e5580d0339c` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--3a613ca9f949663674207ce6.md) | 352 | `declaration-track:3a613ca9f949663674207ce6c06af34206757ec7717d3bbf7a7a2a0c3a4346d4` |
| 53 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/comp--291d190b3d57231e01640236.md) | 356 | `declaration-track:291d190b3d57231e01640236d79aea09706277c97e5cb995632d2f69cd29fa96` |
| 54 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/comp-id--0e404b8e369a8d7839f7caf1.md) | 360 | `result-track:0e404b8e369a8d7839f7caf1a3b1617c308717a9e39731c23b42e1394eaf4676` |
| 55 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/id-comp--5fb280ec157d292fee5dcd8e.md) | 361 | `result-track:5fb280ec157d292fee5dcd8ec85b403b87899585543f65faafc2c67a889692e8` |
| 56 | `def` | [replaceConsts](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/replaceconsts--05ec56d3f0de169872235359.md) | 365 | `declaration-track:05ec56d3f0de1698722353596dea183a02e0a2b0e23ee9504757c4bb29db5c49` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--80a1bd69d82b342bea53d08b.md) | 375 | `declaration-track:80a1bd69d82b342bea53d08baabaecbee1e10cbc0fad296c5f1278170dc814b0` |
| 58 | `theorem` | [coe_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/coe-vadd--23ae90ebd735763b37359f2d.md) | 379 | `result-track:23ae90ebd735763b37359f2d63dee97f26139f872bae0d1721f4de89eb99c313` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--68aa852f79fca540ccba3088.md) | 383 | `declaration-track:68aa852f79fca540ccba308876fef24fad7cb15eae108c9dd1f998ac9f2774ac` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--e19f88cea6fa6e1bd8adaec6.md) | 391 | `declaration-track:e19f88cea6fa6e1bd8adaec6fa0457f57def80da050703f9a96ce402216ba572` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--0d2fea6715dc83f7abfae8b6.md) | 392 | `declaration-track:0d2fea6715dc83f7abfae8b6ad675093dcdde5f7ad746cb15cd67e5ff6146870` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--50a07350267518fb89c24ed5.md) | 394 | `declaration-track:50a07350267518fb89c24ed5b4d8b18f964bb7f6e79da9a8a8ad6f7d8491fc9b` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/instance--4c93aace7c2f3f276279e015.md) | 397 | `declaration-track:4c93aace7c2f3f276279e015b3e76b396568c89f080757cee1f9e686d70592f9` |
| 64 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/mul-def--b695722311df5de02f3a89ee.md) | 400 | `result-track:b695722311df5de02f3a89eef2cb7b102dc16c15273fa3b7c08af35540006f2b` |
| 65 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/coe-mul--d9ad95c78404afbba38a8add.md) | 401 | `result-track:d9ad95c78404afbba38a8adde9e87bc62fbfd9873d5aeb6988580915f331c8cc` |
| 66 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/one-def--42dd245a1497aaba0613a2e2.md) | 403 | `result-track:42dd245a1497aaba0613a2e2c1578b552acaa8a4c688d222fbdc5ea9a082c87e` |
| 67 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/coe-one--e3db49f659a78ccfdac968a4.md) | 404 | `result-track:e3db49f659a78ccfdac968a41081a66039ed1bb952e71cd4f23b2a08cdb24b63` |
| 68 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/coe-pow--448130439ebdc85e0ffe611a.md) | 406 | `result-track:448130439ebdc85e0ffe611a777cf55ef7fd188367485c7cf8beea33fbca69c1` |
| 69 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/pow-apply--258b7bfda3c4767222a06323.md) | 408 | `result-track:258b7bfda3c4767222a063238cab3d3def0b696b4cc73e74a77cc65091bc711c` |
| 70 | `def` | [toEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/toend--dfa65ee4c0c79d3bb581c60b.md) | 412 | `declaration-track:dfa65ee4c0c79d3bb581c60b2801df46142b5c8ff20b1f4712f12982a176ecae` |
| 71 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/smul--a5382bb87fa5fb7748c5de3f.md) | 435 | `declaration-track:a5382bb87fa5fb7748c5de3f419dc93af1663898c8123eaa600ff56c2c44c23e` |
| 72 | `def` | [addLeftHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/addlefthom--fe3837763b5d09f4976b6f03.md) | 448 | `declaration-track:fe3837763b5d09f4976b6f03ad7ff92d48825d0c51d5fb528f024ab8ffc61c08` |
| 73 | `def` | [conjNeg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/conjneg--c0ffdac510ba2f9a98c4db48.md) | 461 | `declaration-track:c0ffdac510ba2f9a98c4db48a4c1a93c3e4f78cae1342b1fb8478d97262f94b9` |
| 74 | `theorem` | [conjNeg_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/conjneg-symm--4d029a0ea12732c963631f7c.md) | 465 | `result-track:4d029a0ea12732c963631f7c41ef94b484df77882a163a18548ab26c80533c54` |
| 75 | `def` | [mkFract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/declarations/mkfract--46012d9ea0cdf1a0088eeab9.md) | 475 | `declaration-track:46012d9ea0cdf1a0088eeab9d44b48bbd7264f97c3dedb34935fa5a5567d2b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
