# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3ecb41590ec17d82cae59f5c07cd70ef908c21d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3ecb41590ec17d82cae59f5c07cd70ef908c21d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/convexon-map-centermass-le--de224e2943137b8ded469732.md) | 54 | `result-track:de224e2943137b8ded469732dc9194846f6cd688a88be892ed34d95ec1ed8407` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/concaveon-le-map-centermass--58675cc94b0c91269e5de160.md) | 64 | `result-track:58675cc94b0c91269e5de160ed2d4be4bda650e02274d465d841393d248bc2e2` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/convexon-map-sum-le--b961b4ae7bd0ac48ed83ad04.md) | 71 | `result-track:b961b4ae7bd0ac48ed83ad049be2c8f81f61d0fe6954cb80ee364a7f554c6cd7` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/concaveon-le-map-sum--f40e83a76250f0ecf95cceca.md) | 78 | `result-track:f40e83a76250f0ecf95cceca694fcaf9ae2a2c1ffb3ddff47f11656d1166d967` |
| 5 | `theorem` | [le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/le-sup-of-mem-convexhull--c0cf914348e73b764e89c0c6.md) | 95 | `result-track:c0cf914348e73b764e89c0c6067c0abfbb659b917a20bbf11963af26995338cf` |
| 6 | `theorem` | [inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/inf-le-of-mem-convexhull--cd11cec32568fdf95afe0d45.md) | 103 | `result-track:cd11cec32568fdf95afe0d458af78952a7b25aaa3a82c75be919fea2260f6325` |
| 7 | `theorem` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/convexon-exists-ge-of-centermass--b17fd0b18e282e0eb18720a1.md) | 111 | `result-track:b17fd0b18e282e0eb18720a1d01eb9171f76100535aa10e87d28581032eeeb2e` |
| 8 | `theorem` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/concaveon-exists-le-of-centermass--bbc0eef0115e5b240ffb9c4e.md) | 128 | `result-track:bbc0eef0115e5b240ffb9c4e80179b828f51fe4f62df34828aca0cb59caf483e` |
| 9 | `theorem` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/convexon-exists-ge-of-mem-convexhull--eff3d5a0e35060d403b4f77b.md) | 135 | `result-track:eff3d5a0e35060d403b4f77ba95ef4ba3ad6360b443d846c77681cda0333fc6c` |
| 10 | `theorem` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/declarations/concaveon-exists-le-of-mem-convexhull--52ff2775230da5785e6421c1.md) | 147 | `result-track:52ff2775230da5785e6421c1cc63bdd9ced539fb30200ba27993f17bec15fa91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
