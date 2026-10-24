# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee2a89592cef77667c71c60627ba94e2cfd3b7a8",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee2a89592cef77667c71c60627ba94e2cfd3b7a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset--61984271570f62473a0ab1a3.md) | 61 | `declaration-track:61984271570f62473a0ab1a38d52ced78058d8963e3ffd34f7704275f439ec17` |
| 2 | `theorem` | [isLinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-iff--89d8904e239186cd2241e518.md) | 65 | `result-track:89d8904e239186cd2241e518baa4348c740c1d458f1f48908cd902869a57db44` |
| 3 | `theorem` | [IsLinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-singleton--ce7f8a423f147dd528a5f6bf.md) | 70 | `result-track:ce7f8a423f147dd528a5f6bfe93df691acae7499e9c9f8df6ec61db3affddb66` |
| 4 | `theorem` | [IsLinearSet.closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-closure-finset--6c627744ec54aafa5bee179a.md) | 73 | `result-track:6c627744ec54aafa5bee179ac684533b1db25528ee5f5947a0f5c6b7b6108094` |
| 5 | `theorem` | [IsLinearSet.closure_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-closure-of-finite--43e3fa977d6f61dbe144450c.md) | 76 | `result-track:43e3fa977d6f61dbe144450c2f6d913a052f5bdcb13e352958277a1724f79f0e` |
| 6 | `theorem` | [isLinearSet_iff_exists_fg_eq_vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-iff-exists-fg-eq-vadd--66d61f405de6ad196d724175.md) | 80 | `result-track:66d61f405de6ad196d724175624218c3d912ddc8841dc3bab52b41040eaa71b8` |
| 7 | `theorem` | [IsLinearSet.of_fg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-of-fg--09159dd9d1de99eb721105c7.md) | 85 | `result-track:09159dd9d1de99eb721105c771e2c3aeb7123a7d5782c1b1ac1393706d75608a` |
| 8 | `theorem` | [IsLinearSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-univ--7de4cdb2df1ee104c66c92dd.md) | 90 | `result-track:7de4cdb2df1ee104c66c92dd1abbe3835048cdb5c680f143513fdf4831a59316` |
| 9 | `theorem` | [IsLinearSet.vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-vadd--5e367f111923432c5fec6952.md) | 93 | `result-track:5e367f111923432c5fec6952244079ac30b87d275d49902f6d6ac393e5f6e684` |
| 10 | `theorem` | [IsLinearSet.add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-add--5e62eb47ecb0539ab749545c.md) | 97 | `result-track:5e62eb47ecb0539ab749545c62ef788483c10d91e6a63eeb3a611906ad76b614` |
| 11 | `theorem` | [IsLinearSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-image--e1630e89fd1705faef46cfeb.md) | 102 | `result-track:e1630e89fd1705faef46cfebe2862671999b3991860d9e781abeafbdc0ae20b7` |
| 12 | `def` | [IsSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset--ffa4c50fc6efb70d026f970b.md) | 108 | `declaration-track:ffa4c50fc6efb70d026f970bee93d9d2a2356f39f082142b577f161825ca005c` |
| 13 | `theorem` | [isSemilinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-iff--6c3d281936be549572f7b61f.md) | 112 | `result-track:6c3d281936be549572f7b61f7cdd84d4edd61a1f619cdd9ba9831e416b08c649` |
| 14 | `theorem` | [IsLinearSet.isSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-issemilinearset--5ce1535387bfbf983dc8ebc1.md) | 116 | `result-track:5ce1535387bfbf983dc8ebc12c50bf0d1a5abdea8b9cf68426810c1c2c2605a0` |
| 15 | `theorem` | [IsSemilinearSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-empty--8d18a766b25e5c6d560bf929.md) | 120 | `result-track:8d18a766b25e5c6d560bf929f861c66c1fafa151f26e27630052cec2eb2929b9` |
| 16 | `theorem` | [IsSemilinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-singleton--200c3c7aa0424f1183f8ecfd.md) | 124 | `result-track:200c3c7aa0424f1183f8ecfd165ed7f0e4808a64a0c7ed7cd3c831b46292b8a4` |
| 17 | `theorem` | [IsSemilinearSet.closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-closure-finset--f2037de7a7028cd1ced9c0e7.md) | 127 | `result-track:f2037de7a7028cd1ced9c0e73d953a71d0541e1de47bf29b1f290088a0f0e848` |
| 18 | `theorem` | [IsSemilinearSet.closure_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-closure-of-finite--fb37d85ec978056971972fe9.md) | 131 | `result-track:fb37d85ec978056971972fe976d5321b64930a504441589b284555752a5d55df` |
| 19 | `theorem` | [IsSemilinearSet.of_fg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-of-fg--9752699cc675e7f664f5c8da.md) | 135 | `result-track:9752699cc675e7f664f5c8da21a287f58cb4d5a2274356f0e1458ac6031a20eb` |
| 20 | `theorem` | [IsSemilinearSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-univ--03888ac9a811e4399f0e126d.md) | 140 | `result-track:03888ac9a811e4399f0e126dee2e8726197bfbdfbc716788b3ef93106c9e672b` |
| 21 | `theorem` | [IsSemilinearSet.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-union--550e6b549f7743524b76cd2c.md) | 144 | `result-track:550e6b549f7743524b76cd2c60b647b30845027c93153f88e71f82fc285c495a` |
| 22 | `theorem` | [IsSemilinearSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-sunion--db1abda315377369469a9c34.md) | 153 | `result-track:db1abda315377369469a9c3438206b3e29e415eae1afdf1d4954126fd7caa821` |
| 23 | `theorem` | [IsSemilinearSet.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-iunion--1b205f3a57b7f464df5079ac.md) | 161 | `result-track:1b205f3a57b7f464df5079acc77bdab79baf41695be52c25c4c9a58cac303545` |
| 24 | `theorem` | [IsSemilinearSet.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-biunion--c37094ace1a3e23139172dc5.md) | 167 | `result-track:c37094ace1a3e23139172dc5e1f5b97f86444673ef79b0b47d8d51d7c7bc6511` |
| 25 | `theorem` | [IsSemilinearSet.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-biunion-finset--4f2150651c247eb228e1e74b.md) | 173 | `result-track:4f2150651c247eb228e1e74bd343bd3659e294c593d5328e08082b987d796f36` |
| 26 | `theorem` | [IsSemilinearSet.of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-of-finite--fe367bfffbe3c9c23bae6075.md) | 177 | `result-track:fe367bfffbe3c9c23bae60753ea208e0715c82cb7ccca3306ad69c310cfed3a8` |
| 27 | `theorem` | [IsSemilinearSet.vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-vadd--eecce3116a9d4450d77ecfc4.md) | 182 | `result-track:eecce3116a9d4450d77ecfc4f06ccde7adfa7c988639e977a79dcb3ef46c4e42` |
| 28 | `theorem` | [IsSemilinearSet.add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-add--cf8e81ed4b48ffc043fc350d.md) | 188 | `result-track:cf8e81ed4b48ffc043fc350d7de1156393537a1c49c9eeab0360c5f65ff26899` |
| 29 | `theorem` | [IsSemilinearSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-image--d3b1bc13339360b64f423c6d.md) | 197 | `result-track:d3b1bc13339360b64f423c6d02938fdb59e5bc3582b2bf7646a8c9447cc3c8f6` |
| 30 | `theorem` | [isSemilinearSet_image_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-image-iff--b7b3abe286252426fbab3972.md) | 202 | `result-track:b7b3abe286252426fbab39722d7fa8906743443cf0f9e87ebdd316edd0bb90fe` |
| 31 | `theorem` | [IsSemilinearSet.proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-proj--511d1fd000dffdf94587c148.md) | 211 | `result-track:511d1fd000dffdf94587c14887657d3c591a1f3d2ac7153d0469b51c2c8be160` |
| 32 | `theorem` | [IsSemilinearSet.proj'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-proj--d674177a0b5a87d07f5ce98a.md) | 223 | `result-track:d674177a0b5a87d07f5ce98a11b7a5b2ee07c52cc31c5e9f7f1285071d03657e` |
| 33 | `lemma` | [IsLinearSet.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-closure--3ada039c883e266f0be0a1a7.md) | 227 | `result-track:3ada039c883e266f0be0a1a781b76aedd4c5ca16fe30689c91666b866c5326f1` |
| 34 | `theorem` | [IsSemilinearSet.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-closure--d9696f329c5a9325029c3544.md) | 257 | `result-track:d9696f329c5a9325029c3544ebbce304f74a2353422b93d05186bd543aee1719` |
| 35 | `def` | [IsProperLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/isproperlinearset--b217ea57bcb2a5a7a53446c2.md) | 267 | `declaration-track:b217ea57bcb2a5a7a53446c223f5f2121b11283bc4652dc93eb8cea2002d34c2` |
| 36 | `theorem` | [isProperLinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/isproperlinearset-iff--4ae23a76b3c138fac8dc9c17.md) | 271 | `result-track:4ae23a76b3c138fac8dc9c1722787286aa255163dd3223bc88400d506d40d447` |
| 37 | `theorem` | [IsProperLinearSet.isLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/isproperlinearset-islinearset--14a795e5b7a34f79f3bf65d6.md) | 277 | `result-track:14a795e5b7a34f79f3bf65d6541935a9c8f2681bdf3f98c07a62ce17a9ea2f03` |
| 38 | `theorem` | [IsProperLinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/isproperlinearset-singleton--34771231116e8eee815df90a.md) | 282 | `result-track:34771231116e8eee815df90a6815ed4ac04aa835793a082b151b447efef61a93` |
| 39 | `def` | [IsProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset--b9d3f5c013329521a7303d24.md) | 286 | `declaration-track:b9d3f5c013329521a7303d24c4edbc23b2bc12da7b14300a1285abad4b7dd201` |
| 40 | `theorem` | [isProperSemilinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-iff--7f9c9adb951cd5caa50a152d.md) | 291 | `result-track:7f9c9adb951cd5caa50a152d1f5933f455cd5784bbcbdb0dc36cd692c331a5da` |
| 41 | `theorem` | [IsProperSemilinearSet.isSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-issemilinearset--fbb25593f45b0283e82efc4f.md) | 295 | `result-track:fbb25593f45b0283e82efc4ffc75481ff9042b019d4fba34e8ff7ae455850c92` |
| 42 | `theorem` | [IsProperLinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/isproperlinearset-ispropersemilinearset--b3e71bcd28f4827ed46fbd5f.md) | 300 | `result-track:b3e71bcd28f4827ed46fbd5f12f310bb3c5e6d78b550a1d8f04bee61eb3d3a55` |
| 43 | `theorem` | [IsProperSemilinearSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-empty--fa0d7810d2f06e57c7a5fff1.md) | 305 | `result-track:fa0d7810d2f06e57c7a5fff17b910b47636d8b4fc44b8acda691938283845682` |
| 44 | `theorem` | [IsProperSemilinearSet.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-union--ea9e39fea949ea4bf4f3bffb.md) | 308 | `result-track:ea9e39fea949ea4bf4f3bffb545c4bbc23c54472f8fdae78f7c391d1c87826a4` |
| 45 | `theorem` | [IsProperSemilinearSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-sunion--265071a049f42b334cc791dc.md) | 317 | `result-track:265071a049f42b334cc791dc8c1c69e23bbbe1cbaea7ce1b6e61902b8f6fff5a` |
| 46 | `theorem` | [IsProperSemilinearSet.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-biunion--84d183e24db33b1d17dafca5.md) | 325 | `result-track:84d183e24db33b1d17dafca5dc8ddc11dfcc4a11d5522b39140d8c2e052ef0fa` |
| 47 | `theorem` | [IsProperSemilinearSet.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/ispropersemilinearset-biunion-finset--1f90344b06d4d0da538ff5cf.md) | 331 | `result-track:1f90344b06d4d0da538ff5cf063685087007fb452eb3111c4936c828f0b858af` |
| 48 | `lemma` | [IsLinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/islinearset-ispropersemilinearset--711c8144ca67c63e09663411.md) | 335 | `result-track:711c8144ca67c63e09663411c99011533887c5aaa6c8f54681e7882e1c55e8df` |
| 49 | `theorem` | [IsSemilinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/issemilinearset-ispropersemilinearset--e4da35d1394e1d0b5ba3185d.md) | 384 | `result-track:e4da35d1394e1d0b5ba3185daa15363f566cadcd7ab40b94e014dc27287dbc81` |
| 50 | `theorem` | [Nat.isSemilinearSet_iff_ultimately_periodic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/declarations/nat-issemilinearset-iff-ultimately-periodic--391023619244ce0d0011eec0.md) | 394 | `result-track:391023619244ce0d0011eec01881978baf585574e620bd9f1f6bb785930ab7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
