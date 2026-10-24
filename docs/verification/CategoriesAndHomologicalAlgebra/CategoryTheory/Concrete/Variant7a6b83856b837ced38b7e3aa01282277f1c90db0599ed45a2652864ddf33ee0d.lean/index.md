# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Concrete.Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afe0a622b8dc3fbabb6c1ed7d87f300b5ebf8b24",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afe0a622b8dc3fbabb6c1ed7d87f300b5ebf8b24`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Factorization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/injective--b5174e195b11c5e0df1915e9.md) | 44 | `declaration-track:b5174e195b11c5e0df1915e997708400438ce6a9959184390e922dda4d732dea` |
| 2 | `def` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/surjective--90fd8a93edc98cece0988e1b.md) | 47 | `declaration-track:90fd8a93edc98cece0988e1b3e3acba98e9126fa19557526a9c5f63840b7f0ee` |
| 3 | `def` | [bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/bijective--b974698d237ca2214f1d87d9.md) | 50 | `declaration-track:b974698d237ca2214f1d87d91e535c7c20c15f186b564e4a35f78452a2a1816c` |
| 4 | `theorem` | [bijective_eq_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/bijective-eq-sup--fbaa42341d47c9b51ddbbcf6.md) | 52 | `result-track:fbaa42341d47c9b51ddbbcf6f456d74624e61129d3aff9f17b86a2134a749d96` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/instance--f4f3718ea2b859a4a2d4bcd1.md) | 56 | `declaration-track:f4f3718ea2b859a4a2d4bcd16b8b6065bbfa08b199c37c90f6e7238d67c4f293` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/instance--6053efb5e945dea3589a49a1.md) | 66 | `declaration-track:6053efb5e945dea3589a49a1f7266e945690afefc819fbee07f201ddedd14be5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/instance--8a958b6b1a17c6ab90f27e27.md) | 76 | `declaration-track:8a958b6b1a17c6ab90f27e27c51aa9930f692ddf4009ad29ea3af0aec22e13e3` |
| 8 | `instance` | [injective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/injective-respectsiso--22873f630e19ab3adbf758a5.md) | 86 | `declaration-track:22873f630e19ab3adbf758a5f2ec5d36abc59d63a4f13076eadc0bfbf93906d4` |
| 9 | `instance` | [surjective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/surjective-respectsiso--7e0cc411286621961c97e46a.md) | 90 | `declaration-track:7e0cc411286621961c97e46af2385c00b40b5f6e03553a1ee1cb17afd32706b1` |
| 10 | `instance` | [bijective_respectsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/bijective-respectsiso--495987c9a51350370aa7e96b.md) | 94 | `declaration-track:495987c9a51350370aa7e96bb830c5e214db52ceafdc7e23515711501b34dd5d` |
| 11 | `abbrev` | [HasSurjectiveInjectiveFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/hassurjectiveinjectivefactorization--bbecd0c828dfb07dc2994d31.md) | 104 | `declaration-track:bbecd0c828dfb07dc2994d3177c361cf7115bf1a721f1360f8c1ddca2102557c` |
| 12 | `abbrev` | [HasFunctorialSurjectiveInjectiveFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/hasfunctorialsurjectiveinjectivefactorization--852edce4a9c3c2576ac95db6.md) | 109 | `declaration-track:852edce4a9c3c2576ac95db64dc91e0c199acf4e645717d56edf36519e3e51de` |
| 13 | `abbrev` | [FunctorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/functorialsurjectiveinjectivefactorizationdata--55700e332a6685f8473dbae5.md) | 114 | `declaration-track:55700e332a6685f8473dbae5003fdce00fe8856ba31136b9df0be51db4958f79` |
| 14 | `def` | [functorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/functorialsurjectiveinjectivefactorizationdata--3dca9145fc40a09db8212b7a.md) | 124 | `declaration-track:3dca9145fc40a09db8212b7a73881f568bd49a9bf52e6a5109fd440a49a99310` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant7a6b83856b837ced38b7e3aa01282277f1c90db0599ed45a2652864ddf33ee0d.lean/declarations/instance--4f108bc09c16df2ce5aa3bed.md) | 148 | `declaration-track:4f108bc09c16df2ce5aa3bed4353a4a8a6d0bd54657168fa6dd306e4f8272cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
