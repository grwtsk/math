# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackageFactories.Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61847d5701875a777a106c652cabd4acfbb87ca4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61847d5701875a777a106c652cabd4acfbb87ca4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreorderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/preorderpackage--7ef6bfc397e4c91b64b2a83a.md) | 31 | `declaration-track:7ef6bfc397e4c91b64b2a83ad0e9e93d8aa836359feb613f16301a4102f23c62` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instance--6b6704f9f8abb458413543f5.md) | 36 | `declaration-track:6b6704f9f8abb458413543f5a826688171946a6995867bad3448dbf53277a23f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instance--0818f84e8bac360954385a58.md) | 37 | `declaration-track:0818f84e8bac360954385a58d6c33be5665c0e596e905ad0c51c394ce5aaaac5` |
| 4 | `instance` | [beqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/beqofdecidablele--971281d2d87f46fbf7beef87.md) | 41 | `declaration-track:971281d2d87f46fbf7beef87da4c54d0b6da4751d608d4f258a372f3fd0b76d4` |
| 5 | `instance` | [instLawfulOrderBEqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instlawfulorderbeqofdecidablele--2a78f8650e64d4237582eb37.md) | 45 | `declaration-track:2a78f8650e64d4237582eb376de245298165d203362a92d90536039ecb9b19bf` |
| 6 | `def` | [decidableLTOfLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/decidableltofle--4c1bad77eb984478b2783341.md) | 51 | `declaration-track:4c1bad77eb984478b278334168ff329ba6f3642df6908244038b4ef2aabf7c26` |
| 7 | `structure` | [Packages.PreorderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-preorderofleargs--8776edf77d4bab4540898bd1.md) | 64 | `declaration-track:8776edf77d4bab4540898bd12cbeebf247d1fbecf26faa2d475d982d50bbeed2` |
| 8 | `def` | [PreorderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/preorderpackage-ofle--a56291ea31771203a278dad8.md) | 175 | `declaration-track:a56291ea31771203a278dad89f421eff0478a294b1656dbc87a88e8770f9eaaf` |
| 9 | `class` | [PartialOrderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/partialorderpackage--0090004b28c3baa97b906ad0.md) | 195 | `declaration-track:0090004b28c3baa97b906ad01cee8f342f9769454afe40195322ea9f63fba760` |
| 10 | `structure` | [Packages.PartialOrderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-partialorderofleargs--0e273c6871c574212a38aa5c.md) | 203 | `declaration-track:0e273c6871c574212a38aa5cc913448890df32aac0d572bb20e43299c3ea5a83` |
| 11 | `def` | [PartialOrderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/partialorderpackage-ofle--3de95cbde3ff0c4b576dc8a5.md) | 260 | `declaration-track:3de95cbde3ff0c4b576dc8a5e461412b33a0ade3d60b7847fb40a477ecc4e1cb` |
| 12 | `instance` | [instOrdOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instordofdecidablele--1ba1258e46505fa74c98479a.md) | 269 | `declaration-track:1ba1258e46505fa74c98479ac990887120dd3b219e54064875bc4a559d1a7806` |
| 13 | `theorem` | [isLE_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/isle-compare--ea40499813101a78ac510c25.md) | 273 | `result-track:ea40499813101a78ac510c256851c8fb878d667267c1472422b6de6129cd90ad` |
| 14 | `theorem` | [isGE_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/isge-compare--359c00b20a830542a4b97263.md) | 280 | `result-track:359c00b20a830542a4b9726357aec3ac5061da3d501357f29bf0914f281101c7` |
| 15 | `instance` | [instLawfulOrderOrdOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instlawfulorderordofdecidablele--c7e55d708ef43d3a8a9d772e.md) | 289 | `declaration-track:c7e55d708ef43d3a8a9d772e676c7ab97863e66fad476d7e2ac04d12fe5ffa43` |
| 16 | `class` | [LinearPreorderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearpreorderpackage--1918c98ae735cc7dd86e2964.md) | 301 | `declaration-track:1918c98ae735cc7dd86e2964c087602102372eb94f879bba33f869356738489e` |
| 17 | `structure` | [Packages.LinearPreorderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-linearpreorderofleargs--031e0319361be9f3903abdab.md) | 309 | `declaration-track:031e0319361be9f3903abdab722824473f7afd835bb5a1ad7c7ebc41c370e088` |
| 18 | `def` | [LinearPreorderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearpreorderpackage-ofle--3dd916e42fb1dbf4bde9767a.md) | 389 | `declaration-track:3dd916e42fb1dbf4bde9767a4444b28a6ee9797fc1996c04c3aaceb80bc2d16a` |
| 19 | `class` | [LinearOrderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearorderpackage--0ae9b90c50b8debfc997e74b.md) | 401 | `declaration-track:0ae9b90c50b8debfc997e74b2abaa46a4646a65430e45bfab5601a8e6aaa5c81` |
| 20 | `structure` | [Packages.LinearOrderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-linearorderofleargs--e45cf74d76748c969566a653.md) | 410 | `declaration-track:e45cf74d76748c969566a65352672f1d1cdad7e292186f696a6782f10078580b` |
| 21 | `def` | [LinearOrderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearorderpackage-ofle--5894c256e3e6f7dfab55ccf6.md) | 491 | `declaration-track:5894c256e3e6f7dfab55ccf6f4046fbc1236ad53c5d4b5a025ed193b383c8b0a` |
| 22 | `theorem` | [_root_.Std.OrientedCmp.of_gt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/root-std-orientedcmp-of-gt-iff-lt--7a82903792e4bad722c6e18d.md) | 516 | `result-track:7a82903792e4bad722c6e18de544e702218bee36cb8dc026ead06f0f89bb8345` |
| 23 | `structure` | [Packages.LinearPreorderOfOrdArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-linearpreorderofordargs--9e252a55b3909550f0d36405.md) | 536 | `declaration-track:9e252a55b3909550f0d36405814e51b1b47ce0aa3cc8afd7b605c9ece47340a9` |
| 24 | `def` | [LinearPreorderPackage.ofOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearpreorderpackage-oford--244372aa81ca30645959140b.md) | 651 | `declaration-track:244372aa81ca30645959140bb55446e3e8945fdc1cb54fa522cbf8239fa56551` |
| 25 | `instance` | [instMinOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instminoford--0d8e8409c0f172b378ac2bfe.md) | 681 | `declaration-track:0d8e8409c0f172b378ac2bfe107bf169997c522a0115e96eac2b38a3a21d1f1e` |
| 26 | `instance` | [instMaxOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instmaxoford--6c9614b9499f74839e9b66db.md) | 685 | `declaration-track:6c9614b9499f74839e9b66dbb433c03105a0994992da58fdfa03ede2c852b861` |
| 27 | `instance` | [instLawfulOrderLeftLeaningMinOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instlawfulorderleftleaningminoford--04aac2519b779fc133917170.md) | 689 | `declaration-track:04aac2519b779fc1339171709c6a8ae6ecfa6a62f7a0d7cb58d329f177cd6002` |
| 28 | `instance` | [instLawfulOrderLeftLeaningMaxOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/instlawfulorderleftleaningmaxoford--12e656b53aaaae9067b9d010.md) | 695 | `declaration-track:12e656b53aaaae9067b9d010c8d8178ef677faa222e59d8842791dc7e75cc016` |
| 29 | `structure` | [Packages.LinearOrderOfOrdArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/packages-linearorderofordargs--145008d0f04252546368bb2f.md) | 708 | `declaration-track:145008d0f04252546368bb2fcee239e60c59ecb1fec3d96c2a4921b0b81a445f` |
| 30 | `def` | [LinearOrderPackage.ofOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/declarations/linearorderpackage-oford--17b178216d03941f815e6712.md) | 797 | `declaration-track:17b178216d03941f815e67129a54bc02fb098feaf84e0348d9ff58f7d3a1c713` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
