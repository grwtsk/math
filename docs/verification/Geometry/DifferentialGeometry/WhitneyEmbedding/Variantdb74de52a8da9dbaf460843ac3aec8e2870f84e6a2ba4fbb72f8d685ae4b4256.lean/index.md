# Verification target: GRWTSK.Geometry.DifferentialGeometry.WhitneyEmbedding.Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84f483e7bc83788bf1a718b8e87caa57f83ce4b4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84f483e7bc83788bf1a718b8e87caa57f83ce4b4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean.json)

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
| 1 | `def` | [embeddingPiTangent](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent--11fda5739f500cdfb64710d2.md) | 53 | `declaration-track:11fda5739f500cdfb64710d2a3cf57182dcc551937b195d86baeec843c916a14` |
| 2 | `theorem` | [embeddingPiTangent_coe](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent-coe--6bbbc072046f592f11bea0b7.md) | 60 | `result-track:6bbbc072046f592f11bea0b7eb8ed434f287832d40fcd96beb278784402d42b2` |
| 3 | `theorem` | [embeddingPiTangent_injOn](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent-injon--c61250aaf74a974e887c36b3.md) | 64 | `result-track:c61250aaf74a974e887c36b39f7f1849c26830a1bbf06ccaab564fc32a8b5cc6` |
| 4 | `theorem` | [embeddingPiTangent_injective](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent-injective--3d714842658945969de3a803.md) | 73 | `result-track:3d714842658945969de3a803377cb31f4afda292b3104005d11d09913b666260` |
| 5 | `theorem` | [comp_embeddingPiTangent_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/comp-embeddingpitangent-mfderiv--e1b1ea54e515e24237307471.md) | 77 | `result-track:e1b1ea54e515e2423730747108d724f9739adfe0cef1383c0e565f92396f975e` |
| 6 | `theorem` | [embeddingPiTangent_ker_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent-ker-mfderiv--3e50e1870fe80513f04cf314.md) | 95 | `result-track:3e50e1870fe80513f04cf31483654f3d74d20701e6892a5612c6c80a4d9c9596` |
| 7 | `theorem` | [embeddingPiTangent_injective_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/embeddingpitangent-injective-mfderiv--c37d723f135f2720d6fba7a2.md) | 103 | `result-track:c37d723f135f2720d6fba7a22d7c4da26001c37dd3359449d9513d84b8111696` |
| 8 | `theorem` | [exists_immersion_euclidean](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/exists-immersion-euclidean--180278dc9bdb0cfa6a98582d.md) | 110 | `result-track:180278dc9bdb0cfa6a98582d4982099e6b077d4d19068fdaa1b7c41265212e13` |
| 9 | `theorem` | [exists_embedding_euclidean_of_compact](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantdb74de52a8da9dbaf460843ac3aec8e2870f84e6a2ba4fbb72f8d685ae4b4256.lean/declarations/exists-embedding-euclidean-of-compact--433e4e888bd454bda10f88bd.md) | 132 | `result-track:433e4e888bd454bda10f88bd9439b383f2b79d8988ac43c577944b986ed7c7df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
