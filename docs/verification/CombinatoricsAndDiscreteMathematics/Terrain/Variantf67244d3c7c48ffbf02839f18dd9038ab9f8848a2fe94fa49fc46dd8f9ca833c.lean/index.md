# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da443447f255398dd296274eaa69469b6548dcd5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da443447f255398dd296274eaa69469b6548dcd5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Hypercube` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GammaResolutionPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/gammaresolutionpolicy--97b30bfcafd8ed3301c7449c.md) | 19 | `declaration-track:97b30bfcafd8ed3301c7449cc4b67e1b81d65762544989d17e72e93f07d56a7f` |
| 2 | `def` | [ActiveTerrainClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/activeterrainclosed--a67245f67b5366324952b32e.md) | 34 | `declaration-track:a67245f67b5366324952b32e222935bac84cb5ab7b679229352569e6faec5865` |
| 3 | `structure` | [ActiveTerrain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/activeterrain--cc93699e7a26833b0d604aff.md) | 48 | `declaration-track:cc93699e7a26833b0d604affdf9aa43ebe042d0153359703747f8b2c88e45857` |
| 4 | `theorem` | [node_resolves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/node-resolves--5fd215213a55db77f5d43ff1.md) | 58 | `result-track:5fd215213a55db77f5d43ff171895448e88016ab4753b4b01a438d2cbf9b71d6` |
| 5 | `theorem` | [edge_endpoints_active](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/edge-endpoints-active--4724d3579a24b5eba2465712.md) | 66 | `result-track:4724d3579a24b5eba2465712c61e6362812fc11cd856d400410d7508ff191715` |
| 6 | `structure` | [CellFaceAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/cellfaceaddress--2b39f53ab03d11bc337a0eff.md) | 80 | `declaration-track:2b39f53ab03d11bc337a0effa5f39e6d3e71a8667ad8953087ccfc882b1382df` |
| 7 | `structure` | [TerrainChain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/terrainchain--0a86c80af1a24f4853f578dd.md) | 87 | `declaration-track:0a86c80af1a24f4853f578ddf93427b08ea615b32f71913ef3e7ded116b2f95d` |
| 8 | `structure` | [TerrainAnchor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c.lean/declarations/terrainanchor--e2e3b99169b9d3e7c5317997.md) | 94 | `declaration-track:e2e3b99169b9d3e7c5317997e1bb67ee084a058690683a20f51d342f0e41336f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
