# Verification target: GRWTSK.Geometry.DifferentialGeometry.WhitneyEmbedding.Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "881254d50fa2f749246aecc5549cab2725d1dbb7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `881254d50fa2f749246aecc5549cab2725d1dbb7`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingPiTangent](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent--3054549ad84fab2dc3f65b82.md) | 61 | `declaration-track:3054549ad84fab2dc3f65b82562a53e914efebc6c9ac3c4e745ca50fd8a8e179` |
| 2 | `theorem` | [embeddingPiTangent_coe](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent-coe--50abff92538f6d9617220eb5.md) | 68 | `result-track:50abff92538f6d9617220eb5247c1c83eb896e3eb4689e94a4ef7475d244e24b` |
| 3 | `theorem` | [embeddingPiTangent_injOn](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent-injon--cb822a49b272cbd393d45369.md) | 72 | `result-track:cb822a49b272cbd393d45369bc13d5b4a1cd37773c6ae7fd85bfdbe587e0fb38` |
| 4 | `theorem` | [embeddingPiTangent_injective](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent-injective--d339715d3110266acdf3df08.md) | 81 | `result-track:d339715d3110266acdf3df0876f27fbe42cd8997878f4a868f217b1f0fd848d1` |
| 5 | `theorem` | [comp_embeddingPiTangent_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/comp-embeddingpitangent-mfderiv--a142e35bd59858dc9c9c05af.md) | 85 | `result-track:a142e35bd59858dc9c9c05afb38a54a86e6bedab894594ad47bd59b2bd9ae885` |
| 6 | `theorem` | [embeddingPiTangent_ker_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent-ker-mfderiv--e5aeba970fa511482ce36000.md) | 103 | `result-track:e5aeba970fa511482ce360002b1b17c2d2fa40090cbefc468c88eaf720ac51e1` |
| 7 | `theorem` | [embeddingPiTangent_injective_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/embeddingpitangent-injective-mfderiv--8fbd241f2304eed1630650e6.md) | 111 | `result-track:8fbd241f2304eed1630650e619c0949c4b6940047111f87de15c43e3d0026a42` |
| 8 | `theorem` | [exists_immersion_euclidean](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/exists-immersion-euclidean--d743f5c8d3075a03c9c3ff18.md) | 118 | `result-track:d743f5c8d3075a03c9c3ff188faa6932d267830ca2693dec32922b4cc15178f4` |
| 9 | `theorem` | [exists_embedding_euclidean_of_compact](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/declarations/exists-embedding-euclidean-of-compact--45102f10b598633e8f413d3b.md) | 140 | `result-track:45102f10b598633e8f413d3b082c01fb971e32457105948b288bad9b92818edf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
