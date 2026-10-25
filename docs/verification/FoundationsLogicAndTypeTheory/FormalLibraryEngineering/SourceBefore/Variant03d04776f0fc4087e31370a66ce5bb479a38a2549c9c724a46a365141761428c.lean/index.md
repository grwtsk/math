# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceBefore.Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca40e575b23cad67053aa19825c0aad5dc608f67",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca40e575b23cad67053aa19825c0aad5dc608f67`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralChain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralprefixcapchain--b1add35ba1e8adf74298bb43.md) | 31 | `declaration-track:b1add35ba1e8adf74298bb43880ba5ea0d7cc9059dc9a5d50bac279944ccbe4f` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralsuffixcapchain--537445f6db1166b2860223f7.md) | 37 | `declaration-track:537445f6db1166b2860223f778ab26e3e0f6369ed32375dbde287eef6c668dd7` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralprefixcapboundary--b3f0abf1c9f73ddf35366d14.md) | 42 | `declaration-track:b3f0abf1c9f73ddf35366d1436db8608b89ee9d7bdacbf6d64dd4b0697ac78c5` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralsuffixcapboundary--158a12547eb6a6e35a786e1b.md) | 46 | `declaration-track:158a12547eb6a6e35a786e1b4602603427f8b255e6069aed85003a50dac4281f` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound--a363ee7f08173456d36f8ad3.md) | 50 | `declaration-track:a363ee7f08173456d36f8ad344c69935cae74a0855b1d68d946ab400b09272c2` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut1--8c97e41169aa42be0d620906.md) | 59 | `result-track:8c97e41169aa42be0d62090624b25950a966c5d17415dd406f80278c163ce3d1` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut2--73c272e1cdc8678b26860d87.md) | 69 | `result-track:73c272e1cdc8678b26860d877f71f3c91014707369b4b109e6b65efa577f122c` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut3--e964c75b034387a70b686e0a.md) | 79 | `result-track:e964c75b034387a70b686e0a84276e4f5e8341a088b9f0614d1f9b90bbe6dc4c` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut4--6707593913c0163554933b4a.md) | 89 | `result-track:6707593913c0163554933b4a875adf3ee277cb2e989fc01bf3ef226b615f3164` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut5--edd0b3c3c25620cacd9e30c2.md) | 99 | `result-track:edd0b3c3c25620cacd9e30c29833c45019340a5bcbb0641a812ce949bef8e78e` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut6--bf31e00f8a7fd3b1693d79f9.md) | 109 | `result-track:bf31e00f8a7fd3b1693d79f97d59ed1d193973476072afb6d52210cc0a41bd91` |
| 12 | `theorem` | [octahedralCapSurgerySound_cut7](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceBefore/Variant03d04776f0fc4087e31370a66ce5bb479a38a2549c9c724a46a365141761428c.lean/declarations/octahedralcapsurgerysound-cut7--b56a36d70a08e6cca2440217.md) | 119 | `result-track:b56a36d70a08e6cca2440217362d98ddc03e7357da591c7de8fb1b31aa1a7e32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
