# Verification target: GRWTSK.Geometry.DifferentialGeometry.WhitneyEmbedding.Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13afb8739a59481a20ce6597a6555ff5d268a8f5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13afb8739a59481a20ce6597a6555ff5d268a8f5`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingPiTangent](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent--0a1d3c71039bfd5afc4ae1a5.md) | 61 | `declaration-track:0a1d3c71039bfd5afc4ae1a598e52e635b1e5ca59e452a244eb5ccc4cd4510a1` |
| 2 | `theorem` | [embeddingPiTangent_coe](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent-coe--bec7e657a84f3d6231403939.md) | 68 | `result-track:bec7e657a84f3d6231403939ca2bfd32abc1761c15ad6a463ff1fd65d311d40f` |
| 3 | `theorem` | [embeddingPiTangent_injOn](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent-injon--683de6e2fd6bbee8a73b7fcc.md) | 72 | `result-track:683de6e2fd6bbee8a73b7fcc425d8c7bb664302c2d0b708eeea769c101dc3d9f` |
| 4 | `theorem` | [embeddingPiTangent_injective](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent-injective--adcc787e8522cd7c808d5f7e.md) | 81 | `result-track:adcc787e8522cd7c808d5f7e2d3b48a6dd783cf9cbf99e8ba925d1439801ed54` |
| 5 | `theorem` | [comp_embeddingPiTangent_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/comp-embeddingpitangent-mfderiv--c38c23212c68f851ec2878cd.md) | 85 | `result-track:c38c23212c68f851ec2878cda9edccf4f4c040d58b463ab13ed6ddb6286890dc` |
| 6 | `theorem` | [embeddingPiTangent_ker_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent-ker-mfderiv--fe5b7aed8a87b0a451bb12e7.md) | 103 | `result-track:fe5b7aed8a87b0a451bb12e7e6b618cefe1806fbbc821ef497dadc4e56253e40` |
| 7 | `theorem` | [embeddingPiTangent_injective_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/embeddingpitangent-injective-mfderiv--a69a7ae5ed1124dd8feb6a6a.md) | 111 | `result-track:a69a7ae5ed1124dd8feb6a6a15c4de93dc24684e32f41a62c4d64a245fab90ca` |
| 8 | `theorem` | [exists_immersion_euclidean](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/exists-immersion-euclidean--d96a8ddd9bbd60c36a98f225.md) | 118 | `result-track:d96a8ddd9bbd60c36a98f2255f56132cc432139409b07a945ac37dcf19fbc3bc` |
| 9 | `theorem` | [exists_embedding_euclidean_of_compact](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/declarations/exists-embedding-euclidean-of-compact--25a977891e51874551a6da67.md) | 140 | `result-track:25a977891e51874551a6da671990cea73cb3f957e0d5dfb21bc9e9b20f18e456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
