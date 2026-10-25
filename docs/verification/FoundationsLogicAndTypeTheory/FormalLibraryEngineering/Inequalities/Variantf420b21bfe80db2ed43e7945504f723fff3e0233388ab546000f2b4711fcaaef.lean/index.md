# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inequalities.Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bed29a30e39a19e6dec40e85f5690182d3e4233",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bed29a30e39a19e6dec40e85f5690182d3e4233`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/real--4790d6e28f0a3731e98027d7.md) | 16 | `declaration-track:4790d6e28f0a3731e98027d74e8e9f08d4f714de961443d27a371e0fde3b70e9` |
| 2 | `axiom` | [Real.linearOrderedRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/real-linearorderedring--b0acea833814d93ab99fb2fd.md) | 18 | `declaration-track:b0acea833814d93ab99fb2fd920d258ddaf6d22591889b9e030232e1ccde004e` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--9e8ddcaeb2235362aba65665.md) | 22 | `declaration-track:9e8ddcaeb2235362aba65665144e463e3d1c514f578f824089f647ef5e562941` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--912ae0bb1988ac2504816d74.md) | 24 | `declaration-track:912ae0bb1988ac2504816d7415b065c61c314007e36c9a65f5495a3a2082119e` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--b74e559a7f406cb0be5cbde5.md) | 25 | `declaration-track:b74e559a7f406cb0be5cbde5ed3d6ef1735084ad867c3648b39c3a86475c98d2` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--ca1f332b648e5f2058f47429.md) | 27 | `declaration-track:ca1f332b648e5f2058f47429a22bfddfebc8f9366784bfc1ab5a54dd68e5810a` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--b782b00fc7a9f8988f04d016.md) | 29 | `declaration-track:b782b00fc7a9f8988f04d016993c27328370f837f1eb12898a16c68b9c732e32` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--50aa8cdd7d5723e33262f545.md) | 32 | `declaration-track:50aa8cdd7d5723e33262f54547b9a7558606209592d5267bc808a8c34886bce1` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--636c21a1038ae6eb8846e248.md) | 34 | `declaration-track:636c21a1038ae6eb8846e248b8127d2d1e29618c49de44b9824413902e4642d4` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--32459e33c0dc6ac01c6a9505.md) | 35 | `declaration-track:32459e33c0dc6ac01c6a9505952e844ecdee225549e2a297c04e2dd8fce13ca9` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--cf730ec79cd82fb80417cdf5.md) | 37 | `declaration-track:cf730ec79cd82fb80417cdf5a8feefa60adca476e06702d01ce75165ab8b0d57` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--9e603c55c4d6ebd3c90b849f.md) | 39 | `declaration-track:9e603c55c4d6ebd3c90b849fe6894ac7c0f743d09079349283bbbb51841effec` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--0c9acef047480f06c01e37f2.md) | 41 | `declaration-track:0c9acef047480f06c01e37f28be1c496d20a6328d6f2a9e5862253da06ed357b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--9d06598d2c06ec5282ab2b26.md) | 45 | `declaration-track:9d06598d2c06ec5282ab2b2603080c3b7892162d59821dfda7078c9bab732aeb` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--b92a1cac9f4ba7e27b091fb6.md) | 49 | `declaration-track:b92a1cac9f4ba7e27b091fb6b25649b47674ce118e82b4bc82c52f3e798b019b` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--6de225cdc4db31287c77cd30.md) | 51 | `declaration-track:6de225cdc4db31287c77cd301636900afff5a656ccf00902bcaeb23dbfda8421` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--2b6be650c9966ba0099f790c.md) | 53 | `declaration-track:2b6be650c9966ba0099f790c95d78063df3b923238fb4a9e45b65143f14ca543` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--205374834dfa6eb0dede4e45.md) | 55 | `declaration-track:205374834dfa6eb0dede4e45633f96648ec1320a9504fd9125b0d76301b802d1` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--f3dc3a5cacdd912e8309877d.md) | 57 | `declaration-track:f3dc3a5cacdd912e8309877d11451d813c5726e2e137a9a4d2d41a1cea86a5a2` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--7f6dc7db2d1c2d43bb987208.md) | 59 | `declaration-track:7f6dc7db2d1c2d43bb987208517d0a9c07ef30bda80e9002606d2217c2091110` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--bfce587db5532031cc6df6f2.md) | 61 | `declaration-track:bfce587db5532031cc6df6f2bd189b93b2038cfd4c03666f5f67fd995b1358e4` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--737c21159ae0de760ab3381f.md) | 65 | `declaration-track:737c21159ae0de760ab3381fc6bd764d074b0d2562abb6c8d6f10e655709dc13` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--0ef1d3f7d2cbf0fd9bc15fde.md) | 68 | `declaration-track:0ef1d3f7d2cbf0fd9bc15fdec0341d9853cb8b8e318dd8e7a9f6d20d3ef7d7fd` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--67bee67711692d67e65bacd4.md) | 71 | `declaration-track:67bee67711692d67e65bacd426b3ff7a73520354b408870c6ea4a52394d7353d` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--6ce25233e87769033741a4d3.md) | 73 | `declaration-track:6ce25233e87769033741a4d35dc45f390cd416400e428c23ab036e3da165922e` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--92ad82cde4b8b9299b94413f.md) | 75 | `declaration-track:92ad82cde4b8b9299b94413fd8edc352c595b59754f70dcb310f404be9e45df0` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--80c1fcb91196c2a7eb60b11a.md) | 77 | `declaration-track:80c1fcb91196c2a7eb60b11adbff3114895f83aca6ae414c745c6c6ab7cfc3c5` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--0a345175aeb3ddd06a4ef15d.md) | 79 | `declaration-track:0a345175aeb3ddd06a4ef15d39978e6800bd319f96f120f47d16707e6b1cd75f` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--a09677462a63a854c7f0a611.md) | 81 | `declaration-track:a09677462a63a854c7f0a6119847ea0317180f7431b3c441819379a7da81f70e` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--4a4580115a607c369a270ad1.md) | 83 | `declaration-track:4a4580115a607c369a270ad14dece0811983101a0f7e5b0ce1cc045958abf1cb` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--1bb52af8eba507d41caf7dc4.md) | 87 | `declaration-track:1bb52af8eba507d41caf7dc4199294cc11269affb15eb9e537f0bc5ebee87ed6` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--68079f49f51a169a0b7818d8.md) | 90 | `declaration-track:68079f49f51a169a0b7818d8f2413b70b1af28c8a77d681c3350db9ba53972c6` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--bd846da4ccaf4b8097f934ca.md) | 93 | `declaration-track:bd846da4ccaf4b8097f934cae7a3258d8296df549021e4882895bc1198383e3d` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--67feaf16b53b65a818936894.md) | 99 | `declaration-track:67feaf16b53b65a8189368944ce67569fcde0a13b71bd24d325c85224f3f7507` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--5d101e1818f203161890a4b2.md) | 103 | `declaration-track:5d101e1818f203161890a4b21fa103d93642ba9817980174ce094d85315e1f41` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--d1d53d2b03ba8c5264cb653f.md) | 111 | `declaration-track:d1d53d2b03ba8c5264cb653f862d120777ed7401ad4944d0d63fc444de55424a` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--802ae21ce9da7a699aaf6565.md) | 119 | `declaration-track:802ae21ce9da7a699aaf65652bbf2b081aac789646030ec266e9be658c20bd6c` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--52478392cf547b85c2eed5e8.md) | 123 | `declaration-track:52478392cf547b85c2eed5e8c5148cde3d8f1d599e96607fd120889d3b90364b` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--2610e08e4f2805340f2abaf1.md) | 128 | `declaration-track:2610e08e4f2805340f2abaf1e461313910141d978766ecdef3bafda4186561fe` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--4313d8351443795378c4d2c2.md) | 130 | `declaration-track:4313d8351443795378c4d2c2f0713dc0d1b88d772d098e2565d9d5e4b3c6cccf` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--ec16e9f2b2aa848a794a437e.md) | 131 | `declaration-track:ec16e9f2b2aa848a794a437eab038773fa635551ed096a5439a7643844066323` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--e0b9c15e3300d892aa6668a0.md) | 132 | `declaration-track:e0b9c15e3300d892aa6668a0490b00d431cd0fe6c510ce57c7aa411f8dfc9b9c` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--b8d8176bdc6ada488bff6dfa.md) | 134 | `declaration-track:b8d8176bdc6ada488bff6dfa785bee496dbf0bc7c3394b68a7e58685166d9d09` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--e3d5b08adb5fb4b49a5eb3d2.md) | 140 | `declaration-track:e3d5b08adb5fb4b49a5eb3d2c4762b1f5c4dad9e68d32c569d33d3ff21f7bc34` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--82def078d76efe363972b93b.md) | 145 | `declaration-track:82def078d76efe363972b93b8e0d48bda1baaa5742b440b7fd93ef3c4a429603` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--7aa599b4c4a23b9f26b3c9e3.md) | 152 | `declaration-track:7aa599b4c4a23b9f26b3c9e3487e6b05f4c5f93ea086bc8e325a8ee8f6e6bd9d` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--e2b5bf2146b3b5d4a76f38b4.md) | 162 | `declaration-track:e2b5bf2146b3b5d4a76f38b415676afdd0bc209c8dee44e63c6ec37a41da3afa` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--da2da062af4d8a6ebfa1e7f8.md) | 169 | `declaration-track:da2da062af4d8a6ebfa1e7f87e2c9ea91940a7ce314e62b0f8db73e2606a91fc` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--e870944b09287af50ef814fa.md) | 175 | `declaration-track:e870944b09287af50ef814fa0ce55530714ce6b7dfcc28139eb8dfec13eeb0e9` |
| 50 | `axiom` | [f](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/f--f93cf2d614e5539d079194f3.md) | 180 | `declaration-track:f93cf2d614e5539d079194f33b54eb0840685f7fc1bdd6333cb2572b5cb3238d` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--e1e966e74d5e5ad216b13e34.md) | 182 | `declaration-track:e1e966e74d5e5ad216b13e34a22e1c02674961cd9693ac8aa279016920732aa6` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--89c21cbfc56296b3e25fed15.md) | 188 | `declaration-track:89c21cbfc56296b3e25fed15744c26f081bfae078c4b774d1c9524e75c548471` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variantf420b21bfe80db2ed43e7945504f723fff3e0233388ab546000f2b4711fcaaef.lean/declarations/example--7c570ff3e400b3d6c607b2b9.md) | 194 | `declaration-track:7c570ff3e400b3d6c607b2b9ab04a77b15d4d97d41dfe70ccf6900dd75d7dbcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
