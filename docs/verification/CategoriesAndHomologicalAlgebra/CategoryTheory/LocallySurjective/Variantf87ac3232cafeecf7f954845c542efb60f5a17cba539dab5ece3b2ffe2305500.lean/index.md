# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4732484b321b8542a097ed9f334c19b72ff4d9e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4732484b321b8542a097ed9f334c19b72ff4d9e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [regularTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/regulartopology-islocallysurjective-iff--028666a899a77bcdef4b50fb.md) | 39 | `result-track:028666a899a77bcdef4b50fb3d786c848eea346bd3c42ca6d04fcba77a525d53` |
| 2 | `lemma` | [extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/extensivetopology-surjective-of-islocallysurjective-sheaf-of-types--0c22341ef2889c839a637a92.md) | 57 | `result-track:0c22341ef2889c839a637a928d601b5160a4f07a8d79ee2317c865a58db77c13` |
| 3 | `lemma` | [extensiveTopology.presheafIsLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/extensivetopology-presheafislocallysurjective-iff--3a5be825e35e23d80b2638c5.md) | 90 | `result-track:3a5be825e35e23d80b2638c57a1fe4797404df5152c6d4287f7f9660c8c92222` |
| 4 | `lemma` | [extensiveTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/extensivetopology-islocallysurjective-iff--6a503de5b7f50cbf4a2bce82.md) | 104 | `result-track:6a503de5b7f50cbf4a2bce82eaae5c1a295120d2f4d2854a196e9c2723c13d4c` |
| 5 | `lemma` | [regularTopology.isLocallySurjective_sheaf_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/regulartopology-islocallysurjective-sheaf-of-types--0c2435cfcbd7e56fe5672bb5.md) | 111 | `result-track:0c2435cfcbd7e56fe5672bb5442793afc7891a67ff1239b194f6268ff0ff1fd4` |
| 6 | `lemma` | [coherentTopology.presheafIsLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/coherenttopology-presheafislocallysurjective-iff--7fcd9a660790479902d36fc3.md) | 146 | `result-track:7fcd9a660790479902d36fc31f9b271eb6f1790c4a8c87a65009ed28758d9c05` |
| 7 | `lemma` | [coherentTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/declarations/coherenttopology-islocallysurjective-iff--c71fcbd970fa10aceef0bbc7.md) | 159 | `result-track:c71fcbd970fa10aceef0bbc7d6f007cbaac27a8aad396bbc092181db34b43857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
