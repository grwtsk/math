# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c34896d405ce7e07a812836013d00b9044580d8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c34896d405ce7e07a812836013d00b9044580d8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/dial--a71df2e9fef715d1789c2e35.md) | 61 | `declaration-track:a71df2e9fef715d1789c2e354c9c04b154eba3b94f6c92e9cb2fade99cfe51f8` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/hom--40326c7c4895ea1b01d70bf6.md) | 77 | `declaration-track:40326c7c4895ea1b01d70bf6c1da01f0ff7c0025e9af3084a27192e7f608d6b0` |
| 3 | `theorem` | [comp_le_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/comp-le-lemma--3e371b016cffdeaa54090a71.md) | 87 | `result-track:3e371b016cffdeaa54090a71afabfb32ecbcbbe338e08fa158973fb8482dea4e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/instance--0218d82561e756916d106767.md) | 96 | `declaration-track:0218d82561e756916d106767cac22010abe99923e6513524a77892924fc32681` |
| 5 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/hom-ext--5a5ab1d91d2f6e52c308a0a0.md) | 113 | `result-track:5a5ab1d91d2f6e52c308a0a034d9c3f283f5c896d4e1599395c2a156edc5988d` |
| 6 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/declarations/isomk--8fd8ecc7396e1fddd22c38cd.md) | 120 | `declaration-track:8fd8ecc7396e1fddd22c38cd873711a741a8314cf663d7fdc7116f242d1abd48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
