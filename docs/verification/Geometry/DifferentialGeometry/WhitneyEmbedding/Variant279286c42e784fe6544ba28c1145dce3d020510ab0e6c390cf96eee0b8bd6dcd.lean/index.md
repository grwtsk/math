# Verification target: GRWTSK.Geometry.DifferentialGeometry.WhitneyEmbedding.Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afda663d4190bc7fd7a9fd1cd949d6d993ff33d5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afda663d4190bc7fd7a9fd1cd949d6d993ff33d5`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingPiTangent](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent--c97a70ea7de81919f92c240c.md) | 53 | `declaration-track:c97a70ea7de81919f92c240c54bbff9e619ef627d7c5e36fd32b79e61985f226` |
| 2 | `theorem` | [embeddingPiTangent_coe](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent-coe--e6eb020e716785b19abd2e39.md) | 60 | `result-track:e6eb020e716785b19abd2e3925925a598df6417eee1bebcd520c9e50861ad1dd` |
| 3 | `theorem` | [embeddingPiTangent_injOn](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent-injon--9ff5885632200fee0d479e0b.md) | 64 | `result-track:9ff5885632200fee0d479e0b09b88ceb946e7f2d6be88afac668658b97a85c95` |
| 4 | `theorem` | [embeddingPiTangent_injective](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent-injective--762813da8b8bf74e010f843d.md) | 73 | `result-track:762813da8b8bf74e010f843d8438d0976d4f358f09a4cfabfc0427d05f849ada` |
| 5 | `theorem` | [comp_embeddingPiTangent_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/comp-embeddingpitangent-mfderiv--abb76c5b17bad5e1f12d9e80.md) | 77 | `result-track:abb76c5b17bad5e1f12d9e806be8757e0f0f27bc112c8479bcb1754cd054143f` |
| 6 | `theorem` | [embeddingPiTangent_ker_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent-ker-mfderiv--d638ff2af32d0240e9823a89.md) | 95 | `result-track:d638ff2af32d0240e9823a8910be2f2e2cb797541224a87c2f2894aed318faff` |
| 7 | `theorem` | [embeddingPiTangent_injective_mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/embeddingpitangent-injective-mfderiv--5267f9839d9d457b1f968ac8.md) | 103 | `result-track:5267f9839d9d457b1f968ac8ea37380724e1863605eee94c8d018ebf011c3ad1` |
| 8 | `theorem` | [exists_immersion_euclidean](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/exists-immersion-euclidean--7f98ac22513d25b6d6b5c143.md) | 110 | `result-track:7f98ac22513d25b6d6b5c1439e1f1948687d7047616aea00f4ae5a849634b85c` |
| 9 | `theorem` | [exists_embedding_euclidean_of_compact](../../../../../mathematics/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/declarations/exists-embedding-euclidean-of-compact--3ef3db3b629c537a9d6a235b.md) | 132 | `result-track:3ef3db3b629c537a9d6a235bdfddfb3527e76a3059aab55405c6d516804dcacb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
