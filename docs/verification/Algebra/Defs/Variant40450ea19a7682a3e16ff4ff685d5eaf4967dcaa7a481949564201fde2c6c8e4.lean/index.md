# Verification target: GRWTSK.Algebra.Defs.Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4`.

Source path: `GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.LeastGreatest` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorSemiring](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorsemiring--8326049e3e5a987e49081de7.md) | 68 | `declaration-track:8326049e3e5a987e49081de769919a856787049da85d494a3a894f236595373b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/instance--8bab8218a8d38f4855d1ee36.md) | 81 | `declaration-track:8bab8218a8d38f4855d1ee36df3d0a070c384ac43b57cf96cde7a82ae9b13b8d` |
| 3 | `theorem` | [natCast_mono](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/natcast-mono--cffc01ad3dc838f3702b1a98.md) | 95 | `result-track:cffc01ad3dc838f3702b1a9855d2a0583740aa4465228cd60134811233fc3794` |
| 4 | `theorem` | [natCast_nonneg](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/natcast-nonneg--85b9b672d6b24dd8b3c7c925.md) | 100 | `result-track:85b9b672d6b24dd8b3c7c925c743e54d721a5c3c58dc21f0da549e9965f020de` |
| 5 | `theorem` | [natCast_strictMono](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/natcast-strictmono--b83e40900477e7dc85983a74.md) | 105 | `result-track:b83e40900477e7dc85983a740a10ced7f6eeec45e50757c2de83d46faa20ee0b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/instance--05a0c1e017f9c3d43ea1308a.md) | 112 | `declaration-track:05a0c1e017f9c3d43ea1308a609a331d3c91597573c0dfb50b0db79a87c3d134` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/instance--798483e5f7fa18bd9c659ba0.md) | 114 | `declaration-track:798483e5f7fa18bd9c659ba02bca2f445e40a49bc8df30f57e0440fbc6b226e1` |
| 8 | `def` | [floor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor--3651983aa7cba901c5ddec70.md) | 125 | `declaration-track:3651983aa7cba901c5ddec701b62dacd69c2598115c418fa012cb478ebee4625` |
| 9 | `def` | [ceil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil--fca254e3ebf1902db63ac733.md) | 129 | `declaration-track:fca254e3ebf1902db63ac73382b7db288a296e5a81e7b5ab1cc1bb27c9b91290` |
| 10 | `theorem` | [floor_nat](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-nat--931dba95a4479f426a980ce1.md) | 133 | `result-track:931dba95a4479f426a980ce1307d6dbd406635a9fa74aeb7a4448bc79c79b5a9` |
| 11 | `theorem` | [ceil_nat](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-nat--146ed206e75e15fc64baca96.md) | 137 | `result-track:146ed206e75e15fc64baca96ef99b196020b107e5812a1278317f4e5b1145e7e` |
| 12 | `theorem` | [le_floor_iff](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/le-floor-iff--5ca6f587c336f3e53dcc2877.md) | 146 | `result-track:5ca6f587c336f3e53dcc28770d37628e92707f4ed89afb0c58980a3380745f24` |
| 13 | `theorem` | [le_floor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/le-floor--f6d0069a530ef823ebe05166.md) | 149 | `result-track:f6d0069a530ef823ebe05166d63807bdc46da9eb4d3485a1ec1933db79c380bc` |
| 14 | `theorem` | [gc_ceil_coe](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/gc-ceil-coe--c3e3c81824d9152e6fad281f.md) | 152 | `result-track:c3e3c81824d9152e6fad281f477f0aaa8f6ccb505df8e18cba17669a4f4f1448` |
| 15 | `theorem` | [ceil_le](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-le--54a7e908b71a8e2546ac5abc.md) | 156 | `result-track:54a7e908b71a8e2546ac5abcc2fcc16dba7c9375bdb310e63af8cc96de59e165` |
| 16 | `theorem` | [lt_ceil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/lt-ceil--f665efd8ca466c63ecaacf4e.md) | 165 | `result-track:f665efd8ca466c63ecaacf4ed10567b5a9abaf60409756b084725a2055e7b34d` |
| 17 | `theorem` | [ceil_pos](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-pos--e53b2546a704102c0835080e.md) | 169 | `result-track:e53b2546a704102c0835080ebeb35e1e8f2ce00059e29e69e7513159a0e3c03d` |
| 18 | `class` | [FloorRing](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring--52086bca50644820fb2a71f0.md) | 180 | `declaration-track:52086bca50644820fb2a71f0ede5aa6055701a387ad854abbc780098bb28d4ef` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/instance--4d02ce0d5145facf9632ebe2.md) | 190 | `declaration-track:4d02ce0d5145facf9632ebe2b983ca2301cbf706aec32c7b583038cdb01266b3` |
| 20 | `def` | [FloorRing.ofFloor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring-offloor--62117c09e734c94a719df0e0.md) | 200 | `declaration-track:62117c09e734c94a719df0e0f5f5a10c18b7c17266e50fd151646996bf359224` |
| 21 | `def` | [FloorRing.ofCeil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring-ofceil--c91371ed1dcb8b115254e85b.md) | 209 | `declaration-track:c91371ed1dcb8b115254e85b9ff713726b1d0365e0b19f26014a9c45801a7157` |
| 22 | `def` | [floorAux](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/flooraux--94fab9c307487032fb1c9914.md) | 217 | `declaration-track:94fab9c307487032fb1c99141aeff8099e10b1b0868a2f3ead729b210c1246da` |
| 23 | `theorem` | [exists_floor'](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/exists-floor--7c9d58d43d15057bbd51d75a.md) | 227 | `result-track:7c9d58d43d15057bbd51d75ab842ffe76d36c70c467b51b575e40784ba49bd58` |
| 24 | `def` | [FloorRing.ofBounded](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring-ofbounded--ec0b5f731a7cf47d96901fdf.md) | 238 | `declaration-track:ec0b5f731a7cf47d96901fdf02d5bb119018610eb08fe19e1b9c89a627e6b693` |
| 25 | `def` | [floor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor--4ea76df2f2b8bddca069495d.md) | 256 | `declaration-track:4ea76df2f2b8bddca069495d470482994b8e1af8568907e96e147adc5e69f980` |
| 26 | `def` | [ceil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil--00df088eea4e690df940b4c8.md) | 260 | `declaration-track:00df088eea4e690df940b4c80a633173bd7aef52edb2b2d600d055bfd7aa7f6e` |
| 27 | `def` | [fract](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/fract--a7e8bce210fe423cbcb902e3.md) | 264 | `declaration-track:a7e8bce210fe423cbcb902e31c5050ac56165872382b07f3229393674acf43de` |
| 28 | `theorem` | [floor_int](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-int--992eade10d1945d803f6f9fd.md) | 268 | `result-track:992eade10d1945d803f6f9fdd2c74e39cbe9bb5f920ab8f843a6a6396139def1` |
| 29 | `theorem` | [ceil_int](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-int--4117b8ef6c37e55a1367fd1b.md) | 272 | `result-track:4117b8ef6c37e55a1367fd1b04794c7369281368dd913cdd7b1c21a1cf898e86` |
| 30 | `theorem` | [fract_int](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/fract-int--9fb0f42d4723306dc4a77984.md) | 276 | `result-track:9fb0f42d4723306dc4a7798429b29f9fa694b0ef0d9d540b33768024b06fe530` |
| 31 | `theorem` | [floorRing_floor_eq](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring-floor-eq--0fc88ce326a7d2bc4bb55b91.md) | 288 | `result-track:0fc88ce326a7d2bc4bb55b91c048651b3ddf0dc7552c740a1b8773faaf52bc84` |
| 32 | `theorem` | [floorRing_ceil_eq](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floorring-ceil-eq--09f3da200a4718fba3f1ff27.md) | 292 | `result-track:09f3da200a4718fba3f1ff2725bb71c0fdf51e9ddcde88ec3ad619461f35de0c` |
| 33 | `theorem` | [gc_coe_floor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/gc-coe-floor--62cd692a88b1e3f1efe9de3a.md) | 297 | `result-track:62cd692a88b1e3f1efe9de3a6ca96ad82c6b27e8d2497738b973bb9060e81174` |
| 34 | `theorem` | [le_floor](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/le-floor--ebf4a8df01d66f6e0b64ba35.md) | 300 | `result-track:ebf4a8df01d66f6e0b64ba3581c4e1d77a626e9353c8e11d224a6cc96884028e` |
| 35 | `theorem` | [floor_lt](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-lt--f91bcb9ede6d6f656d510ebd.md) | 303 | `result-track:f91bcb9ede6d6f656d510ebd9636e92f1c938787225c842ca8aeafb13637a47b` |
| 36 | `theorem` | [floor_le](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-le--866ffcd8b8a5876927a09015.md) | 307 | `result-track:866ffcd8b8a5876927a090151f46480e283d72b022f3ef5707ca52d0edc62be0` |
| 37 | `theorem` | [floor_le_iff](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-le-iff--ebb193b666756134263dda81.md) | 310 | `result-track:ebb193b666756134263dda81747604344f3e6aa50d9aba5390c05e4af4cf3663` |
| 38 | `theorem` | [lt_floor_iff](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/lt-floor-iff--eec52346bbbd4102f73511d1.md) | 312 | `result-track:eec52346bbbd4102f73511d12ba7cab629f4c81cb34e2bff99fe3136298caf44` |
| 39 | `theorem` | [floor_nonneg](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-nonneg--716863ee7c573646e9e01f58.md) | 314 | `result-track:716863ee7c573646e9e01f5859dbb3fb8716e611be1152966c9513c143e6a1df` |
| 40 | `theorem` | [floor_lt_zero](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-lt-zero--cfef5f19ca03a48a04090646.md) | 316 | `result-track:cfef5f19ca03a48a040906464e64f0fb44e36c4a56ca0158397a83d179a2fe83` |
| 41 | `theorem` | [gc_ceil_coe](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/gc-ceil-coe--e6c3dbe5c746a56238bbdbf4.md) | 320 | `result-track:e6c3dbe5c746a56238bbdbf4f33510c5dfab8d6fe4102b178733ba43807e4ebe` |
| 42 | `theorem` | [ceil_le](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-le--9d8dae6489444784146e42f9.md) | 323 | `result-track:9d8dae6489444784146e42f90b84fcfec5ca9b59cd5fc4a0bbd25115d6e73649` |
| 43 | `theorem` | [lt_ceil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/lt-ceil--832c7df569c6c55c1412064e.md) | 326 | `result-track:832c7df569c6c55c1412064e250d87a0083004c7aaf0267c126687b563253364` |
| 44 | `theorem` | [le_ceil](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/le-ceil--da981e9723ed8e36d2a3f37d.md) | 330 | `result-track:da981e9723ed8e36d2a3f37da82afbe24e11fd3c600130344b9e2039c0a58efc` |
| 45 | `lemma` | [le_ceil_iff](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/le-ceil-iff--49c7b5f25e45270a7d7a621d.md) | 333 | `result-track:49c7b5f25e45270a7d7a621da9eeb33d687fe89bdc8803661c710edb078cab22` |
| 46 | `lemma` | [ceil_lt_iff](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-lt-iff--97562e5203cad1fe934edf52.md) | 335 | `result-track:97562e5203cad1fe934edf5230ef936773464c8f339ab5fe104dd5f4eae19ccc` |
| 47 | `theorem` | [ceil_nonpos](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-nonpos--fa64b07a989814ed466e48c8.md) | 337 | `result-track:fa64b07a989814ed466e48c84b3f660081be1eb2d18b68335cbbdff3b13d1112` |
| 48 | `theorem` | [ceil_pos](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-pos--901183dae7945636f21e2bef.md) | 340 | `result-track:901183dae7945636f21e2bef1a2c8d415e9da872b820f366d0f8e018afb4fb4c` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/instance--bb88f141a6711c478609dc49.md) | 351 | `declaration-track:bb88f141a6711c478609dc49c35629f2acb2d0d5aad08e0de338beeb497340e3` |
| 50 | `theorem` | [Int.floor_toNat](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/int-floor-tonat--1cb1a20bae81d0a02e24df42.md) | 358 | `result-track:1cb1a20bae81d0a02e24df42bb79736558771b9cb074c3d59663e65b66578770` |
| 51 | `theorem` | [Int.ceil_toNat](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/int-ceil-tonat--c2d78e67d8a1ba2ea29b3b4b.md) | 361 | `result-track:c2d78e67d8a1ba2ea29b3b4bd9b636fc746a80f1c0f37536c56db2fbabc5f77d` |
| 52 | `theorem` | [Nat.floor_int](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/nat-floor-int--53da6aa2a27357afb5aac22c.md) | 365 | `result-track:53da6aa2a27357afb5aac22ceb992c4acf0d76faf4b9864deb3dea1e9b6880d4` |
| 53 | `theorem` | [Nat.ceil_int](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/nat-ceil-int--ccdedac62603b5528d5cbe74.md) | 369 | `result-track:ccdedac62603b5528d5cbe7401a8c0ab538e0ff4c9c1ebadb31611322f55566f` |
| 54 | `theorem` | [intCast_mono](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/intcast-mono--32f157af327be8f0c0d1b108.md) | 381 | `result-track:32f157af327be8f0c0d1b108d7d0a8b52b1190a413b48a7f3e38cc143f56a928` |
| 55 | `theorem` | [intCast_strictMono](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/intcast-strictmono--4be1b51822746d4b7e8c50ec.md) | 386 | `result-track:4be1b51822746d4b7e8c50ec095f47b189c06b900cb2259cc94f09f883c34588` |
| 56 | `theorem` | [ceil_nonneg](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/ceil-nonneg--da937192ef6ed4946f49888d.md) | 398 | `result-track:da937192ef6ed4946f49888de9105ed495ee12a1dabbe41fbfa150df3cc5d5ae` |
| 57 | `theorem` | [floor_nonpos](../../../../mathematics/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/declarations/floor-nonpos--f2b548405abe7120598cdfde.md) | 403 | `result-track:f2b548405abe7120598cdfde06252ba479bbc297539d326514cd6648948acfb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
