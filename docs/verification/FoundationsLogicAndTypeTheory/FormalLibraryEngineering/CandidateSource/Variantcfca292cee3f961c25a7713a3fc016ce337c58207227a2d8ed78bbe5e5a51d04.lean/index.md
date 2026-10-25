# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateSource.Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0569da6a3d27584b199e2693b1a76e26077a4ebe",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0569da6a3d27584b199e2693b1a76e26077a4ebe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralChain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralprefixcapchain--f689ebc913b085b16a4b8ce6.md) | 23 | `declaration-track:f689ebc913b085b16a4b8ce646371161e405f54664f81bc7d69d67db72d6cf6a` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralsuffixcapchain--6aecaa809c191e4fdb41db53.md) | 29 | `declaration-track:6aecaa809c191e4fdb41db5353036d73141df607f4b79183763044a536e0144b` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralprefixcapboundary--eb3b5d7106c2b1ed8ba4e2ef.md) | 34 | `declaration-track:eb3b5d7106c2b1ed8ba4e2efd98013d3de532e39c3faa22c2d1742a5babf77e9` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralsuffixcapboundary--8e06473e64ec23c9657f2da3.md) | 38 | `declaration-track:8e06473e64ec23c9657f2da3a9b98854397af6e68ab0b5c85b6dc0441f0f8348` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound--1fd8b3c9b1b127fdf15d0730.md) | 42 | `declaration-track:1fd8b3c9b1b127fdf15d07300a90e65ae0136908ef227cec4253e7c63a670c7c` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut1--def1c47d30bdd223defb3422.md) | 51 | `result-track:def1c47d30bdd223defb34224f25f968630ceb1b5697b5823de6952455e71315` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut2--1afe5fb1baaa81c03e17ae95.md) | 61 | `result-track:1afe5fb1baaa81c03e17ae9596e49102a1c4b6532eadc15cb0237705ba4c97a4` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut3--5a3c2d612a9ef194faa8a0a8.md) | 71 | `result-track:5a3c2d612a9ef194faa8a0a831ae338e701818990665d5573695b0d25417f4f0` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut4--e748ab0a062a76755cd39a57.md) | 82 | `result-track:e748ab0a062a76755cd39a57ffabb302ac43c57dce3d99a3da1c9c24d3ddc156` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut5--541b06ac4d9bbfaa9d140085.md) | 92 | `result-track:541b06ac4d9bbfaa9d140085c3343631d7b252f24f7f8b96055b0a6755a11772` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut6--33705a269fd3d99e01684f08.md) | 102 | `result-track:33705a269fd3d99e01684f0864d363aa6e7696c03aa64d0f43c82d09e00e1613` |
| 12 | `theorem` | [octahedralCapSurgerySound_cut7](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04.lean/declarations/octahedralcapsurgerysound-cut7--a9d4baaba6824a504518705b.md) | 112 | `result-track:a9d4baaba6824a504518705b7dce0eb8b2efe40848d272fe52990fcd2f1f48ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
