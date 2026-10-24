# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb94ebc6c24a31576e1ec8ba909f662c3c5646c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb94ebc6c24a31576e1ec8ba909f662c3c5646c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor.Grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/pseudofunctor-grothendieck--9ea587f704e1aa807cfeed98.md) | 41 | `declaration-track:9ea587f704e1aa807cfeed987ebb760252aafbaf00cec8b78016eccf22fb0439` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/hom--0da0ce35e321060fb679eab4.md) | 55 | `declaration-track:0da0ce35e321060fb679eab465875050035f9d3f76ade601708eeb4944614a33` |
| 3 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/categorystruct--cbfa95ecdbc9afd6bcc4c191.md) | 62 | `declaration-track:cbfa95ecdbc9afd6bcc4c191670c6f0dc9a47cc56c546a1b0c733cb40faaab14` |
| 4 | `lemma` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/hom-ext--7b44a03a5e48a4bc3fafe528.md) | 77 | `result-track:7b44a03a5e48a4bc3fafe5285ea1a2da057b89f642ec799776e3f6279a7cde0c` |
| 5 | `lemma` | [Hom.ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/hom-ext-iff--cb441c458d6a82e55a93c7bc.md) | 85 | `result-track:cb441c458d6a82e55a93c7bc96a55c4d0c624fde327d10d163b70a9a5663f238` |
| 6 | `lemma` | [Hom.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/hom-congr--30c5dc03d1a83500f3aa9d95.md) | 90 | `result-track:30c5dc03d1a83500f3aa9d95ea62c3bf55dc9378b5c2ed7a286e1217da1eb985` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/category--4e8d86eba2d5e51dafc4dbeb.md) | 97 | `declaration-track:4e8d86eba2d5e51dafc4dbeb5ce147638807f1e72a4d83cc5acff010fc2358d2` |
| 8 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant02e61305773321adf3989a6558012227518006facfca0ae5779c83d0c21fc8b5.lean/declarations/forget--1a6884ecf5cc51186d06c3ad.md) | 117 | `declaration-track:1a6884ecf5cc51186d06c3adc9bd2a96cf2312378b530321a3146c681718abc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
