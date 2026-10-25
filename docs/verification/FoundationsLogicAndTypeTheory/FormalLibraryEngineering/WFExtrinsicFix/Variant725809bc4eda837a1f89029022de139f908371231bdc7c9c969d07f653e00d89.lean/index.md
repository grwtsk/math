# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFExtrinsicFix.Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Classical` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opaqueFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/opaquefix--cf5ba9f277ae8c9a2320c7fb.md) | 52 | `declaration-track:cf5ba9f277ae8c9a2320c7fb8e0f1e9fdc312e4e1d494d3c6cf9d0112a4b228a` |
| 2 | `def` | [extrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix--74f858aba5759e3e5a043199.md) | 75 | `declaration-track:74f858aba5759e3e5a0431991ac9ab8e547ad9052443970e4126998b9816c860` |
| 3 | `theorem` | [extrinsicFix_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-fix--4284c55795f12648877cb140.md) | 85 | `result-track:4284c55795f12648877cb140c04d21957f6b5f8d669ec685e217655084c13a75` |
| 4 | `theorem` | [extrinsicFix_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-apply--387ee4505271dae19e2c260b.md) | 91 | `result-track:387ee4505271dae19e2c260b19227aef2048d1ef989102e5382f7fe10cc115e6` |
| 5 | `theorem` | [extrinsicFix_invImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-invimage--e5decd8d123a39378b5192d9.md) | 97 | `result-track:e5decd8d123a39378b5192d94599bf653d4fa8f10a0a66a16d9886be5882119f` |
| 6 | `def` | [opaqueFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/opaquefix--467e06bdf4f0840f85e0c971.md) | 136 | `declaration-track:467e06bdf4f0840f85e0c971a762c93db7e2128fd53eb2c83c61bb02def7cdf5` |
| 7 | `def` | [extrinsicFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix--24c6ccebb0e1dced3a47aa98.md) | 162 | `declaration-track:24c6ccebb0e1dced3a47aa98fe44c96bbfe0c83b91920460142366dcd934f0e4` |
| 8 | `theorem` | [extrinsicFix₂_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-fix--c221d5e8897a3b3588a1f57a.md) | 171 | `result-track:c221d5e8897a3b3588a1f57a5365370b6157b76216a4619cfc8ae0e2b6ef3074` |
| 9 | `theorem` | [extrinsicFix₂_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-apply--bafb4252764b32129bd2555c.md) | 178 | `result-track:bafb4252764b32129bd2555cc4b0a94c9ae02aead6003f8625e3fedd0b8f8336` |
| 10 | `def` | [opaqueFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/opaquefix--8d30c80ab7c6cf29cb9cc479.md) | 208 | `declaration-track:8d30c80ab7c6cf29cb9cc47972d9ff26002b948c1397b9ee16bdc3090446d6d9` |
| 11 | `def` | [extrinsicFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix--8b79e6a6f19177e17afc63a4.md) | 234 | `declaration-track:8b79e6a6f19177e17afc63a4b99b9e777f673e6e20f8169b584d2c778cca0af1` |
| 12 | `theorem` | [extrinsicFix₃_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-fix--66e5179822855ea4a02758f6.md) | 244 | `result-track:66e5179822855ea4a02758f6b2c3e56583709378ccb941a665f1a3acce41d7ef` |
| 13 | `theorem` | [extrinsicFix₃_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/extrinsicfix-eq-apply--44d4f0fb87e53149cadc4f02.md) | 251 | `result-track:44d4f0fb87e53149cadc4f0283f520256f61673d641e8baa6661e29c22ff9ef6` |
| 14 | `def` | [partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix--d14b955d6f2011166bbdca3c.md) | 293 | `declaration-track:d14b955d6f2011166bbdca3c7bd0f8f547f798c6f9d21a3db116f8d5ae8f0548` |
| 15 | `theorem` | [partialExtrinsicFix_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply-of-acc--d22083007345ae36d365724c.md) | 305 | `result-track:d22083007345ae36d365724ce3459c76f030b2cf5814fe0f6b612c0227725d21` |
| 16 | `theorem` | [partialExtrinsicFix_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply--8dccd2903de5cfd838d83d9e.md) | 340 | `result-track:8dccd2903de5cfd838d83d9e1b6e8244c953a0cd090e1b775a9b194a086e3b17` |
| 17 | `theorem` | [partialExtrinsicFix_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-fix--d76acdb8e68efa66243bd1cf.md) | 345 | `result-track:d76acdb8e68efa66243bd1cf741984a1c78a4388f9a70b589d9824f7d39cfc14` |
| 18 | `def` | [partialExtrinsicFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix--589810fd81bc6e460d7f8fef.md) | 378 | `declaration-track:589810fd81bc6e460d7f8fef937f6e3f49d0f401c4ebd2b54ed5675170775bfb` |
| 19 | `theorem` | [partialExtrinsicFix₂_eq_partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-partialextrinsicfix--9ffedcc46e7dc6e553015352.md) | 393 | `result-track:9ffedcc46e7dc6e5530153528ed8d11f083d0361f4eb55fa7f268974e6c9844b` |
| 20 | `theorem` | [partialExtrinsicFix₂_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply-of-acc--0a1ac1516d364a1a34986454.md) | 424 | `result-track:0a1ac1516d364a1a34986454dd63233ce2a2b04ad38608f898a0ed0a054197be` |
| 21 | `theorem` | [partialExtrinsicFix₂_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply--02ed29e807bde92cfe5e687e.md) | 433 | `result-track:02ed29e807bde92cfe5e687e469191650fcc742c95f5344e72a297065098d538` |
| 22 | `theorem` | [partialExtrinsicFix₂_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-fix--bc27ffe1c5ce6f89aa8bbed1.md) | 440 | `result-track:bc27ffe1c5ce6f89aa8bbed1dcdc37d28910f8a31dd8e54a9db537afc9f78502` |
| 23 | `def` | [partialExtrinsicFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix--a65225743007f5fa7ca67a5d.md) | 471 | `declaration-track:a65225743007f5fa7ca67a5d03cf45ae10f9e57b3e7c99608723c2fbe06c8dfb` |
| 24 | `theorem` | [partialExtrinsicFix₃_eq_partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-partialextrinsicfix--7af965506036922dc23b56dc.md) | 486 | `result-track:7af965506036922dc23b56dc42661eab1fe88061ce9fbf3aedbee2e40c7a3b8c` |
| 25 | `theorem` | [partialExtrinsicFix₃_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply-of-acc--06cf704420bffb38ede43246.md) | 517 | `result-track:06cf704420bffb38ede4324660aa029750ec03671bdfcea10872b7a208f21aeb` |
| 26 | `theorem` | [partialExtrinsicFix₃_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-apply--41792f7ab8a54d818b0632ec.md) | 526 | `result-track:41792f7ab8a54d818b0632ec60879cd8e7e373d755bf9f9b52dfebde128cf329` |
| 27 | `theorem` | [partialExtrinsicFix₃_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/declarations/partialextrinsicfix-eq-fix--7d61fdc26e394454435a9372.md) | 533 | `result-track:7d61fdc26e394454435a93721ca6e6711e9d645ffb10633d40cd2848e39c3ac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
