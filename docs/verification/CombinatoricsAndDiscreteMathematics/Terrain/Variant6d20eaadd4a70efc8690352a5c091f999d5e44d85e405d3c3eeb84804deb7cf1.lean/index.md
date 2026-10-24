# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "183d4702bedfdf5005143f2a8562a3d38b910b85",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `183d4702bedfdf5005143f2a8562a3d38b910b85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Hypercube` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GammaResolutionPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/gammaresolutionpolicy--38adbbb6e1143d26eae5932a.md) | 11 | `declaration-track:38adbbb6e1143d26eae5932a8e04b9cb807f9b209b2eb50aa7367cfcb4eddf37` |
| 2 | `def` | [ActiveTerrainClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/activeterrainclosed--4ca421829c32e5d7cbf1e74f.md) | 26 | `declaration-track:4ca421829c32e5d7cbf1e74f0c9befc83f759a1d38610c61889df09396a700a0` |
| 3 | `structure` | [ActiveTerrain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/activeterrain--d7a535910fae0313ccaf9b3e.md) | 40 | `declaration-track:d7a535910fae0313ccaf9b3e36431f4afb5426b88aa82e2687d0207fee3c0824` |
| 4 | `theorem` | [node_resolves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/node-resolves--258d948dea0bb5e5eeaca95b.md) | 50 | `result-track:258d948dea0bb5e5eeaca95bfdcab492d49d5d232cbecc91acf84b36b972655d` |
| 5 | `theorem` | [edge_endpoints_active](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/edge-endpoints-active--6b2145cb53e4ffa75a01be6f.md) | 58 | `result-track:6b2145cb53e4ffa75a01be6f1111d2e91170d20a59630ce68d0efec3d278f1c0` |
| 6 | `structure` | [CellFaceAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/cellfaceaddress--b40edccf3597ae4221c07d01.md) | 72 | `declaration-track:b40edccf3597ae4221c07d0135e86fcd02daa23c4c434258c303e8016af2e356` |
| 7 | `structure` | [TerrainChain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/terrainchain--eaf64831335f8f9869e803fc.md) | 79 | `declaration-track:eaf64831335f8f9869e803fc5da361d805facd4c845950bf2130b2f5d707f74d` |
| 8 | `structure` | [TerrainAnchor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/declarations/terrainanchor--b7d855ea875984c7a64206e6.md) | 86 | `declaration-track:b7d855ea875984c7a64206e613d26fe2a12efaa596bb3f9075c634b2a756472c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
