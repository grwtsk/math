# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6444d7a3c2717c575444e6f1fdb46e6e4694783",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6444d7a3c2717c575444e6f1fdb46e6e4694783`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Yoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsFiltered.iff_nonempty_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/isfiltered-iff-nonempty-limit--d05755a559adf1197946256b.md) | 38 | `result-track:d05755a559adf1197946256bfd171b22b63f5be42c55a57115508420db8ef3d6` |
| 2 | `theorem` | [IsCofiltered.iff_nonempty_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/iscofiltered-iff-nonempty-limit--eae0a3490e7c81eca357d7d5.md) | 50 | `result-track:eae0a3490e7c81eca357d7d551f4d197cf19015e40237357dbd59cc19206d4da` |
| 3 | `class` | [HasCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hascofilteredlimitsofsize--6b40543e74c49c31653fdb15.md) | 70 | `declaration-track:6b40543e74c49c31653fdb15929ef0d0030a57857178ebd6dd1d57ab5ba1546d` |
| 4 | `class` | [HasFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hasfilteredcolimitsofsize--a3c1a7dafabb68aa0b876566.md) | 76 | `declaration-track:a3c1a7dafabb68aa0b87656662f3a9bd22b2f5cec4458350295e25b81b0a72e8` |
| 5 | `abbrev` | [HasCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hascofilteredlimits--1cdab9e059c7dece26823665.md) | 81 | `declaration-track:1cdab9e059c7dece268236652f19ec4e7b8075c97103b6183156a8bdec530616` |
| 6 | `abbrev` | [HasFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hasfilteredcolimits--b8e2b19cee1b7cc09f5ad86a.md) | 84 | `declaration-track:b8e2b19cee1b7cc09f5ad86a7f6ea7f51858c190ce5d1f908a01e5c7e3b075be` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/instance--c7b19829e794072b4e43f2dd.md) | 88 | `declaration-track:c7b19829e794072b4e43f2dd48c32f05cd9c144f5e071208ec20cb9b70133989` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/instance--ff70679c4d8aae6fa1c89369.md) | 92 | `declaration-track:ff70679c4d8aae6fa1c89369ab2ec54ca35e0dcba1ac0cc4617ce4c7a3858c52` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/instance--02a7d7bf3f209520de572b10.md) | 96 | `declaration-track:02a7d7bf3f209520de572b1077bd4f372f47a24483554f02789ca76c85830886` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/instance--dd869b340f93d5c903e6b17d.md) | 101 | `declaration-track:dd869b340f93d5c903e6b17da516a052180339754cdcd380741972b90ef02c42` |
| 11 | `lemma` | [hasCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hascofilteredlimitsofsize-of-univle--81499cf991621a399b0c6d75.md) | 106 | `result-track:81499cf991621a399b0c6d7590ff9c42114cab4792daebc3c8c994ed153de861` |
| 12 | `lemma` | [hasCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hascofilteredlimitsofsize-shrink--d2239d0248f304e1cb5963ff.md) | 115 | `result-track:d2239d0248f304e1cb5963ffa59fceaf9ac5b4b2c820286ffa82dec129084794` |
| 13 | `lemma` | [hasFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hasfilteredcolimitsofsize-of-univle--f5a7c5e3160865d8ba167a96.md) | 119 | `result-track:f5a7c5e3160865d8ba167a963b63a6ac901f11e87a699d0462157f3920d6cb4c` |
| 14 | `lemma` | [hasFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf7f1d640de546ab9480df9ac7e151ade8c1a933b97988afaffac7b9268c83657.lean/declarations/hasfilteredcolimitsofsize-shrink--ffa4789a329097a1d4260e59.md) | 128 | `result-track:ffa4789a329097a1d4260e595a8597c0c2eb97fc58e279f11d242a1eb5aaf966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
