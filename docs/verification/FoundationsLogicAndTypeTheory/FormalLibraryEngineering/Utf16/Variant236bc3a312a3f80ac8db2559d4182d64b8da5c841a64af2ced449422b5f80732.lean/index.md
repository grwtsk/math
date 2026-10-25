# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Utf16.Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f3f4a31438e93367af4406a603aae52c475b04e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f3f4a31438e93367af4406a603aae52c475b04e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [utf16Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf16size--44a41158aac3cd0bfb63d842.md) | 24 | `declaration-track:44a41158aac3cd0bfb63d8423f4b138e88aec8228f579725b68691e1dc93911e` |
| 2 | `def` | [csize16](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/csize16--d1020efdf517d731cc4b5e7e.md) | 31 | `declaration-track:d1020efdf517d731cc4b5e7eb7b266b7cd99adf0805719875e20fa49903d8e29` |
| 3 | `def` | [utf16Length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf16length--44e1a93e171181b47a62187f.md) | 34 | `declaration-track:44e1a93e171181b47a62187f7f69c52d4acdc85591b0df33f30ace6ff5751be4` |
| 4 | `def` | [codepointPosToUtf16PosFromAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/codepointpostoutf16posfromaux--2c18f78f40da7ffaa98561cc.md) | 37 | `declaration-track:2c18f78f40da7ffaa98561ccdf4e93e0833c693cec672c192e5778d62fc3ebb7` |
| 5 | `def` | [codepointPosToUtf16PosFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/codepointpostoutf16posfrom--6f45cdcfe7a1b1a45828890d.md) | 44 | `declaration-track:6f45cdcfe7a1b1a45828890db7882d3d8a4110ff190e6728d8dc0344755873ed` |
| 6 | `def` | [codepointPosToUtf16Pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/codepointpostoutf16pos--3e2df78b12e765e883191f3a.md) | 47 | `declaration-track:3e2df78b12e765e883191f3ad4ee4294470aebbef4bf67a496e8ec24d1f693cf` |
| 7 | `def` | [utf16PosToCodepointPosFromAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf16postocodepointposfromaux--1ce95449154a2f39505f7462.md) | 50 | `declaration-track:1ce95449154a2f39505f7462c1f27e2a786c4ff95e6e42bfabcd5f07fe9a55d2` |
| 8 | `def` | [utf16PosToCodepointPosFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf16postocodepointposfrom--ab4136bc40e159e50bda7bb5.md) | 56 | `declaration-track:ab4136bc40e159e50bda7bb57ff4cae91564f96d78d229aa238cdfff3dd56ed0` |
| 9 | `def` | [utf16PosToCodepointPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf16postocodepointpos--e4952929f4486b10604b212d.md) | 59 | `declaration-track:e4952929f4486b10604b212d95a6f4c42f1b9e30585d5034b5321a4917a9ccfd` |
| 10 | `def` | [codepointPosToUtf8PosFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/codepointpostoutf8posfrom--000c7ca4bce8e826753f6a82.md) | 63 | `declaration-track:000c7ca4bce8e826753f6a82116532676ad1a4174bb906e53e7f855afc2ba4cf` |
| 11 | `def` | [lineStartPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/linestartpos--7bd4d18b555a61926eca8449.md) | 72 | `declaration-track:7bd4d18b555a61926eca8449730791f8c529649dbf0b3b9633d61327640dc38d` |
| 12 | `def` | [lspPosToUtf8Pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/lsppostoutf8pos--dc3516cddd9049813bb3c28d.md) | 82 | `declaration-track:dc3516cddd9049813bb3c28de7c47d4e9f775d466ca8363ccfc1f8e2335caec2` |
| 13 | `def` | [leanPosToLspPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/leanpostolsppos--9304119b12e83f785085cbd0.md) | 87 | `declaration-track:9304119b12e83f785085cbd0e27531cf4dfe3c836981e4219374918dfeaf27b2` |
| 14 | `def` | [utf8PosToLspPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf8postolsppos--e1130bbfe35b260ba53fbe44.md) | 91 | `declaration-track:e1130bbfe35b260ba53fbe44b7c2e07208f0be338e35920148f622834b70f86e` |
| 15 | `def` | [utf8RangeToLspRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/utf8rangetolsprange--9ae446a930d25ca1e690229a.md) | 95 | `declaration-track:9ae446a930d25ca1e690229aaa7d3a24155ec67ca3b673dc780f3e14373abd47` |
| 16 | `def` | [lspRangeOfStx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/lsprangeofstx--1d191a33cdc9392f3fadf1c4.md) | 99 | `declaration-track:1d191a33cdc9392f3fadf1c47a4e1cfa7e8feee2b46991250f46fff7a60bebf4` |
| 17 | `def` | [lspRangeToUtf8Range](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/lsprangetoutf8range--2ccfa897350505319ae80e42.md) | 102 | `declaration-track:2ccfa897350505319ae80e42f6603dda22bcd77f68542784e9975a8199a4e64b` |
| 18 | `def` | [DeclarationRange.ofFilePositions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/declarationrange-offilepositions--fe338ed67aa54f1e29739a42.md) | 107 | `declaration-track:fe338ed67aa54f1e29739a421e0dbde6d347c5d3f6fa38c24a11417bd38d72aa` |
| 19 | `def` | [DeclarationRange.ofStringPositions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/declarationrange-ofstringpositions--5773926beb6dd9383885aedc.md) | 115 | `declaration-track:5773926beb6dd9383885aedcbc390d117125a079c3576350cccb840569471c48` |
| 20 | `def` | [DeclarationRange.toLspRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/declarations/declarationrange-tolsprange--90c050557acb80cbb9d29182.md) | 124 | `declaration-track:90c050557acb80cbb9d29182482e8ab00f6bd96773f8dab40cf4a408125e9e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
