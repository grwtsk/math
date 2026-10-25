# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reservoir.Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20789b581b8f9d7361f8844d8978a64b5a6da9bb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20789b581b8f9d7361f8844d8978a64b5a6da9bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Do` — import line 9; external provider; requires a separately pinned dependency.
- `Lake.Util.Url` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RegistrySrc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/registrysrc--ce28317bc52a14966e40f55e.md) | 30 | `declaration-track:ce28317bc52a14966e40f55e82361ec93335957c1c74788a35ae3a4d887d4dd6` |
| 2 | `def` | [isGit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/isgit--b6469de2907349f120e19cb4.md) | 38 | `declaration-track:b6469de2907349f120e19cb47d9d799c5060902b5ac7d514cc51c40331dda1a0` |
| 3 | `def` | [data](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/data--ed6affb96d5f463e85d1a710.md) | 43 | `declaration-track:ed6affb96d5f463e85d1a71044c99ce231909917eeb2f05e4203a78aab3a801b` |
| 4 | `def` | [toJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/tojson--b0952ecfc3b7a530255b8c30.md) | 48 | `declaration-track:b0952ecfc3b7a530255b8c302a267d029929e35865da5790267742187c3a39fe` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/instance--ebabaff2ddc271c9098ab664.md) | 51 | `declaration-track:ebabaff2ddc271c9098ab6648cdb3ecda64b9189f00aec06675ef99a56af7eb6` |
| 6 | `def` | [fromJson?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/fromjson--8f71d829c1ba647be55d7761.md) | 53 | `declaration-track:8f71d829c1ba647be55d776174482b8f68fb66490aa11a3bf938b6d72e357696` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/instance--253912bbfca8b1f7c81eba9e.md) | 67 | `declaration-track:253912bbfca8b1f7c81eba9ef4e5e1f6559c107dcee199ee8d10d5a3f46f9fa1` |
| 8 | `structure` | [RegistryPkg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/registrypkg--630ecbf5c20ee195e88d501a.md) | 75 | `declaration-track:630ecbf5c20ee195e88d501a3d05121b7e34802c4bcd4879f0f80259ecbe53ea` |
| 9 | `def` | [gitSrc?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/gitsrc--2f241c00d62774bbe64fe4de.md) | 84 | `declaration-track:2f241c00d62774bbe64fe4de597f963c1c67fbf679f4356adb17139b49e23f45` |
| 10 | `def` | [toJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/tojson--69c843838f5357e2f01928ec.md) | 87 | `declaration-track:69c843838f5357e2f01928ecc31c464fd9ac2ca11933079fbd1e9019c0c8a923` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/instance--00f1633085f68c228e377571.md) | 90 | `declaration-track:00f1633085f68c228e377571ac5b6d27ca7b270913f8c36565965e23e74b8546` |
| 12 | `def` | [fromJson?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/fromjson--67b87c290a2245d794108cba.md) | 92 | `declaration-track:67b87c290a2245d794108cbab5a9c91f921e45129124fd92b20b874ec988986e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/instance--9180ae24578c2fb8e14dcb4b.md) | 102 | `declaration-track:9180ae24578c2fb8e14dcb4b77956bfed4ee0c782cdfa2a80c4edca1961efa17` |
| 14 | `def` | [Reservoir.pkgApiUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/reservoir-pkgapiurl--4b55aed866d571f77289c73c.md) | 106 | `declaration-track:4b55aed866d571f77289c73cd5886a160897de8278b675312cb163ac2b816143` |
| 15 | `def` | [Reservoir.fetchPkg?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/reservoir-fetchpkg--0600a1abaec5d3abeedceef9.md) | 109 | `declaration-track:0600a1abaec5d3abeedceef910cf14a5f9bfa6ba55a5c13ce2d6f1217d6af2cc` |
| 16 | `structure` | [RegistryVer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/registryver--88ea7df11590a3cef4de055d.md) | 144 | `declaration-track:88ea7df11590a3cef4de055db564264f2d28396668ff70731063668a80d9bdf1` |
| 17 | `def` | [RegistryVer.fromJson?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/registryver-fromjson--245bdbb6c93453b9ec3d0534.md) | 148 | `declaration-track:245bdbb6c93453b9ec3d0534e2f4bfcc6a1719a068bd53886104747608ce6ba5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/instance--2ffb25008c5f8acba44f03c5.md) | 157 | `declaration-track:2ffb25008c5f8acba44f03c5ecdf7bddfc44b534b98219871b2810e7fd763eaf` |
| 19 | `def` | [Reservoir.pkgVersionsApiUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/reservoir-pkgversionsapiurl--96d89544ad227d05c4d7d9ed.md) | 159 | `declaration-track:96d89544ad227d05c4d7d9eda3669d84f24f5de76a0b7e0e646fe2870c091bda` |
| 20 | `def` | [Reservoir.fetchPkgVersions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant7c4f518a02ddd8e18b379d3510cdd13a9ad6087590d54762edca604ac2ea3c01.lean/declarations/reservoir-fetchpkgversions--ba270ac89fd4a2a6102501d9.md) | 162 | `declaration-track:ba270ac89fd4a2a6102501d991bfa25f73444ff46cd7f0a0b36c1f8c398e69dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
