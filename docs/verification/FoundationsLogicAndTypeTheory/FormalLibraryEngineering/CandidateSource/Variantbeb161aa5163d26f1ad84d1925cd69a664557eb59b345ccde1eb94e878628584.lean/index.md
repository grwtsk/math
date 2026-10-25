# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateSource.Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78a61f779074c242ad6f1fab32d5625d6acb8f15",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78a61f779074c242ad6f1fab32d5625d6acb8f15`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralprefixcapchain--de3c2d7138ab817a2c935046.md) | 31 | `declaration-track:de3c2d7138ab817a2c935046d3586c7efed8f32f1e3693bd952e92de54dc66c9` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralsuffixcapchain--f3a5c38cbc96b20e707a8ae1.md) | 37 | `declaration-track:f3a5c38cbc96b20e707a8ae10c27ee11f1fc57d74d160952a7ad47d054dec0bf` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralprefixcapboundary--d9eec6ca9eb821cb0d22c25e.md) | 42 | `declaration-track:d9eec6ca9eb821cb0d22c25ea133693a39bc1802d3e49dbc167bb1bbe73bcd91` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralsuffixcapboundary--c8c22d14389dc05849961252.md) | 46 | `declaration-track:c8c22d14389dc058499612526bd4b2b100aad5438ae771ff8df841773f1dabc8` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound--862cba96a151701268bbe92c.md) | 50 | `declaration-track:862cba96a151701268bbe92ca4ce16047ba6cda9228d32330a6060e5bebe1392` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut1--e99001ea55d7d30762d4f8f0.md) | 59 | `result-track:e99001ea55d7d30762d4f8f01aa37a1b8c3e9e4cdc862327cfd6046bbdcae69b` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut2--f9eb9af771d5c3354d25648e.md) | 70 | `result-track:f9eb9af771d5c3354d25648e0e782df6a3671a28bc6a9b2cb256525df7fb26a2` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut3--e5ec01a0b8a4ca6ed124637a.md) | 80 | `result-track:e5ec01a0b8a4ca6ed124637ade3b0c82fb73b46cb861352b39d6675d42fb7f40` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut4--e43b1950665aa62592385f63.md) | 90 | `result-track:e43b1950665aa62592385f638299f626d0977a4ecc7ce7051f564b96a4c7f177` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut5--7d6fe04a6f4616475e4498fc.md) | 100 | `result-track:7d6fe04a6f4616475e4498fcbf7f4dd3fbd0a9079635db1b8e5ad304bba166bb` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut6--03f9814f3a3fc33699639a4d.md) | 110 | `result-track:03f9814f3a3fc33699639a4dee9d06ad404026451f14929af29096bf6d0a4070` |
| 12 | `theorem` | [octahedralCapSurgerySound_cut7](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantbeb161aa5163d26f1ad84d1925cd69a664557eb59b345ccde1eb94e878628584.lean/declarations/octahedralcapsurgerysound-cut7--7843fb237052829a169a161a.md) | 120 | `result-track:7843fb237052829a169a161a2b3556aa3ab43771fa2930b98917b672e426474f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
