# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NoetherianObject.Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2554118dad8be7991b17241f69cfc366d08aaa73",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2554118dad8be7991b17241f69cfc366d08aaa73`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ContainsZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject--61e9423bcc993f6b6b6f86b0.md) | 42 | `declaration-track:61e9423bcc993f6b6b6f86b04ee018071e9f2549e0c4f5de6bbaa8690350e6f6` |
| 2 | `abbrev` | [IsNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject--3739f0f1a1d7b620204336a7.md) | 49 | `declaration-track:3739f0f1a1d7b620204336a77df1a481d08b2a34c04cb924c83d098b7d7c4469` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/instance--c6a30b4db96b3ebff6e098b7.md) | 51 | `declaration-track:c6a30b4db96b3ebff6e098b7d5f13ab75671f7f8403a476205d920c244757084` |
| 4 | `lemma` | [isNoetherianObject_iff_monotone_chain_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject-iff-monotone-chain-condition--98bb9442aa1fb6ed4c2f5a9e.md) | 54 | `result-track:98bb9442aa1fb6ed4c2f5a9e0a81813c01ceb0487eb43c6c144b99543f2471af` |
| 5 | `lemma` | [monotone_chain_condition_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/monotone-chain-condition-of-isnoetherianobject--3ba98c3837201bc88d97e363.md) | 62 | `result-track:3ba98c3837201bc88d97e3630f1f470d45845c83989c08631322df0f66799e89` |
| 6 | `lemma` | [isNoetherianObject_iff_not_strictMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject-iff-not-strictmono--949af48e0727b5eca8e6c0c2.md) | 67 | `result-track:949af48e0727b5eca8e6c0c2896a01a216855cd8e9db3f99015a607ba569f8eb` |
| 7 | `lemma` | [not_strictMono_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/not-strictmono-of-isnoetherianobject--e3ba9e73f3a05a80ddaec012.md) | 76 | `result-track:e3ba9e73f3a05a80ddaec012a2a533d159e51b42a4580b85f6619111d3f9774b` |
| 8 | `lemma` | [isNoetherianObject_iff_isEventuallyConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject-iff-iseventuallyconstant--ab9a6b7ed04b7ef548e5dd9c.md) | 81 | `result-track:ab9a6b7ed04b7ef548e5dd9c98badd992cb2029eaee58f3274bf96681bc2edd1` |
| 9 | `lemma` | [isEventuallyConstant_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/iseventuallyconstant-of-isnoetherianobject--e064332cda6e0eb4ca8bcebc.md) | 98 | `result-track:e064332cda6e0eb4ca8bcebcef75935f1069a7364f006e82d8fd1b86c1ef13c3` |
| 10 | `lemma` | [isNoetherianObject_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject-of-iszero--248053178c676a21e7c3307b.md) | 104 | `result-track:248053178c676a21e7c3307bb2b8644fe89058714581c6650d8e0f4d0565be82` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/instance--d6dd1a5373138b2285267e6b.md) | 110 | `declaration-track:d6dd1a5373138b2285267e6bc88cfed729fb0e528c0d87ea7aed20ce6c808387` |
| 12 | `lemma` | [isNoetherianObject_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/isnoetherianobject-of-mono--7e1dcaa2b3f948ac09553e48.md) | 115 | `result-track:7e1dcaa2b3f948ac09553e4893190f904b7e29127bf1b958cc0ff0086d4124e4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/declarations/instance--6310b75e35f85023d6c58c92.md) | 123 | `declaration-track:6310b75e35f85023d6c58c92fbb35d9e27260a8c816cc684a1eb3d68337af4ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
