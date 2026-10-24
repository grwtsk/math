# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6999b6bb54591de0e4c44f2e5f38709cf8691bdc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6999b6bb54591de0e4c44f2e5f38709cf8691bdc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ColimitLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Bifunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/comp-lim-obj-ext--9aea3b75a518f762e121e9c7.md) | 47 | `result-track:9aea3b75a518f762e121e9c756caad9cd4a57212e542d0b1ac99c9f661164054` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimittolimitcolimit-injective--a270293f8a226aed51f05eff.md) | 69 | `result-track:a270293f8a226aed51f05effc786603dd777df8bc669d3fb49c42dbc8c58cecc` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimittolimitcolimit-surjective--7a56c2b1ba2f9d3f980072f7.md) | 160 | `result-track:7a56c2b1ba2f9d3f980072f7fa0e57a8377215e7458080970c31225cf27ce0df` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimittolimitcolimit-isiso--5ee09c2c829514f4cd043a29.md) | 323 | `declaration-track:5ee09c2c829514f4cd043a2980ac737e8780996d2a618a4569edc9b43c5a0992` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimittolimitcolimitcone-iso--46c501654140067c2705b4f6.md) | 327 | `declaration-track:46c501654140067c2705b4f669df9af2324b14f0ed77c283763222ce248d2836` |
| 6 | `instance` | [filtered_colim_preservesFiniteLimits_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/filtered-colim-preservesfinitelimits-of-types--2dbefba1e9b10b1d757e793a.md) | 336 | `declaration-track:2dbefba1e9b10b1d757e793a1bf86715f02043e0d51767ffe6b1e360796be401` |
| 7 | `instance` | [filtered_colim_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/filtered-colim-preservesfinitelimits--eefaf3f917c7f05fd2d4c745.md) | 354 | `declaration-track:eefaf3f917c7f05fd2d4c745eb2cb1c4b734f005fc0433e26f5a47c183ec38cd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/instance--616b84053e09b89ca29d16cf.md) | 364 | `declaration-track:616b84053e09b89ca29d16cf7582558b9234f56625990c439584f99c7b003de0` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimitiso--065a4639116d57f4bbb4fcc2.md) | 382 | `declaration-track:065a4639116d57f4bbb4fcc2a1cc7ae84103e6bf540050a6f35514990a00a167` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/declarations/colimitlimitiso-limit--04eb1d0b708aa49e6e1b50a3.md) | 387 | `result-track:04eb1d0b708aa49e6e1b50a3d732294ee741f707569d25489e24f9d56a7fa53a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
