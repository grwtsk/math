# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelement.Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3b047a6993bc489b296d99d51e1e5df96cfdd5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3b047a6993bc489b296d99d51e1e5df96cfdd5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/x--4ef4a523256668a62a006304.md) | 49 | `declaration-track:4ef4a523256668a62a006304a54abdc8e3ab6b9c35ec98328c450c920afbc44d` |
| 2 | `def` | [y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/y--8bbc25257b28c9f582b571f4.md) | 53 | `declaration-track:8bbc25257b28c9f582b571f4ea2064b5e161b2d22da6ef2be84d8a7de23261c2` |
| 3 | `theorem` | [fst_x_pseudo_eq_fst_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/fst-x-pseudo-eq-fst-y--f059137421380e0d76184772.md) | 57 | `result-track:f059137421380e0d7618477220857998eb4782ba333ebd71bc9295f20a26dce7` |
| 4 | `theorem` | [snd_x_pseudo_eq_snd_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/snd-x-pseudo-eq-snd-y--bbf9c7407081c3f39af8b29f.md) | 64 | `result-track:bbf9c7407081c3f39af8b29f971d231d028a22bcc40cec9fc0d8ed0e58fc6d1b` |
| 5 | `theorem` | [x_not_pseudo_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/x-not-pseudo-eq--13e28ace84a93b64f855ef33.md) | 75 | `result-track:13e28ace84a93b64f855ef33d21bf3fc7d841096f95cf4b1b13abb8edbbc29cc` |
| 6 | `theorem` | [fst_mk'_x_eq_fst_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/fst-mk-x-eq-fst-mk-y--084911002008d97baa3e5e5b.md) | 101 | `result-track:084911002008d97baa3e5e5b2b549d7970720aef4041a22c59fa4c6613e48443` |
| 7 | `theorem` | [snd_mk'_x_eq_snd_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/snd-mk-x-eq-snd-mk-y--c143ab66a8d6c3646245f329.md) | 106 | `result-track:c143ab66a8d6c3646245f329f67d37c0dbea69249ef9b4b2f5e34c9d505d2122` |
| 8 | `theorem` | [mk'_x_ne_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/mk-x-ne-mk-y--4922f85d472c3ed7eb2b741e.md) | 114 | `result-track:4922f85d472c3ed7eb2b741ea4ad248959bd833a41cd5c60f9bfefcd0afe12b6` |
| 9 | `theorem` | [exist_ne_and_fst_eq_fst_and_snd_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/declarations/exist-ne-and-fst-eq-fst-and-snd-eq-snd--a7fbffdc39ea1f7722e8fc67.md) | 119 | `result-track:a7fbffdc39ea1f7722e8fc67df7a52dc0907187ee2da681bf88c67da9eb13299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
