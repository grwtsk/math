# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85a265208ed42a97bc20dd425230ac12753fcf76",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85a265208ed42a97bc20dd425230ac12753fcf76`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Classification` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.OctahedralSphere` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralPrefixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralprefixcapchain--c6bdb97289dba950534e06a7.md) | 23 | `declaration-track:c6bdb97289dba950534e06a75930f2a79eb8b7b1c31793e04410451e4da5af5d` |
| 2 | `def` | [octahedralSuffixCapChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralsuffixcapchain--11f6887ff69cbec94489fab0.md) | 29 | `declaration-track:11f6887ff69cbec94489fab03842d85a3685be5d59a54d407cb523227ffc80e7` |
| 3 | `def` | [octahedralPrefixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralprefixcapboundary--17b5d85de3b9830e5c363ae5.md) | 34 | `declaration-track:17b5d85de3b9830e5c363ae59bd0498808469be7377d5f871676c01759d6b893` |
| 4 | `def` | [octahedralSuffixCapBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralsuffixcapboundary--5673f9fe6ed70dae46cb6a89.md) | 38 | `declaration-track:5673f9fe6ed70dae46cb6a8954d4a4b7df65da147f04658761a3b89512c8037f` |
| 5 | `def` | [OctahedralCapSurgerySound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound--6db7ad03dc44e18550dd3d1b.md) | 42 | `declaration-track:6db7ad03dc44e18550dd3d1b29918ec3f4213703b2650aad1bbc15fcc214b7e8` |
| 6 | `theorem` | [octahedralCapSurgerySound_cut2_reference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut2-reference--33749550c2c722a1f3e1f299.md) | 50 | `result-track:33749550c2c722a1f3e1f299b364be7e930db0c1ea043b0114b34e0b4bd30ba8` |
| 7 | `theorem` | [octahedralCapSurgerySound_cut4_reference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut4-reference--e51d307c15c800dea52dafd4.md) | 60 | `result-track:e51d307c15c800dea52dafd4ee458ea031bfc0032906cd2b5c4bc3bc9da6e81d` |
| 8 | `theorem` | [octahedralCapSurgerySound_cut6_reference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut6-reference--533fc9f4991753d674cc14c0.md) | 70 | `result-track:533fc9f4991753d674cc14c02137d5e3ce7c100c33cda3a18440bf39fac177da` |
| 9 | `theorem` | [octahedralCapSurgerySound_cut2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut2--59f866b4933905840fa1d507.md) | 81 | `result-track:59f866b4933905840fa1d507988be66c6b43475abec93dcd3e2576af17537b5a` |
| 10 | `theorem` | [octahedralCapSurgerySound_cut4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut4--3843260f003a1d6d0d18e70c.md) | 86 | `result-track:3843260f003a1d6d0d18e70cee3d7438d4ce336b94ec5a38a314ac9b76f8f31c` |
| 11 | `theorem` | [octahedralCapSurgerySound_cut6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/declarations/octahedralcapsurgerysound-cut6--b2a6e8dbd66d677ce76c6a18.md) | 91 | `result-track:b2a6e8dbd66d677ce76c6a18247bee2502ae140b47d664709799887e3735b7d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
