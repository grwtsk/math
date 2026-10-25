# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LegacyForward.Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9105a3edb339dac32c1fe085c741199acee7891b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9105a3edb339dac32c1fe085c741199acee7891b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/syntax--d3360ba2d66b15fa92ba7069.md) | 28 | `declaration-track:d3360ba2d66b15fa92ba706931b76dfe0eb45dc44469729ec9f11ff73f3f9922` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/syntax--7125866f4a49f848e9c2de00.md) | 29 | `declaration-track:7125866f4a49f848e9c2de002b0ad09a3c27d0636c06b0cf9ebe7f33877a536a` |
| 3 | `def` | [forwardTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/forwardtac--23ad18817fd653125fa1640b.md) | 31 | `declaration-track:23ad18817fd653125fa1640bb75795fce7629e157d4d2dc8fa30099348d7bf10` |
| 4 | `def` | [evalForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/evalforward--fed4b6e13cab7314bc940b2e.md) | 43 | `declaration-track:fed4b6e13cab7314bc940b2ed2ed38900f2ae49f687b0fc67c78df730fb1e862` |
| 5 | `def` | [evalElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/evalelim--fe969180ae0a98039a8d9402.md) | 49 | `declaration-track:fe969180ae0a98039a8d9402643784f487d997bbf963e641149d092f4d9ecda6` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--71377361d971f72a4f4467ad.md) | 54 | `declaration-track:71377361d971f72a4f4467ad6f57fdd5736c91461a29c404bf6cb5aa6095d0a5` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--94ae63afb250257f5b3f03ea.md) | 58 | `declaration-track:94ae63afb250257f5b3f03ea2c5bc43a5d9068066be769d0549d649de7866f48` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--b3809584885f6d7d20b32610.md) | 63 | `declaration-track:b3809584885f6d7d20b326100de20760e3634b21cfdac91e2a752a8f6717d73e` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--4dc1e8443b42ca3d81776644.md) | 68 | `declaration-track:4dc1e8443b42ca3d817766446c78677cdf26b4ba7948187c982fdef3d47b0033` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--967ba4ce1586009f0fae02b5.md) | 73 | `declaration-track:967ba4ce1586009f0fae02b564ad6b9a4048e5d436210fae877c36067f53e1c4` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--f4f1c3b47e1ac70213f03dc6.md) | 85 | `declaration-track:f4f1c3b47e1ac70213f03dc6f6d550850f4977254bfc241847d76dbf64a8bfb9` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--0f34a0ccf282ea3ad7bb5d28.md) | 97 | `declaration-track:0f34a0ccf282ea3ad7bb5d28e061ac80646047f5a553367ef4f5ef3460b957bc` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--b6f33360ea94cd7af26247e4.md) | 111 | `declaration-track:b6f33360ea94cd7af26247e40d4793313a748caec6e8738dcb803436f085d017` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--30b7a72245d95d87e1b29ea0.md) | 131 | `declaration-track:30b7a72245d95d87e1b29ea0c9806fbf90afd210bb3059bdf8e8e7bd6574f4a5` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--b08d62d173d2ac10c0783731.md) | 148 | `declaration-track:b08d62d173d2ac10c07837318754d35627cfdb5e35c5d1880e57c8a5d4a0fcc1` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--d918bb085ca2d06eaac31d43.md) | 168 | `declaration-track:d918bb085ca2d06eaac31d43a208eae87d6936a7146848d7e3a06382df1a696e` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--01bb80c95c30877b08115298.md) | 188 | `declaration-track:01bb80c95c30877b081152989f6200d5145712c399985355aa35ef4b2f855b90` |
| 18 | `axiom` | [A](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/a--175c9ab6aa0170e5bc233306.md) | 191 | `declaration-track:175c9ab6aa0170e5bc2333063361b26f389e2f6da7d0bb58a80a0b2d86b5a294` |
| 19 | `axiom` | [B](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/b--8713c28c4762befdd9e785db.md) | 192 | `declaration-track:8713c28c4762befdd9e785dbfbd5bc9458cde343b9d3cd74452c8559a8f1be18` |
| 20 | `axiom` | [C](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/c--5bdc4e69df329e2351b057f8.md) | 193 | `declaration-track:5bdc4e69df329e2351b057f82c217bcee811e84dbbebbd3b8c2d060f908b70ad` |
| 21 | `axiom` | [ab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/ab--e284ba0e08b26d66f2afcd2d.md) | 196 | `declaration-track:e284ba0e08b26d66f2afcd2de900d0c292ee9b5016b78293c1270158b948e2df` |
| 22 | `axiom` | [bc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/bc--2155c717f865201d5390d941.md) | 199 | `declaration-track:2155c717f865201d5390d94192e54fec59204c41435190ade69fb064d8d9aff1` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--678808db72699ff93de11348.md) | 208 | `declaration-track:678808db72699ff93de113485c32e10507c4958477c401d51777a776b97820c8` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--862b99316a4872832f8ab74f.md) | 217 | `declaration-track:862b99316a4872832f8ab74f22598d7ff2087b7d36d0c3fb4cf81b962d008610` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--47db58adf003506bb7f60ae8.md) | 231 | `declaration-track:47db58adf003506bb7f60ae894e66fdc931c561d6089e8e152e0c6cdd3eb5c87` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--4bb00789a0197ca7d3a8219e.md) | 237 | `declaration-track:4bb00789a0197ca7d3a8219e8301d23d27657cee6e8ef8610d56a2fc7c729b51` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--7c891b8a1089fc48dbfc9b05.md) | 246 | `declaration-track:7c891b8a1089fc48dbfc9b058dbf128f2ead439833ddf58cc40199ffcef9e4ed` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant97201baf1ede800deec9682360f58b242e9e6c2f02f427f2a6e1573888c72fc5.lean/declarations/example--fceb083ddf37215898abd485.md) | 251 | `declaration-track:fceb083ddf37215898abd485d074ee2a7f3baef350f5704f31d9aa6a5cd4d83e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
