# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologySurgeryGame.Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c6d59b1128fc2ccb989a118eec9c9ad7c6aa89",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c6d59b1128fc2ccb989a118eec9c9ad7c6aa89`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralSphere` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralprefixcapchain--ab92f16444aec9e2689aabf3.md) | 31 | `declaration-track:ab92f16444aec9e2689aabf32868132d554d9664e95be248fcac7a1cb18f1fcc` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralsuffixcapchain--f565046e2ffe6075d457714e.md) | 37 | `declaration-track:f565046e2ffe6075d457714e703de9e9e1b12c3af6a53bf3b21029357cb0d1f9` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralprefixcapboundary--c9b43dc8b3ca38ed7dbb6aa1.md) | 42 | `declaration-track:c9b43dc8b3ca38ed7dbb6aa121908afece1c94ea6cba8e554abb86a353413d2d` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralsuffixcapboundary--a92c481a967c91c77a861be6.md) | 46 | `declaration-track:a92c481a967c91c77a861be60eeed9f346d86a9f3b5e3292e3da920eb3762776` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralcapsurgerysound--cb58d02442e3ee730d1c7b1d.md) | 50 | `declaration-track:cb58d02442e3ee730d1c7b1dc1fcb525202bcdd58bd778ed970e2672fb6bb279` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralcapsurgerysound-cut2--59a388f1309ec53b0f1b8c8c.md) | 59 | `result-track:59a388f1309ec53b0f1b8c8c3dc82acbdedb9b6c2d81ce01784824fa117819dd` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralcapsurgerysound-cut4--d606afa79f896cfe8ed4d629.md) | 69 | `result-track:d606afa79f896cfe8ed4d629506c96f3b7868b558a2fe33016767e7128cfee50` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologySurgeryGame/Variant614306b3fd2ba8a9854940c5034e5a2ef7b91f1e2545575ba9e36be531e4507f.lean/declarations/octahedralcapsurgerysound-cut6--9f55d88dc6add9a1caf07878.md) | 79 | `result-track:9f55d88dc6add9a1caf07878ce280048f514a598a91d0e71cc653bedeb8069ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
