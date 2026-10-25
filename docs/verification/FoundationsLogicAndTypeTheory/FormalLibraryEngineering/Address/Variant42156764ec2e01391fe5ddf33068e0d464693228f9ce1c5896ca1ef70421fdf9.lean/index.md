# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Address.Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0fb2c6a597fec890258de09de22831b40557d6a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0fb2c6a597fec890258de09de22831b40557d6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Refinement.Tree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalOrientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/localorientation--8dd892faf70f0c3319793a40.md) | 14 | `declaration-track:8dd892faf70f0c3319793a408a7fe25deffed5cb5beac37036fce9bd69a4fa88` |
| 2 | `def` | [orientBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/orientbit--63faac35246b20003fce9275.md) | 19 | `declaration-track:63faac35246b20003fce9275b82f337819cedc93722118fca39fe85048be52bd` |
| 3 | `structure` | [FrontierAddress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress--c64e0e0dbff4d0ec9dfb90ff.md) | 24 | `declaration-track:c64e0e0dbff4d0ec9dfb90ff55f83ea363bbed67c7d347a7640866d267da1a0b` |
| 4 | `def` | [FrontierAddress.orientedPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress-orientedpath--59911950ae29a5a0bce779c2.md) | 31 | `declaration-track:59911950ae29a5a0bce779c2480f8106c604c66d2eb2e46ffeeca8914c081210` |
| 5 | `theorem` | [FrontierAddress.orientedPath_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress-orientedpath-length--c19ed7978a8e8f8cb1a7de44.md) | 37 | `result-track:c19ed7978a8e8f8cb1a7de443a54a53c75be51127e00aae250773fb83c3d5906` |
| 6 | `def` | [binaryPathIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/binarypathindex--0fa9b4e6826f7f49e10ba887.md) | 44 | `declaration-track:0fa9b4e6826f7f49e10ba887f8ffbb8f446a54f7fda0c759e066cf13944bd14a` |
| 7 | `def` | [FrontierAddress.equalDepthIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress-equaldepthindex--38cef847c403c6ff5e034e73.md) | 50 | `declaration-track:38cef847c403c6ff5e034e73db8b56489fcd576241e762c875ef8f41f5c46233` |
| 8 | `def` | [FrontierAddress.selfDelimitingIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress-selfdelimitingindex--c77a7d94c07c1f13a1e0ecf0.md) | 54 | `declaration-track:c77a7d94c07c1f13a1e0ecf08525296dd2c19187a8d581a2aedee63433e6330c` |
| 9 | `structure` | [DyadicInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/dyadicinterval--c083ebcfe48358c12a51d537.md) | 59 | `declaration-track:c083ebcfe48358c12a51d5376e07a6ada1deb730ad07a5fd3715e5c75168aa54` |
| 10 | `def` | [FrontierAddress.dyadicInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/frontieraddress-dyadicinterval--d01b727b796e725a7232fa30.md) | 65 | `declaration-track:d01b727b796e725a7232fa304d48781a8b6b770b5e02f458049c19a21d4d27fb` |
| 11 | `def` | [PathPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/pathprefix--50fae44910cfb1cfeac42b2c.md) | 76 | `declaration-track:50fae44910cfb1cfeac42b2c9808eb55c9c6c8beb36947e916eeaf53957a45bc` |
| 12 | `def` | [DyadicIntervalsDisjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/dyadicintervalsdisjoint--fb49b9ebc07d7cef219d0fb5.md) | 81 | `declaration-track:fb49b9ebc07d7cef219d0fb519d95e63df084c2f80a16db1f87c0db237f2deae` |
| 13 | `structure` | [TreeAddressRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/treeaddressregistry--9bdb8f91991de28e959e6e02.md) | 86 | `declaration-track:9bdb8f91991de28e959e6e02dddbd1542eb23895ed6d1c64b75bf5e14c008222` |
| 14 | `theorem` | [tree_frontier_address_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/tree-frontier-address-unique--c336c207cf896a4c65f890a8.md) | 109 | `result-track:c336c207cf896a4c65f890a84fa048a0bc2c8ec3e3cca2d4b6a34c3d7c3f06c7` |
| 15 | `structure` | [TerminalAddressCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/terminaladdresscertificate--1ac3359ee3074762c38a757a.md) | 125 | `declaration-track:1ac3359ee3074762c38a757ac8b5ee145ada45e401812aa8304661fa32d5e5a3` |
| 16 | `theorem` | [terminal_addresses_prefix_free](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/terminal-addresses-prefix-free--1c99b11e2cc6658e7c0ca701.md) | 152 | `result-track:1c99b11e2cc6658e7c0ca701ed177bd4fb31d2057faddeb3d9fd4401298d0b36` |
| 17 | `theorem` | [dyadic_terminal_intervals_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/dyadic-terminal-intervals-disjoint--a33ea7dea794b8b64870c248.md) | 175 | `result-track:a33ea7dea794b8b64870c24844bb2b10e4b97cbe9355580940d5a70b259d2d9a` |
| 18 | `structure` | [OrientedIndexCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/orientedindexcertificate--2ad3526e15b3ba6317a0c90f.md) | 198 | `declaration-track:2ad3526e15b3ba6317a0c90fb55b2078abe6b5aec8d4d5815513875a2983a457` |
| 19 | `theorem` | [oriented_index_injective_at_fixed_depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9.lean/declarations/oriented-index-injective-at-fixed-depth--2168d8174ff4730ea9039898.md) | 208 | `result-track:2168d8174ff4730ea90398987f78e27af323290f0961f6a5f8344e493b2e513d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
