# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothEmbedding.Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7c82c4ceb23e9dd0bc52b19c762f5d0b83732e9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7c82c4ceb23e9dd0bc52b19c762f5d0b83732e9`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean.json)

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
| 1 | `structure` | [IsSmoothEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/issmoothembedding--65f7f2badfb29b8abaf3b9e6.md) | 81 | `declaration-track:65f7f2badfb29b8abaf3b9e67e6209eef3acd978b215453fd675399f8dd93d15` |
| 2 | `lemma` | [id](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/id--eaed2cf94da4f1539bc1827d.md) | 89 | `result-track:eaed2cf94da4f1539bc1827dad25453fdc98d04158a2454c3d25df69f23e160f` |
| 3 | `theorem` | [prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/prodmap--4885d52c613ea9cc7db64412.md) | 93 | `result-track:4885d52c613ea9cc7db644126ff7e5b3bb31e6b1fbc3a8f344467e58dfd89d60` |
| 4 | `lemma` | [of_opens](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/of-opens--8406c702539d4bcbbfd331a7.md) | 100 | `result-track:8406c702539d4bcbbfd331a7597e72feaaa9e2ecd31c5e0feda6f51e715d7814` |
| 5 | `lemma` | [_root_.GRWTSK.Geometry.DifferentialGeometry.IsSmoothEmbedding.Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.ModelWithCorners.isSmoothEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/root-grwtsk-geometry-differentialgeometry-issmoothembedding-variant1e8f5--74e149cffd6bd8b521be08ec.md) | 106 | `result-track:74e149cffd6bd8b521be08ecdcc568ad6dc564a82528ba375d3ce88a8452d022` |
| 6 | `lemma` | [sumInl](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/suminl--85f438d659a83c7b391d8080.md) | 111 | `result-track:85f438d659a83c7b391d80800a53f468daf3f77d2ab868be95e704e46671a6a5` |
| 7 | `lemma` | [sumInr](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/suminr--14708c6ac4af4e9da5cf8aca.md) | 116 | `result-track:14708c6ac4af4e9da5cf8aca50502cee3000da84a005a6c14b76e81c0841d2bf` |
| 8 | `lemma` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/declarations/contmdiff--49393ecf5bb0ba7ffd307769.md) | 121 | `result-track:49393ecf5bb0ba7ffd30776989ba9e496c745639ad19a7d1bb322c03f2a01691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
