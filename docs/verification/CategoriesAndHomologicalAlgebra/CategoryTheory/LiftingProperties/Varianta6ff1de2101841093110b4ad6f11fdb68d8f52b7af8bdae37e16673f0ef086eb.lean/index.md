# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ebfd0c9a9b4b2946e667bc45b077da0244ffeb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ebfd0c9a9b4b2946e667bc45b077da0244ffeb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasLiftingProperty_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/declarations/hasliftingproperty-of-iszero--c0a6a19c583ad437289eba87.md) | 36 | `result-track:c0a6a19c583ad437289eba873c8beaaff0f7339f65f384abdaebdb2db9fbde13` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/declarations/instance--c638ce9c196260fa5dd21d5b.md) | 43 | `declaration-track:c638ce9c196260fa5dd21d5b00afbebd1987c3a2d338b369110831b5e232bfee` |
| 3 | `lemma` | [injective_iff_rlp_monomorphisms_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/declarations/injective-iff-rlp-monomorphisms-of-iszero--9534e19d347238892e99a7d3.md) | 49 | `result-track:9534e19d347238892e99a7d3a14ae070dbcf05f2d639c6a887a1d9968f2960a2` |
| 4 | `lemma` | [injective_iff_rlp_monomorphisms_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/declarations/injective-iff-rlp-monomorphisms-zero--0f0307f774dfe168e1a376f8.md) | 63 | `result-track:0f0307f774dfe168e1a376f8f3084d67421a4fd4a9629249c3d0ce33386c8e30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
