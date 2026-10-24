# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelement.Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36bdcc1e23625e5f73aed1f68455aaaca2d3e8f1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36bdcc1e23625e5f73aed1f68455aaaca2d3e8f1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/x--52146f620679b31f9f5da9b4.md) | 41 | `declaration-track:52146f620679b31f9f5da9b4563836e531a19c9547146ba19fab2d3e928a9a04` |
| 2 | `def` | [y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/y--5bc697474cea3b40434574d9.md) | 45 | `declaration-track:5bc697474cea3b40434574d947d6330add44632390ac21b74b85e25c0cace77f` |
| 3 | `theorem` | [fst_x_pseudo_eq_fst_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/fst-x-pseudo-eq-fst-y--69d2d6e74fcf246c6c623724.md) | 49 | `result-track:69d2d6e74fcf246c6c623724847cd7f1f3fda1af6f9b9d2ccea24c2ba60faf66` |
| 4 | `theorem` | [snd_x_pseudo_eq_snd_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/snd-x-pseudo-eq-snd-y--918db7fd7f9c9b500f7fe733.md) | 56 | `result-track:918db7fd7f9c9b500f7fe733024167369adcde1c71f3778de78ebccd072a3d87` |
| 5 | `theorem` | [x_not_pseudo_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/x-not-pseudo-eq--2c2e462a3399552a9f145544.md) | 67 | `result-track:2c2e462a3399552a9f1455441af904a84b0df331da8e1de325913807b6d7dbc7` |
| 6 | `theorem` | [fst_mk'_x_eq_fst_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/fst-mk-x-eq-fst-mk-y--54c35dd55908676f4714afce.md) | 93 | `result-track:54c35dd55908676f4714afce864c89b4400cfc0c6743178d4fcfe66fd1e5de71` |
| 7 | `theorem` | [snd_mk'_x_eq_snd_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/snd-mk-x-eq-snd-mk-y--093050839c6acc9828ef8a43.md) | 98 | `result-track:093050839c6acc9828ef8a43bc9f5bbe17d9a6cc65ce75155e62f07dff845c9d` |
| 8 | `theorem` | [mk'_x_ne_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/mk-x-ne-mk-y--24829749afeac07bb715e797.md) | 106 | `result-track:24829749afeac07bb715e79762dd44ae2c0369dada5ed6c359ca32496f837bc1` |
| 9 | `theorem` | [exist_ne_and_fst_eq_fst_and_snd_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/declarations/exist-ne-and-fst-eq-fst-and-snd-eq-snd--8bb55771e9112f9b32b63188.md) | 111 | `result-track:8bb55771e9112f9b32b6318820d855730af2720d44659f0a17d38f928abaec2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
