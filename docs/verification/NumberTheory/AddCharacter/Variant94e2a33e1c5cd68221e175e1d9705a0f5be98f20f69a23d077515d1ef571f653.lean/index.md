# Verification target: GRWTSK.NumberTheory.AddCharacter.Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d807b175c16a3f14dd9271058900c8a2414e79b6",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d807b175c16a3f14dd9271058900c8a2414e79b6`.

Source path: `GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddChar](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/addchar--6dc94ad6a1b38ed5f9f984ee.md) | 66 | `declaration-track:6dc94ad6a1b38ed5f9f984ee4a77b6fb142fd291c5fde23e733cc8eb9724ef48` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/instance--dedc2bb8fddee41361a080c0.md) | 79 | `declaration-track:dedc2bb8fddee41361a080c0b6ab57b7fd4d3742e96ae0231d6fae6bfdae1aaa` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/instance--4e75a26e46ee3695884ec878.md) | 82 | `declaration-track:4e75a26e46ee3695884ec8787c7732cb004c566e81393cbde013df98ae9b9188` |
| 4 | `def` | [toMonoidHom](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/tomonoidhom--7b7470634d698bb913d3d85e.md) | 92 | `declaration-track:7b7470634d698bb913d3d85e2fb7f98bfd2d573202f1393537e1d021f2f71c22` |
| 5 | `def` | [toFun](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/tofun--38c93dca88abd70d2eede893.md) | 100 | `declaration-track:38c93dca88abd70d2eede893cddfd0a4c036a9db832dd08bba25ee6d6f7516f8` |
| 6 | `instance` | [hasCoeToFun](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/hascoetofun--d26ee09f4192301f9e200e55.md) | 105 | `declaration-track:d26ee09f4192301f9e200e55bfa6b786c7ab20419d8d0d36c32514c3954f72cd` |
| 7 | `theorem` | [coe_to_fun_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/coe-to-fun-apply--5e82a491cc3904a7829cd2ee.md) | 109 | `result-track:5e82a491cc3904a7829cd2eed03422ca569160d95913f9d58a0bf8b197735da8` |
| 8 | `theorem` | [mul_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mul-apply--c8c0c5d78de9ebce613f46bf.md) | 114 | `result-track:c8c0c5d78de9ebce613f46bf6a5f9035e7f6abd7544708f4db51ef8f1b948209` |
| 9 | `theorem` | [one_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/one-apply--b86951c76a7f213577229c7d.md) | 119 | `result-track:b86951c76a7f213577229c7d09785e63658f5659c9672b117856eb75705d1fbb` |
| 10 | `instance` | [monoidHomClass](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/monoidhomclass--4aa48d02c1247f765e09da62.md) | 121 | `declaration-track:4aa48d02c1247f765e09da620bcc06521d9d8e096cd3b65f0581dba42e7edf12` |
| 11 | `theorem` | [ext](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/ext--4e5ac06971aee94194c0c565.md) | 127 | `result-track:4e5ac06971aee94194c0c565c31d9ccdf281d41ea635d0ee62a98fc374689537` |
| 12 | `theorem` | [map_zero_one](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/map-zero-one--bee0656f949461d5051bd894.md) | 132 | `result-track:bee0656f949461d5051bd894ffa996fcf3ff8f561e06cfa9deae279ce71ceb60` |
| 13 | `theorem` | [map_add_mul](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/map-add-mul--e27658fc7aba6939d9251e08.md) | 137 | `result-track:e27658fc7aba6939d9251e08d8e4c134aa56e81e062dba2d1f691c240d4aac60` |
| 14 | `theorem` | [map_nsmul_pow](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/map-nsmul-pow--357dd52b0b47c63ca9ce13c4.md) | 143 | `result-track:357dd52b0b47c63ca9ce13c4c42dee5c681686f60174f4a793272bbdcc3ae1e7` |
| 15 | `instance` | [hasInv](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/hasinv--61848ea87b1c32a9985d003e.md) | 159 | `declaration-track:61848ea87b1c32a9985d003e387f1464bc58967e6d42bf2d1c798aca032b9ca5` |
| 16 | `theorem` | [inv_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/inv-apply--1afcea17bb08350f06970282.md) | 163 | `result-track:1afcea17bb08350f06970282904db0265a46c0c0f3f21016a686d055288ffa07` |
| 17 | `theorem` | [map_zsmul_zpow](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/map-zsmul-zpow--1ef99a5ed2db4f8f04de6f8c.md) | 169 | `result-track:1ef99a5ed2db4f8f04de6f8c6f10d80e44323cbfc4e5ef0d32a41a58f102f6dd` |
| 18 | `instance` | [commGroup](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/commgroup--ddb8926f5a386fdbde2bc3ce.md) | 174 | `declaration-track:ddb8926f5a386fdbde2bc3cec44c73f0b9b91ec23dd37ea4b2817d7c6c4bc5ed` |
| 19 | `def` | [IsNontrivial](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/isnontrivial--3dfacfdcc4e2b9a331134cc7.md) | 191 | `declaration-track:3dfacfdcc4e2b9a331134cc7846cbad53f59aa93b0c319d66a8f8b60445567c9` |
| 20 | `theorem` | [isNontrivial_iff_ne_trivial](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/isnontrivial-iff-ne-trivial--55c94c7f90fb98055947b78c.md) | 196 | `result-track:55c94c7f90fb98055947b78c551f4330e7afeba75c6ac0ab3f7ca8b4bbdae7dc` |
| 21 | `def` | [mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mulshift--db07e8d8b7304d7b274eb7f1.md) | 204 | `declaration-track:db07e8d8b7304d7b274eb7f1814b71e5151427583a094d8f68e2bf42e0d997e2` |
| 22 | `theorem` | [mulShift_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mulshift-apply--3cbad8450141c7b585d377cd.md) | 209 | `result-track:3cbad8450141c7b585d377cd902d84e1d0e443767ef12f99efcfb5c137381107` |
| 23 | `theorem` | [inv_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/inv-mulshift--54170925a1bf430b0fa638eb.md) | 214 | `result-track:54170925a1bf430b0fa638eb2dd7decb045d212ca89bd98f1ff8d6ae1653c370` |
| 24 | `theorem` | [mulShift_spec'](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mulshift-spec--3eb8715b222e4cf48b3054ee.md) | 220 | `result-track:3eb8715b222e4cf48b3054ee21b72af1c632a7b6d3cc2e19a84afbecddb85484` |
| 25 | `theorem` | [pow_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/pow-mulshift--47ffd2e95e1863298da0130d.md) | 225 | `result-track:47ffd2e95e1863298da0130d92d8a74550a132ea4080299ccab3aac36fa96cd8` |
| 26 | `theorem` | [mulShift_mul](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mulshift-mul--3e8d45db08a1913e69e84365.md) | 231 | `result-track:3e8d45db08a1913e69e843659ac049163dc1242f8ab7d7f293981eec660f71e3` |
| 27 | `theorem` | [mulShift_zero](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/mulshift-zero--667ebc378e8f79e015079438.md) | 239 | `result-track:667ebc378e8f79e0150794386736958cf4803959fea1248fb9136a6612da327c` |
| 28 | `def` | [IsPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/isprimitive--2e7a26ab944bae6bd7a7ad69.md) | 246 | `declaration-track:2e7a26ab944bae6bd7a7ad691e75d4d9990bb4d2a47b20860046e6800eb61485` |
| 29 | `theorem` | [to_mulShift_inj_of_isPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/to-mulshift-inj-of-isprimitive--6db4dae4cc6f7820a910dd89.md) | 252 | `result-track:6db4dae4cc6f7820a910dd89551351ca675580898d197e56f33a869b6475dbd3` |
| 30 | `theorem` | [IsNontrivial.isPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/isnontrivial-isprimitive--ccd128f55eb82e63d0ecfdb4.md) | 267 | `result-track:ccd128f55eb82e63d0ecfdb49de4bbef351f3d3e581d16fbc9982f53525f8ca6` |
| 31 | `def` | [PrimitiveAddChar](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitiveaddchar--722b04ae12845e79fb94b5a9.md) | 284 | `declaration-track:722b04ae12845e79fb94b5a9d40642d591a473e7a36d7050996b5a7b156f4831` |
| 32 | `def` | [PrimitiveAddChar.n](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitiveaddchar-n--0223f583198949139c2a2cd5.md) | 289 | `declaration-track:0223f583198949139c2a2cd57bb9aeedc9eabfce725def63dc802b1829dd9ef4` |
| 33 | `def` | [PrimitiveAddChar.char](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitiveaddchar-char--9e70d4ce5a21e4554e3d0d33.md) | 294 | `declaration-track:9e70d4ce5a21e4554e3d0d33720d9ad39d2e2150901087c8c380452e3206f562` |
| 34 | `theorem` | [PrimitiveAddChar.prim](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitiveaddchar-prim--1c8c52a67f55cddf1d83b3d1.md) | 299 | `result-track:1c8c52a67f55cddf1d83b3d17b8aa04cce5275d77c2696a7d54fd558843997f3` |
| 35 | `def` | [zmodChar](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmodchar--ba5564caf01e2c39a0cb72f0.md) | 316 | `declaration-track:ba5564caf01e2c39a0cb72f0b0ea034db154b3de55a1098c8aab51f76a039b81` |
| 36 | `theorem` | [zmodChar_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmodchar-apply--469f36ca00c7487e90fc9ada.md) | 325 | `result-track:469f36ca00c7487e90fc9ada37939caf100ac706fe775633a7d0cf2b94eb12b9` |
| 37 | `theorem` | [zmodChar_apply'](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmodchar-apply--0a1db3232937030f7494fb7a.md) | 330 | `result-track:0a1db3232937030f7494fb7a378e45bb5a523e7ea134e2326fca37a0df0cbc25` |
| 38 | `theorem` | [zmod_char_isNontrivial_iff](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmod-char-isnontrivial-iff--098cba900ebf23cb60ccd631.md) | 338 | `result-track:098cba900ebf23cb60ccd6314259a2e164b901888d4ef088181248950f4859f8` |
| 39 | `theorem` | [IsPrimitive.zmod_char_eq_one_iff](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/isprimitive-zmod-char-eq-one-iff--6d1bb94f4bc249402f52b85c.md) | 350 | `result-track:6d1bb94f4bc249402f52b85c6ec1455f74a648a417d36990b11799bbcdf47121` |
| 40 | `theorem` | [zmod_char_primitive_of_eq_one_only_at_zero](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmod-char-primitive-of-eq-one-only-at-zero--f7320c79a73faa0b7bba9196.md) | 358 | `result-track:f7320c79a73faa0b7bba919641a3de3eb78c5ffca9195c3f7913b0770b5e962b` |
| 41 | `theorem` | [zmodChar_primitive_of_primitive_root](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/zmodchar-primitive-of-primitive-root--fb248fcf588f4fae73429727.md) | 369 | `result-track:fb248fcf588f4fae73429727d16565691f25c5241de78b573edd29ce51a541b6` |
| 42 | `def` | [primitiveZModChar](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitivezmodchar--2301b6e990dc3f54ba541c5b.md) | 379 | `declaration-track:2301b6e990dc3f54ba541c5bd763fb6f3a6feb89fa57ded7f7a8b470b7a416d2` |
| 43 | `def` | [primitiveCharFiniteField](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/primitivecharfinitefield--9117988043732f722962a6a0.md) | 395 | `declaration-track:9117988043732f722962a6a0167fff85905924cf34aa8624b1c9a9163cd99d94` |
| 44 | `theorem` | [sum_eq_zero_of_isNontrivial](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/sum-eq-zero-of-isnontrivial--4c80493245e3d7078b58bee2.md) | 426 | `result-track:4c80493245e3d7078b58bee2fc15c6a4e0334d55e11ee8e882fbdd07f74d02d8` |
| 45 | `theorem` | [sum_eq_card_of_is_trivial](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/sum-eq-card-of-is-trivial--4650a6164d770313ac8cb68c.md) | 438 | `result-track:4650a6164d770313ac8cb68cddb19d4b0f8d96e39b39d4bd2f3fc61a64fee257` |
| 46 | `theorem` | [sum_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean/declarations/sum-mulshift--6e8fe46123775fbf9242e7e7.md) | 448 | `result-track:6e8fe46123775fbf9242e7e7e96f9ce7d7af03f2ddba7fd6ce5deab14d7016c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
