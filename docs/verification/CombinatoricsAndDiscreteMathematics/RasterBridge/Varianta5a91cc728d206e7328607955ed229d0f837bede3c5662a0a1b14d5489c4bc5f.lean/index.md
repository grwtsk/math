# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RasterBridge.Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19a038bf60ad42ec5b1095996a14e6c3d28c78c6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19a038bf60ad42ec5b1095996a14e6c3d28c78c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.ContinuousRaster` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.TerrainRealization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterSourceBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/declarations/rastersourcebridge--117623a1af27b61a7158ea7e.md) | 18 | `declaration-track:117623a1af27b61a7158ea7eab08767a761e6ac23fa438a09a9f81b230054f9a` |
| 2 | `theorem` | [vertexCoordinate_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/declarations/vertexcoordinate-injective--9f135a2b00f4d089adbb6ee7.md) | 44 | `result-track:9f135a2b00f4d089adbb6ee7cbc2d0d0719a02676f0a5a2d4e38460888bf8983` |
| 3 | `theorem` | [realization_commutes_at_vertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/declarations/realization-commutes-at-vertex--3a424e99f57025d88a404217.md) | 62 | `result-track:3a424e99f57025d88a404217a292056e01e7704465ae84f394f9e9e89d3dd902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
