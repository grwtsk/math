# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateSource.Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1b14f047f0859b41c0f4f82f1854fcc728cad3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1b14f047f0859b41c0f4f82f1854fcc728cad3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean.json)

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
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralprefixcapchain--2d0a2cacfebe75db1aab9ca2.md) | 23 | `declaration-track:2d0a2cacfebe75db1aab9ca2f2eae8b36ef9e02ee36ce4877eb505e1c070ef9e` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralsuffixcapchain--e392866baf210fbbc10dc4a6.md) | 29 | `declaration-track:e392866baf210fbbc10dc4a601d40ea789346111efb06ef9cf82db0d8c5a7584` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralprefixcapboundary--2a93f0bae218396789ecf846.md) | 34 | `declaration-track:2a93f0bae218396789ecf8466eca9481beefd58fea19b31deace7bac7f88411e` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralsuffixcapboundary--4f25e07b84f8920ddbb5fc2a.md) | 38 | `declaration-track:4f25e07b84f8920ddbb5fc2ab36ca2f4729df06a4ad9e47f24d7ad35d1b4514f` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound--1520f08fcfff88617dfd3799.md) | 42 | `declaration-track:1520f08fcfff88617dfd37991d596c28a87f66069170f9ee39909339b73a7781` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut1--ff86bdf86c442abdca48142c.md) | 51 | `result-track:ff86bdf86c442abdca48142c284a5db42e7dd48736b6c77f43640bf848c5d4ec` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut2--87db488789067c986f0c255a.md) | 62 | `result-track:87db488789067c986f0c255aa5187827494648deb56d0166208f458a8764f56d` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut3--32f3498eebefd9445f06ac02.md) | 72 | `result-track:32f3498eebefd9445f06ac02607f3fe6e5d29866ab74a8c0c932a4fd176595f3` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut4--d0944b60cec3187393b017e2.md) | 82 | `result-track:d0944b60cec3187393b017e2f63d0abd6dd963c2ca562179128099dd84be1ebe` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut5--d42190cb49e238d699399f37.md) | 92 | `result-track:d42190cb49e238d699399f37c44637a418cd1fe38b94ec4a14b5189944d5c5d4` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut6--29308923ee4937efe694e7cf.md) | 102 | `result-track:29308923ee4937efe694e7cf1833ad85d5de1c5bc5e121b3b9bb31b699e9c458` |
| 12 | `theorem` | [octahedralCapSurgerySound_cut7](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CandidateSource/Variant5d76be6315d16af222c5243375c37a4fcb8b00a4a558a879a6d613678d54b712.lean/declarations/octahedralcapsurgerysound-cut7--b791ee3e4434b103caea9baa.md) | 112 | `result-track:b791ee3e4434b103caea9baa3505bcfc64938eccefc31dae4b05144272df7dd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
