# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb798437b70be5105432ecfdd5823fdda09d72b5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb798437b70be5105432ecfdd5823fdda09d72b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_iff_preservesEpimorphisms_preadditiveYoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean/declarations/injective-iff-preservesepimorphisms-preadditiveyoneda-obj--ca1aaa4fb38f2cd3e3799930.md) | 30 | `result-track:ca1aaa4fb38f2cd3e3799930b547398e802ed39e458c505e93fe76375d6fe0fc` |
| 2 | `theorem` | [injective_iff_preservesEpimorphisms_preadditive_yoneda_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b.lean/declarations/injective-iff-preservesepimorphisms-preadditive-yoneda-obj--43893c83dbbf38d922d5639b.md) | 40 | `result-track:43893c83dbbf38d922d5639b1491617579fa1de918f4ef80c4a3539f527f3dad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
