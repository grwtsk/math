# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d385b9f4c02ca417f151bf1b4dab94b9ef2590a4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d385b9f4c02ca417f151bf1b4dab94b9ef2590a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.FunctorCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Monoidal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Localization` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.SheafHom` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorEnrichedHomCoyonedaObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/functorenrichedhomcoyonedaobjequiv--80aa537270b88da0c12fb66c.md) | 54 | `declaration-track:80aa537270b88da0c12fb66c0b11b78e6fb0d5143cfe8720af15eec7cb61d5aa` |
| 2 | `lemma` | [functorEnrichedHomCoyonedaObjEquiv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/functorenrichedhomcoyonedaobjequiv-naturality--b3616939d89c711812a0d065.md) | 92 | `result-track:b3616939d89c711812a0d065b3dea22c69361a8e2ab2cd92e8d430c7e00b0b4b` |
| 3 | `lemma` | [isSheaf_functorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/issheaf-functorenrichedhom--7a00dac07c4edd0fba4cc911.md) | 105 | `result-track:7a00dac07c4edd0fba4cc9114225b27e17e09dd4805fb2dcf7e0b15d538c3b5f` |
| 4 | `lemma` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/whiskerleft--3c598836fba1f206087428a5.md) | 126 | `result-track:3c598836fba1f206087428a543f82ef008e596ece22dc1bd2cb9cd5d918c2254` |
| 5 | `lemma` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/whiskerright--72c518c5550464cf3977e646.md) | 138 | `result-track:72c518c5550464cf3977e6465d64ae7b9015a29ab2715759b5ed4eb812abf994` |
| 6 | `instance` | [monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/monoidal--4857f14333d042315e694386.md) | 143 | `declaration-track:4857f14333d042315e6943865d0f315231ec13bec26b8df5e6c36fd03d325dd5` |
| 7 | `def` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/monoidalcategory--a460a2ee468327c2c3a06c0b.md) | 158 | `declaration-track:a460a2ee468327c2c3a06c0b04861f46001f284c169c0f229a4ab6278559c455` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/instance--5e95f43689b760d736c120e7.md) | 163 | `declaration-track:5e95f43689b760d736c120e7bede1f6c92cc68ad0136f45a362e38b485d6b91b` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/declarations/example--f35b7f974a988c9d6682fb93.md) | 169 | `declaration-track:f35b7f974a988c9d6682fb93ec892e1e15d32e7af1f93aa1469d5d64e4118fe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
