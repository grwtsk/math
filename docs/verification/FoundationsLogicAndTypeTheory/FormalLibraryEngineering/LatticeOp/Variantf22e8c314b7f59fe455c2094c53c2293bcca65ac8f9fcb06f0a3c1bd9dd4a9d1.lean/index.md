# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatticeOp.Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36551109b40f9de23c922c11950354862373b473",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36551109b40f9de23c922c11950354862373b473`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.AbstractMVars` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LatticeOp.meet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/latticeop-meet--1ff93a01503d6c8ff0f2f83a.md) | 42 | `declaration-track:1ff93a01503d6c8ff0f2f83aaf2caa3c12b18454b854e0c22002886926c46756` |
| 2 | `def` | [LatticeOp.himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/latticeop-himp--3d35b207587a0289e14907fd.md) | 45 | `declaration-track:3d35b207587a0289e14907fd3207d72ca9879c74dd852c741b9979d4187daa30` |
| 3 | `def` | [LatticeOp.ofProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/latticeop-ofprop--2227cfdcb3e1b2da569e5e87.md) | 49 | `declaration-track:2227cfdcb3e1b2da569e5e87279c9128b655ec099d31806939ebbfba820b93c7` |
| 4 | `def` | [LatticeOp.top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/latticeop-top--44532c0d38a10ccbdff172c7.md) | 53 | `declaration-track:44532c0d38a10ccbdff172c763e03acb96e22ea35ad7f1e113690165987c604f` |
| 5 | `def` | [LatticeOp.upperAdjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/latticeop-upperadjoint--1d4630f4aa718cc408e12326.md) | 56 | `declaration-track:1d4630f4aa718cc408e12326d4a00a70b40d4ee101b9af7fecaf947e3218db7a` |
| 6 | `def` | [builtinLatticeOps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/builtinlatticeops--36600b0a1040609004f332e1.md) | 61 | `declaration-track:36600b0a1040609004f332e186c8a0ac4b815bedcc64f693a5974bc58cc0f1c7` |
| 7 | `def` | [mkLatticeOpTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/mklatticeoptable--da7f9691ff2a1cc4481e8c52.md) | 66 | `declaration-track:da7f9691ff2a1cc4481e8c5233f910bdf0fa74abe6d9acddacb53d6adde39740` |
| 8 | `def` | [mkLatticeTerminals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/mklatticeterminals--a266f828af7fcb63d6a8b434.md) | 72 | `declaration-track:a266f828af7fcb63d6a8b4346cd1aa7705c45f61f0e7c155bf60bdee974dbabf` |
| 9 | `def` | [saturateLatticeOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/saturatelatticeop--7d1b076ecef6dd2dc68d2333.md) | 90 | `declaration-track:7d1b076ecef6dd2dc68d233358ae7caca22301d2bb790ad72f3de792ffbdfbb1` |
| 10 | `def` | [mkPointFrameApply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/mkpointframeapply--7c5401800adba8691554915e.md) | 122 | `declaration-track:7c5401800adba8691554915e2f8d8b6d6c529c468ad15e8f712c8d5c66aee4a6` |
| 11 | `def` | [mkLatticeOpRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/declarations/mklatticeoprule--24335240e7b36b935be291fa.md) | 154 | `declaration-track:24335240e7b36b935be291fac881041f8c00c7c5822975c3f72ef584b15dd5b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
