# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactSequences.Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce80314f7f2b00a96524d071b4f821965cad152",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce80314f7f2b00a96524d071b4f821965cad152`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.ExtClass` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Yoneda` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hom_comp_singleFunctor_map_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/hom-comp-singlefunctor-map-shift--f8efbffa98bf95cdc9d6c535.md) | 44 | `result-track:f8efbffa98bf95cdc9d6c53599ac6d5957d3f1038441e811944ffdb18585005d` |
| 2 | `lemma` | [preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/preadditivecoyoneda-homologysequence-singletriangle-apply--8fc8af96818e892386b94472.md) | 52 | `result-track:8fc8af96818e892386b94472c8ef7eae58dc3148735c73ffc33ecd55ecb93854` |
| 3 | `lemma` | [covariant_sequence_exact₂'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--5fe7288ee296d1849d8f603b.md) | 66 | `result-track:5fe7288ee296d1849d8f603b8e2440decd48172b1b34fb5c5cacdd7b75f292a3` |
| 4 | `lemma` | [covariant_sequence_exact₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--1955a2248867406f4848fd87.md) | 86 | `result-track:1955a2248867406f4848fd87d75fecf3080b0f23bfddbb526164d9114d1d0eaf` |
| 5 | `lemma` | [covariant_sequence_exact₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--f80c95513e0d8b6680a27e33.md) | 104 | `result-track:f80c95513e0d8b6680a27e33c5cdbc955c347473482ae2652accf1b89992ba00` |
| 6 | `def` | [covariantSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariantsequence--d2a3718689e89c98d59e8938.md) | 128 | `declaration-track:d2a3718689e89c98d59e8938cef14a711ce541b4e601b7506e3bf1da48654420` |
| 7 | `lemma` | [covariantSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariantsequence-exact--edc894b8b9a60a3b1caaa843.md) | 135 | `result-track:edc894b8b9a60a3b1caaa843e28fef5e0534af3c2e7a0d9abf8b65fc5669192c` |
| 8 | `lemma` | [covariant_sequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--fb9bdefab3773d1a0278a1d7.md) | 144 | `result-track:fb9bdefab3773d1a0278a1d74151c6bc122c4d60416a7c2fc95faa4fafac634a` |
| 9 | `lemma` | [covariant_sequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--596455612e9de45cbd56908c.md) | 152 | `result-track:596455612e9de45cbd56908c22db9faf1532f193b64264f7b68e41d897399e9e` |
| 10 | `lemma` | [covariant_sequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/covariant-sequence-exact--2a9440149f3aff2a47775d38.md) | 159 | `result-track:2a9440149f3aff2a47775d38f1d531a93ad6ffe04f0e573d7d27ca4384e3f456` |
| 11 | `lemma` | [singleFunctor_map_comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/singlefunctor-map-comp-hom--bcde8a15fe67e5de4409feb9.md) | 172 | `result-track:bcde8a15fe67e5de4409feb9678369afecf949dfec11503f9055f1b6507cfa6b` |
| 12 | `lemma` | [preadditiveYoneda_homologySequenceδ_singleTriangle_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/preadditiveyoneda-homologysequence-singletriangle-apply--c5f82995403bb65050c565a5.md) | 178 | `result-track:c5f82995403bb65050c565a5b20ae9eaae6c344efb28088916727ba1e58dd781` |
| 13 | `lemma` | [contravariant_sequence_exact₂'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--a71815bb93622a6b971bd1d6.md) | 190 | `result-track:a71815bb93622a6b971bd1d61d3f7a723cac196d0e2b748e437489e21f6e439f` |
| 14 | `lemma` | [contravariant_sequence_exact₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--2504a331e82809c61dcc7f51.md) | 209 | `result-track:2504a331e82809c61dcc7f5126290941bcaa0e203a67e736e6b556bf7d5e5edc` |
| 15 | `lemma` | [contravariant_sequence_exact₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--eff572e4a1dde60e0568911c.md) | 225 | `result-track:eff572e4a1dde60e0568911c8a245a2dd4d17234a601b3792386ca5c271e1a27` |
| 16 | `def` | [contravariantSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariantsequence--d485464f1112ccd5b42767b4.md) | 246 | `declaration-track:d485464f1112ccd5b42767b400e0cfc0bae1c4768cb618ad6e33091f77b9dfb4` |
| 17 | `lemma` | [contravariantSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariantsequence-exact--076fdea22e2cf004635cb6a2.md) | 253 | `result-track:076fdea22e2cf004635cb6a214fd4da30a44d7aca313a0574c071ef8a8cf3c31` |
| 18 | `lemma` | [contravariant_sequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--e7b91db85808f0e00d85071f.md) | 262 | `result-track:e7b91db85808f0e00d85071f90c60dea056a643cf9730cdcc9a8b4eab5d596e9` |
| 19 | `lemma` | [contravariant_sequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--fa79e68c00e87bbf8cbaafcf.md) | 270 | `result-track:fa79e68c00e87bbf8cbaafcf56ee2e2f2aef1471c7a78134f5617190229deaf6` |
| 20 | `lemma` | [contravariant_sequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/declarations/contravariant-sequence-exact--ebf2a5d1ff3a3b5a38b2410d.md) | 277 | `result-track:ebf2a5d1ff3a3b5a38b2410d19612681f1ba7333c2f2c2da3787041eb471e7ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
