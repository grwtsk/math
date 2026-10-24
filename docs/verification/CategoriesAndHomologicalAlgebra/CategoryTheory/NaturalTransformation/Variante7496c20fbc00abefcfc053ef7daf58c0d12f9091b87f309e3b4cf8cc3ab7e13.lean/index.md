# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NaturalTransformation.Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "488540f298357ad112de244d857b3bea18a81c4a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `488540f298357ad112de244d857b3bea18a81c4a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/ismonoidal--923b4d05332131c99fba4872.md) | 52 | `declaration-track:923b4d05332131c99fba487275e51a5b9763d0a30cd21f8a4622a377895d464f` |
| 2 | `instance` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/id--d3233f1741d2d35b19d17b78.md) | 60 | `declaration-track:d3233f1741d2d35b19d17b78eeef01610293dafa5b2a745d1fef9f3dc9d0837b` |
| 3 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/comp--90ebd8343f5eed7c9f1af35d.md) | 62 | `declaration-track:90ebd8343f5eed7c9f1af35d8998923ee14df7109a1e49d6bbfe4ce4baf12707` |
| 4 | `instance` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/hcomp--8782b13fad99a333817a38b4.md) | 65 | `declaration-track:8782b13fad99a333817a38b439be24f6befeb75d1938c075902961200d8f82a4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--a3116d75f5f4bf42256b7e83.md) | 74 | `declaration-track:a3116d75f5f4bf42256b7e836c28bf4df7ead217a0a3676672ad0669d3b8d282` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--388c6c0de9cbc58c1042bce1.md) | 76 | `declaration-track:388c6c0de9cbc58c1042bce1d54a8cb15c9b555976df371cbf955a36e160a745` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--965b6578baebdc34c95599e0.md) | 78 | `declaration-track:965b6578baebdc34c95599e0309b4d36bdf4d2d5a7bb6305a0d948849697001a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--ceacfaaa7c0ccba38051938d.md) | 89 | `declaration-track:ceacfaaa7c0ccba38051938dad30c8a4629c1a52eb6d2902cd2f07faef58fa69` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--0767eed3a1573db81c184e54.md) | 110 | `declaration-track:0767eed3a1573db81c184e54474cbc15cf8fe471ff7015cf7eb3a2e9dd3af801` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--4cf44a5304e4dcf9427f5083.md) | 129 | `declaration-track:4cf44a5304e4dcf9427f5083fbd352d0710fcd87d6c75ea3a1cd7c6dff32c839` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--f9a56d4ceb8c33df45d679c9.md) | 139 | `declaration-track:f9a56d4ceb8c33df45d679c91b403f173aae4e743702211950a98dae8b60d422` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--589a9e478e2de26e54d3248f.md) | 153 | `declaration-track:589a9e478e2de26e54d3248f0a9f4719d863e167027c01c53aa5638ede1639a6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--39c35f15bae063b39b3be126.md) | 156 | `declaration-track:39c35f15bae063b39b3be12661d7be4ce6c28d3b145ffe00aae63a211a6b05f8` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/hom--cd2fd83bb843263201934cd1.md) | 166 | `declaration-track:cd2fd83bb843263201934cd19617e4342a680f8e30c9dc7aa020dde9b67900e4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/instance--f955350298becb88b67b2268.md) | 173 | `declaration-track:f955350298becb88b67b22685f7624d36efd1ef79b7db9e3ccd69211d465f2b0` |
| 16 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/id-hom--87d5ce9180b14f89b310ffb2.md) | 179 | `result-track:87d5ce9180b14f89b310ffb24446258af96a914457b52cea2492bab937160a31` |
| 17 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/comp-hom--5401d195e8f2742d35f712f0.md) | 182 | `result-track:5401d195e8f2742d35f712f0ceda528191d627c7835846a00b298491d69d9f95` |
| 18 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/hom-ext--2adadc44dcb2b88e40f7fa29.md) | 186 | `result-track:2adadc44dcb2b88e40f7fa290d0862ef4fc63c06feb057a4c61f7d5b9d715ef6` |
| 19 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/hommk--af87a9bd8646f61e48daff99.md) | 191 | `declaration-track:af87a9bd8646f61e48daff99b5573df3f487af25dcf59e7b8e8eb5ebfdc404d5` |
| 20 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/isomk--cf12072552dc8e8a8923e8b5.md) | 196 | `declaration-track:cf12072552dc8e8a8923e8b566c0082a6391f5f36bd608eb59ad34643fffd5a2` |
| 21 | `def` | [isoOfComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variante7496c20fbc00abefcfc053ef7daf58c0d12f9091b87f309e3b4cf8cc3ab7e13.lean/declarations/isoofcomponents--743ea37837e00616a18290bb.md) | 206 | `declaration-track:743ea37837e00616a18290bba823e75e735bac0499a70b5884257e579db189d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
