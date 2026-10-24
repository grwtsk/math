# Verification target: GRWTSK.Topology.FilterBasis.Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c6ee90865126cced448657ca0a082a133677a74",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/index.md) · [Full source](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c6ee90865126cced448657ca0a082a133677a74`.

Source path: `GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GroupFilterBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/groupfilterbasis--15bfdbf77b6b320f02ba3da0.md) | 47 | `declaration-track:15bfdbf77b6b320f02ba3da05216dab4219d43cf2139716de3f3995d0ca18461` |
| 2 | `class` | [AddGroupFilterBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/addgroupfilterbasis--75951572a52da0839602aa4d.md) | 57 | `declaration-track:75951572a52da0839602aa4d6fbaaad27640c8fedb51132420b279b5a3a62b66` |
| 3 | `def` | [groupFilterBasisOfComm](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/groupfilterbasisofcomm--24f9e6b8c633da19be8b1c9f.md) | 68 | `declaration-track:24f9e6b8c633da19be8b1c9f919ff014c6dfb8bbafa2071ff841936694e1cfe3` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--8223de35e87eebf42c3aca06.md) | 85 | `declaration-track:8223de35e87eebf42c3aca06fadfbba5acb65169bfb4e87f4c2f746984a5939b` |
| 5 | `theorem` | [one](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/one--e145bc37dc3ca71525e96409.md) | 89 | `result-track:e145bc37dc3ca71525e96409e83bfe4e27668d872f41b6e22ff5662ac8895f95` |
| 6 | `theorem` | [mul](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/mul--799837565a57756ea086072e.md) | 93 | `result-track:799837565a57756ea086072e6078caeaf68bcb25fceccae0ac4b4bf90526d924` |
| 7 | `theorem` | [inv](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/inv--06db2a83f25c87108d3d0e4b.md) | 97 | `result-track:06db2a83f25c87108d3d0e4bd768c85a4b39b4a0849c694200b26adbbd48b027` |
| 8 | `theorem` | [conj](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/conj--cb55ce6e9ae20ba33833a962.md) | 101 | `result-track:cb55ce6e9ae20ba33833a96217a5e2a94da0be5dec3347af4f8540bcf67cb8a7` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--08a8faf245600307b70f5cc9.md) | 108 | `declaration-track:08a8faf245600307b70f5cc9509279583083c43fd3019f5937c76f8d0aa8b0f5` |
| 10 | `theorem` | [subset_mul_self](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/subset-mul-self--efc65ea194e63e42e1bf3981.md) | 119 | `result-track:efc65ea194e63e42e1bf3981948a93dc551e6057ee6bfc86f9fd92fdde041957` |
| 11 | `def` | [N](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/n--31efc8ecac7b01fa97a2baae.md) | 124 | `declaration-track:31efc8ecac7b01fa97a2baae51008dd0a41e6227df6896ea208aa8987bde40a7` |
| 12 | `theorem` | [N_one](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/n-one--8b28e3c15fe6a513d58df264.md) | 128 | `result-track:8b28e3c15fe6a513d58df2645bac4a3c2d006868f9e66cf9051327991e203943` |
| 13 | `theorem` | [hasBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/hasbasis--589d85242c1d79889633f9f7.md) | 132 | `result-track:589d85242c1d79889633f9f790c7c1da8df41a2bb083ab49cd523edf6970e8d5` |
| 14 | `def` | [topology](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/topology--fda11c1f7183b0bfcad6c76e.md) | 138 | `declaration-track:fda11c1f7183b0bfcad6c76e9fd5dc470176ecc9153916f86c57ea84026e8ea6` |
| 15 | `theorem` | [nhds_eq](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/nhds-eq--6333f1f05b45cf59730c535b.md) | 142 | `result-track:6333f1f05b45cf59730c535bd9924268aaa0851bbd9aa475bb7c8745ed1a5002` |
| 16 | `theorem` | [nhds_one_eq](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/nhds-one-eq--2fa5af1d3911a4bb9522d7b5.md) | 157 | `result-track:2fa5af1d3911a4bb9522d7b5da9ea77e40c322e21655935adc26fe429c70e491` |
| 17 | `theorem` | [nhds_hasBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/nhds-hasbasis--cac627d6c572a77d2803cb03.md) | 164 | `result-track:cac627d6c572a77d2803cb03c886a9d4a8611bbc1f845b42dc622840e12cc06e` |
| 18 | `theorem` | [nhds_one_hasBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/nhds-one-hasbasis--2c5cfee1a6376ebb45d20955.md) | 170 | `result-track:2c5cfee1a6376ebb45d20955d7b20a632a6e48e9b5fd35de464b79f7fc2494e7` |
| 19 | `theorem` | [mem_nhds_one](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/mem-nhds-one--870c2eee4fced650725598dd.md) | 176 | `result-track:870c2eee4fced650725598dd63cc317f098d9d591573e85bb309d6a0825d3bbc` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--a9312aa96b31d6f60f4ab791.md) | 186 | `declaration-track:a9312aa96b31d6f60f4ab791456192e8ae3b1f02123f6878d2129b014f3fc7c2` |
| 21 | `class` | [RingFilterBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/ringfilterbasis--93dd93a501e2232e3e581dc6.md) | 216 | `declaration-track:93dd93a501e2232e3e581dc6e46e7ed067183ba42be4e3b213617f9ba084ef56` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--395b0b665cf872e2c3938bf4.md) | 225 | `declaration-track:395b0b665cf872e2c3938bf4cbe0c97979af34fcbc3039d01a91fe67cefc0a87` |
| 23 | `theorem` | [mul](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/mul--02527d270e1f805df99d3bc2.md) | 228 | `result-track:02527d270e1f805df99d3bc269b108f1ce5fa277d75bd763cd62c38befef68d0` |
| 24 | `theorem` | [mul_left](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/mul-left--e6d751b31568ec838c6d92ae.md) | 231 | `result-track:e6d751b31568ec838c6d92ae6b931ece1fc0335c75e31e401dbe60d3cf4aaefa` |
| 25 | `theorem` | [mul_right](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/mul-right--c17d20b76085320a065f321e.md) | 234 | `result-track:c17d20b76085320a065f321ee27a1b8087eff1e349755f8e1996ea588c81a22f` |
| 26 | `def` | [topology](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/topology--7fab26827c5aec413699186c.md) | 239 | `declaration-track:7fab26827c5aec413699186cd6bff6b3656d6d61919c65960d9ccb4dde053a49` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--11e6636fc2191c8d1a5500ef.md) | 244 | `declaration-track:11e6636fc2191c8d1a5500efff33f027195632cab0fcc9b284e534743224c076` |
| 28 | `structure` | [ModuleFilterBasis](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/modulefilterbasis--9b10c29e6d2c814c16d5f055.md) | 274 | `declaration-track:9b10c29e6d2c814c16d5f0553ce8aea26d66d308cb738f27766dbc493c76f25a` |
| 29 | `instance` | [GroupFilterBasis.hasMem](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/groupfilterbasis-hasmem--a9679e918f4cdb1e0c7a4836.md) | 285 | `declaration-track:a9679e918f4cdb1e0c7a4836a8c3f35e4908ac4d433479c020aa67a627d65c99` |
| 30 | `theorem` | [smul](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/smul--b7d550ad8091f9d36fb2345d.md) | 288 | `result-track:b7d550ad8091f9d36fb2345dcf0da8442f0d63cb7d84e2c1d84b34d4321cabcd` |
| 31 | `theorem` | [smul_left](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/smul-left--1f5275857d12837ff826d66f.md) | 291 | `result-track:1f5275857d12837ff826d66f9373462bcbffc106db8e1faf28efe9731725ad83` |
| 32 | `theorem` | [smul_right](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/smul-right--3ef687d8ce286e760c8fc72d.md) | 294 | `result-track:3ef687d8ce286e760c8fc72d0c3f3760ffbef3d7dd440beaf78de5ac8ad7d0bb` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--390af8cda434bc61afc51da8.md) | 299 | `declaration-track:390af8cda434bc61afc51da89eea89772857efea18637eb9961c5c476ac0fa9d` |
| 34 | `def` | [topology](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/topology--98e0a5ec35134e81e5db0f16.md) | 320 | `declaration-track:98e0a5ec35134e81e5db0f16bd3c4f22b8e91673a97aa503229d5f71fec3a1d9` |
| 35 | `def` | [topology'](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/topology--5990e9a0377f8065262f0115.md) | 326 | `declaration-track:5990e9a0377f8065262f0115796554ae49544b32212989aecd0619786362272a` |
| 36 | `theorem` | [_root_.ContinuousSMul.of_basis_zero](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/root-continuoussmul-of-basis-zero--e092afcc5f0ab7ebe42f92ec.md) | 339 | `result-track:e092afcc5f0ab7ebe42f92ecb63d0e3e5efcf62366141095a9dec443d14883e1` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/instance--ebb953d33ff563893f50bd2a.md) | 363 | `declaration-track:ebb953d33ff563893f50bd2a5aec3c4ba5a28872f2857fb29fd5329169f7e69e` |
| 38 | `def` | [ofBases](../../../../mathematics/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/declarations/ofbases--29a1217159c061dd12820520.md) | 373 | `declaration-track:29a1217159c061dd128205204d8ed5a2bfb374b667746df3bf1759fdc8d20428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
