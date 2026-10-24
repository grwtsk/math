# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalLimits.Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce657bc383c0bcbc5e7246303c4cf9a039e92a00",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce657bc383c0bcbc5e7246303c4cf9a039e92a00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasConicalLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimit--a33c557e210e72fa2eda93c0.md) | 60 | `declaration-track:a33c557e210e72fa2eda93c0993dc01b5a361c8b931d57ad1f94f2bd4a5a061a` |
| 2 | `class` | [HasConicalLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimitsofshape--4e38008831c7fcf94fc54935.md) | 69 | `declaration-track:4e38008831c7fcf94fc54935b04237230cc55acd77482fbc25dd3a11bdc9f956` |
| 3 | `class` | [HasConicalLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimitsofsize--10aac28ee68d2329ff92fece.md) | 80 | `declaration-track:10aac28ee68d2329ff92fecec2a08c38dc266e4a82dfa6b916dbf08fbff43825` |
| 4 | `abbrev` | [HasConicalLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimits--2f6614a1019c3199d3835238.md) | 89 | `declaration-track:2f6614a1019c3199d383523800abf6301b747d75b8c5d479c2f1573541cf46ba` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/example--806505a8b710da470ae33842.md) | 100 | `declaration-track:806505a8b710da470ae338421bb195d9e5fcd2d282d615c6271f0a6d5813ae9d` |
| 6 | `lemma` | [HasConicalLimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimit-of-iso--08c6b18f1f0505d726362aa1.md) | 103 | `result-track:08c6b18f1f0505d726362aa108e81342bc4c588ba48698cd21c40d41378e5055` |
| 7 | `instance` | [HasConicalLimit.of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimit-of-equiv--6726f5986155a3721ce69a00.md) | 108 | `declaration-track:6726f5986155a3721ce69a00611ae26603af2b56fb49c2507a972b7c64dc6564` |
| 8 | `lemma` | [HasConicalLimit.of_equiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimit-of-equiv-comp--43b1fb0582b5d5f8fc9f2171.md) | 112 | `result-track:43b1fb0582b5d5f8fc9f217140cf721cdafece64ad1a5bd4f8c087cc4b015df8` |
| 9 | `instance` | [HasConicalLimitsOfShape.hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimitsofshape-haslimitsofshape--320234ae6757a8abf0f6d6ea.md) | 121 | `declaration-track:320234ae6757a8abf0f6d6ea185e99ebe988215e1558228e5f929469da523dc7` |
| 10 | `lemma` | [HasConicalLimitsOfShape.of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimitsofshape-of-equiv--a762993a802a93d2cbe66b42.md) | 125 | `result-track:a762993a802a93d2cbe66b42c326820c42747c95f98996b52330d5a380e4c0cc` |
| 11 | `instance` | [HasConicalLimitsOfSize.hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/hasconicallimitsofsize-haslimitsofsize--2f862da12fa5cec205f08b9d.md) | 130 | `declaration-track:2f862da12fa5cec205f08b9d9b40068f4855fe1360ad8ce56c0f34aca391f94a` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/declarations/example--43acff8073ab47979a1bf3b0.md) | 134 | `declaration-track:43acff8073ab47979a1bf3b0c38f4c7ea77fca65b5f0b6300593b521d3a792ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
