# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologicalAssembly.Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6385691002a8599154687b94839b99b6795d86e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6385691002a8599154687b94839b99b6795d86e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.TopologicalTheorems.TG01_AdmittedEdgeGraph` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG02_GraphQuotientRealization` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG03_VertexEndpointEquations` — import line 3; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG04_EdgeInteriorInjectivity` — import line 4; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG05_EdgeInteriorDisjointness` — import line 5; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG06_GraphRealizationTopology` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG07_TopologicalPlanarWitness` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG08_TopologicalSpatialWitness` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG09_BoundaryCompatibleEmbedding` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG10_GeometricRefinementContinuity` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG11_GeometricRefinementCoherence` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.ControlledSpherical.TopologicalTheorems.TG12_TopologicalCompatibleFamily` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopologicalAdmittedGraphHierarchyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/declarations/topologicaladmittedgraphhierarchyresult--90b226bea9163878d5d6653a.md) | 33 | `declaration-track:90b226bea9163878d5d6653a7d534652d6eaf6bc3c7f69d8a2c335cd1ae7ae59` |
| 2 | `theorem` | [assembleTopologicalAdmittedGraphHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/declarations/assembletopologicaladmittedgraphhierarchy--28906b28ee77e0ba9b078791.md) | 64 | `result-track:28906b28ee77e0ba9b07879113202cfc89905777158737f86a8265bd7117a1be` |
| 3 | `theorem` | [topological_admitted_graph_scoped_hierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/declarations/topological-admitted-graph-scoped-hierarchy--d0d27146330941369d57c96d.md) | 103 | `result-track:d0d27146330941369d57c96d28afa6100bc235924f163d5cba6f678df0f58ae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
