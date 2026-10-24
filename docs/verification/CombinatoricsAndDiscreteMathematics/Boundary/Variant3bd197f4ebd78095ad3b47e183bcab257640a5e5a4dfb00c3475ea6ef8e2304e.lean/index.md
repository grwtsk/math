# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Boundary.Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "969352f8278b94da1b350b77888cfaf8f2f01960",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `969352f8278b94da1b350b77888cfaf8f2f01960`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.WindowCover` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/declarations/boundarystate--39f6f6554aae86f4086aca22.md) | 16 | `declaration-track:39f6f6554aae86f4086aca22ca1391ec3742de7d9ea6ffe070de1e0d525f1e62` |
| 2 | `structure` | [ResourceState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/declarations/resourcestate--eac3ee09075cd4ad03b99e76.md) | 22 | `declaration-track:eac3ee09075cd4ad03b99e7646c0bd8a0c4ff03d842457fd92a13faa7a276819` |
| 3 | `structure` | [GlobalTerrain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/declarations/globalterrain--54dc5d820f363f809c57d997.md) | 29 | `declaration-track:54dc5d820f363f809c57d9978cf5cad2880cf45ebc78ef4aed6c0f288cf562f3` |
| 4 | `theorem` | [vertex_mem_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/declarations/vertex-mem-locus--80a04b81d9ee7517d83426af.md) | 45 | `result-track:80a04b81d9ee7517d83426afefd70a7f0ad11beca92fec144704ee041bf87382` |
| 5 | `theorem` | [globalCoordinate_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e.lean/declarations/globalcoordinate-injective--bb0b5faa13a5507297bfe8fc.md) | 50 | `result-track:bb0b5faa13a5507297bfe8fcd44e0c22ce7b70e5ea2012cfed5c58aef13af090` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
