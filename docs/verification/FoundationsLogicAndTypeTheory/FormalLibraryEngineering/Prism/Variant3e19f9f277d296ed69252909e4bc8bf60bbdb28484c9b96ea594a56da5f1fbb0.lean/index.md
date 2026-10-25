# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prism.Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45fb602dcefc5210a17d7d182c8c2f9b78f537c6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45fb602dcefc5210a17d7d182c8c2f9b78f537c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.CellComplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrismCellKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/declarations/prismcellkind--7cd114036f32531385fe53c8.md) | 30 | `declaration-track:7cd114036f32531385fe53c84cfc111787ea8962546f16b170d090f8900cabe8` |
| 2 | `structure` | [NPrismDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/declarations/nprismdescriptor--d7284776e1e7dbf529fff679.md) | 39 | `declaration-track:d7284776e1e7dbf529fff679b08aa463a78c077057546ce3a9097183ee6ed040` |
| 3 | `structure` | [NPrismComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/declarations/nprismcomplex--cfc456bbf607b1cfcddc813c.md) | 50 | `declaration-track:cfc456bbf607b1cfcddc813ce4bc12b3f9f58531a7689756060e2ec5a60c6809` |
| 4 | `structure` | [PrismBoundarySphere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/declarations/prismboundarysphere--bcefc2a02c734bf4d4e70cd8.md) | 58 | `declaration-track:bcefc2a02c734bf4d4e70cd8b7f2205bb6032347878fe57e49b36b23c2bc8e49` |
| 5 | `theorem` | [prism_boundary_sphere_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0.lean/declarations/prism-boundary-sphere-sound--79368c3dc54172f90280d424.md) | 70 | `result-track:79368c3dc54172f90280d4245a3d3adfc65483086002536256164d23de2e79ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
