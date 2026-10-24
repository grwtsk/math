# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimCoyoneda.Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eab5f3fd6454caf7c0ba1e1338ff7cdb12c7641",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eab5f3fd6454caf7c0ba1e1338ff7cdb12c7641`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Subobject` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/g--84910cc7303bec0928289127.md) | 68 | `declaration-track:84910cc7303bec092828912754b279d1282b1a5c7355bb0617490e2e1c886fd2` |
| 2 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/f--8df621f7eb36329b1b6619bb.md) | 76 | `declaration-track:8df621f7eb36329b1b6619bbc0780a4d6c2d82d9fa55896695090ae619f8b47e` |
| 3 | `lemma` | [hf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/hf--77c76eb476b3e47b8637d4da.md) | 79 | `result-track:77c76eb476b3e47b8637d4da8455c75d935b61b5bcf824ed034302602f401c7d` |
| 4 | `lemma` | [epi_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/epi-f--617c13b5fbf5b30255e893a4.md) | 85 | `result-track:617c13b5fbf5b30255e893a479549099601cdc82d9d31927e8c411b74fa733d1` |
| 5 | `def` | [F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/f--4ace6dc2c695187c266b5f18.md) | 97 | `declaration-track:4ace6dc2c695187c266b5f189b9908c48f01db713ac72c2623b1271f3394743d` |
| 6 | `lemma` | [injectivity₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/injectivity--08dd7e4245e3941cf7771c6d.md) | 111 | `result-track:08dd7e4245e3941cf7771c6d0be6b3b1d260610229299de7cf44b392c6b6bd4f` |
| 7 | `lemma` | [injectivity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/injectivity--d722af7688ca1d4637822807.md) | 122 | `result-track:d722af7688ca1d46378228075de92efb0619834fae3ca73d17e64908423c7f8f` |
| 8 | `def` | [F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/f--def29511731233e48e156a9c.md) | 155 | `declaration-track:def29511731233e48e156a9c0e0c8940cba03411ff45fc31e7047c25330be295` |
| 9 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/f--069ce8bcb0b7046878c3df7a.md) | 161 | `declaration-track:069ce8bcb0b7046878c3df7a7d290a123f7af3012e3d9baf999d2a39ab39914b` |
| 10 | `lemma` | [hf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/hf--ae5b2d68d0151afce22089c9.md) | 165 | `result-track:ae5b2d68d0151afce22089c9fa51542f828798a55ecd45941da72cbb338d2f2a` |
| 11 | `lemma` | [isIso_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/isiso-f--c8ceb0c5a703fac2eecde9ad.md) | 172 | `result-track:c8ceb0c5a703fac2eecde9ada9bcf13696e8997b84b721c7da6cc9c256bfb2ec` |
| 12 | `lemma` | [epi_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/epi-f--e7839b04a882d4dc848807bc.md) | 189 | `result-track:e7839b04a882d4dc848807bc0a4317dd0f81b64fb2e75213d640a2cf9611ade5` |
| 13 | `lemma` | [surjectivity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/surjectivity--542fb95ace3d8a31a30d95c8.md) | 197 | `result-track:542fb95ace3d8a31a30d95c80d81f7da0137d25cd68f6c9370ac32137accfdd4` |
| 14 | `lemma` | [preservesColimit_coyoneda_obj_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant839416496d5daef02d0b72c39442283cde3532be31ae2ea54867b5288ab922e8.lean/declarations/preservescolimit-coyoneda-obj-of-mono--6cb1e8b2fd81d41ae5fc1a40.md) | 218 | `result-track:6cb1e8b2fd81d41ae5fc1a40ff0523733e81e17b2f29da9139a6e0489086b382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
