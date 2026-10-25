# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Manifest.Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5649993de574097ef28da26f9ae164c92d6afd18",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5649993de574097ef28da26f9ae164c92d6afd18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Error` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Util.JsonObject` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Coe` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Manifest.version](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/manifest-version--a5dbd205304f57b46e3f7c7a.md) | 56 | `declaration-track:a5dbd205304f57b46e3f7c7a7480c2719201d83d8a6f8a6c68ed75898578e635` |
| 2 | `inductive` | [PackageEntryV6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/packageentryv6--41b3da2658ee9da899098cd9.md) | 59 | `declaration-track:41b3da2658ee9da899098cd9b89e89494e30750a2cb47dc8ce249833b666d37a` |
| 3 | `inductive` | [PackageEntrySrc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/packageentrysrc--b8d9de6aefb4d2bf9ee58c1a.md) | 69 | `declaration-track:b8d9de6aefb4d2bf9ee58c1a2c6ef2c075245b18415d04810b7e527eda3056fe` |
| 4 | `structure` | [PackageEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/packageentry--414edd557950db4818592576.md) | 85 | `declaration-track:414edd557950db4818592576298c53d130c073008f8228db20f9672d4d13f9f6` |
| 5 | `def` | [toJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/tojson--910ca3e262bea36b6fc41c33.md) | 98 | `declaration-track:910ca3e262bea36b6fc41c331dfda4b75563f45c118689fa91f89724e97d4b07` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/instance--7a8763189a1140ccc403a9bf.md) | 121 | `declaration-track:7a8763189a1140ccc403a9bf9ef1e6215198e4be13ddca90f6e9d7a8e4b59c42` |
| 7 | `def` | [fromJson?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/fromjson--e531989e49f21901b98e9463.md) | 123 | `declaration-track:e531989e49f21901b98e9463381d84f978b6414e582191e94e840e04782124a2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/instance--f15402df531ff31818d89ab4.md) | 153 | `declaration-track:f15402df531ff31818d89ab49041756fb4a0ec63d55970e3ab027f1a04632cfe` |
| 9 | `def` | [prettyName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/prettyname--8b2c322927f4cc020e77dfb2.md) | 155 | `declaration-track:8b2c322927f4cc020e77dfb294a72effaa2dca771207592ed2908792e96fd4ef` |
| 10 | `def` | [dirName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/dirname--ad37bc02b20b608b19317b79.md) | 159 | `declaration-track:ad37bc02b20b608b19317b7926f03c6f80ee8cd657de59432fd2c71716161601` |
| 11 | `def` | [inputRev?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/inputrev--0fbb28dac31adfde7f2f472f.md) | 162 | `declaration-track:0fbb28dac31adfde7f2f472fa65a3ee61f55f146771aea918ac0af513b795a71` |
| 12 | `def` | [setInherited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/setinherited--8f268cbf09473ad432e596aa.md) | 168 | `declaration-track:8f268cbf09473ad432e596aa12d96c87d0a550e286f509885c00bfe9f6c331ba` |
| 13 | `def` | [setConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/setconfigfile--9e12f30462df963f04747d6b.md) | 172 | `declaration-track:9e12f30462df963f04747d6bc8809c6d5dae719c0523d91b1c16ce75aca7b147` |
| 14 | `def` | [setManifestFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/setmanifestfile--fa401f1cf9137ed5545bd1b0.md) | 176 | `declaration-track:fa401f1cf9137ed5545bd1b050220e39e2a701a2108417f23600d0ada8bce3a7` |
| 15 | `def` | [inDirectory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/indirectory--8ff2f4f4c43164f7225bb4e8.md) | 180 | `declaration-track:8ff2f4f4c43164f7225bb4e8216c4ed423da4a0106fb32bf6218031871721770` |
| 16 | `def` | [ofV6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/ofv6--7ae0beaf1d69a31f8a1ac626.md) | 183 | `declaration-track:7ae0beaf1d69a31f8a1ac6266dd911782e1d5fa05110c28be23b32865a8eddb6` |
| 17 | `structure` | [Manifest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/manifest--fa140993d1618e93e0c88055.md) | 192 | `declaration-track:fa140993d1618e93e0c88055197c893d233adae99e2eb7480484e84fed9a738a` |
| 18 | `def` | [addPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/addpackage--672e9e295fb382acb7f782ce.md) | 202 | `declaration-track:672e9e295fb382acb7f782cefa4e6ddd016966668565f114298022c5551eded9` |
| 19 | `def` | [toJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/tojson--bbb90c0e68cca6a7c48afd65.md) | 205 | `declaration-track:bbb90c0e68cca6a7c48afd65dd332c403c7237ee704f679b8a76e20edad84380` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/instance--8a2441d651b78dc06b1819e9.md) | 215 | `declaration-track:8a2441d651b78dc06b1819e9f8cb40efc553ca858ba1f27d2b0a7722ffd55b38` |
| 21 | `def` | [getVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/getversion--f1eb46dfe841d44c0e667847.md) | 217 | `declaration-track:f1eb46dfe841d44c0e6678478245c5d6b5b54f0c8512159ae24b215ac7f97bf6` |
| 22 | `def` | [getPackages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/getpackages--54f879848f59e7bf5770cf5b.md) | 233 | `declaration-track:54f879848f59e7bf5770cf5b7e8a5aa857c0c14017977c0930a7ffb3ca5ec266` |
| 23 | `def` | [fromJson?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/fromjson--4da443c69142343b25071ec5.md) | 239 | `declaration-track:4da443c69142343b25071ec5b98c1d9ec8fecec6582e12bdfba0bf66b38b564f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/instance--56551cd1320b10fa49265677.md) | 249 | `declaration-track:56551cd1320b10fa492656770683c1abb4a4de40a256278b3b2f63aef76d0892` |
| 25 | `def` | [parse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/parse--427912425ff4cf8e20194dd2.md) | 252 | `declaration-track:427912425ff4cf8e20194dd270bf5907dcfe3bd9eb5cf7418f98a0b996e1f71d` |
| 26 | `def` | [load](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/load--0414cfeb1a3e4bad45522e4e.md) | 258 | `declaration-track:0414cfeb1a3e4bad45522e4e5703369a16ac9d487b57e758ab63a250c24aa1be` |
| 27 | `def` | [load?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/load--95defcd6917a93229aced906.md) | 268 | `declaration-track:95defcd6917a93229aced9068119daf96c527bf9d5d6d345f301a96d980b2d84` |
| 28 | `def` | [save](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/save--c78a412c33ec80f770bad2d8.md) | 275 | `declaration-track:c78a412c33ec80f770bad2d8c03e82f7124ad878c5a79bf83ec9cc9c48f24bfe` |
| 29 | `def` | [decodeEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/decodeentries--c8a3f1c8222ee6fbd9298ef1.md) | 280 | `declaration-track:c8a3f1c8222ee6fbd9298ef1dcd7dd4f6678d60d767bef5113c3efbf082241af` |
| 30 | `def` | [parseEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/parseentries--b25212bafe429d1d1c4b4e2d.md) | 285 | `declaration-track:b25212bafe429d1d1c4b4e2dcdae0abab3d94308824e936ddcbc977710602346` |
| 31 | `def` | [loadEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/loadentries--c424439fb30b0bf6ce0129ce.md) | 291 | `declaration-track:c424439fb30b0bf6ce0129ce9df860046cacc86cb6de307db93905c42597596e` |
| 32 | `def` | [tryLoadEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/tryloadentries--6e7206bd9f156380f9cd0dfa.md) | 301 | `declaration-track:6e7206bd9f156380f9cd0dfade180e9220ffe72de991f39ab1ec462e3fec5fc7` |
| 33 | `def` | [saveEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/declarations/saveentries--49df7be812bc577112509adf.md) | 308 | `declaration-track:49df7be812bc577112509adf397fb4e1a1e9c90771e18f435f27172986c4a596` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
