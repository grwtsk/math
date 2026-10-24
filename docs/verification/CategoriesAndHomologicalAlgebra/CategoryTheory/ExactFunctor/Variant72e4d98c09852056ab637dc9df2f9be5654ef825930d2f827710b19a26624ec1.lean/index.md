# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactFunctor.Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a4887581ec7a69f5b366776ba83234aede74ba",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a4887581ec7a69f5b366776ba83234aede74ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/mapderivedcategory--7ab80a1b4fd46f534d30d840.md) | 39 | `declaration-track:7ab80a1b4fd46f534d30d840840e006d206adf41e06826c154bfcbd89679c137` |
| 2 | `def` | [mapDerivedCategoryFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/mapderivedcategoryfactors--c3f5f630ceaacafa8f738885.md) | 44 | `declaration-track:c3f5f630ceaacafa8f7388859112126d40df6dadd23a57694a0ea879191dbcd6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--671858a84ce0540fbe4fe175.md) | 49 | `declaration-track:671858a84ce0540fbe4fe17565ccd0d5a95fa11e7d3da305098ede3d97887acb` |
| 4 | `def` | [mapDerivedCategoryFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/mapderivedcategoryfactorsh--4b2debc1682011fd9a7c153e.md) | 57 | `declaration-track:4b2debc1682011fd9a7c153e5df2a100d0f697d84d2459d5c509580bed755d72` |
| 5 | `lemma` | [mapDerivedCategoryFactorsh_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/mapderivedcategoryfactorsh-hom-app--1b4ce3b3cab94938dfb5d108.md) | 62 | `result-track:1b4ce3b3cab94938dfb5d1086578aefbf7232bc813e5c34f185b4b9f8e6456be` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--af3215f7fe887d248fe7c397.md) | 70 | `declaration-track:af3215f7fe887d248fe7c397297fbaef1078d2a9f37b133a1908fa381b7854cd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--e693090fc474db99b3dc24db.md) | 76 | `declaration-track:e693090fc474db99b3dc24db7d88a19ab99c373fce20fc08e73e847c83ebc20b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--7b4d54d6644aa228ad9f74f9.md) | 82 | `declaration-track:7b4d54d6644aa228ad9f74f9675aef77af53d0d950004ae78bdd927a80361861` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--17b11de3f6956a6ec76df918.md) | 88 | `declaration-track:17b11de3f6956a6ec76df9189c9d46f14fa6918db82852238009a6988bc18afb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant72e4d98c09852056ab637dc9df2f9be5654ef825930d2f827710b19a26624ec1.lean/declarations/instance--3983e89276fd01472f8f02c7.md) | 98 | `declaration-track:3983e89276fd01472f8f02c74ec2a3e2f3553c839aff00ba3320ecb81cbf7be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
