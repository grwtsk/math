# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2c4419a0d4d3ba3dd6b3ee58235dcececb50115",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2c4419a0d4d3ba3dd6b3ee58235dcececb50115`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ColimitLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/comp-lim-obj-ext--cee6f622b6fe9ebf2ab7d1fa.md) | 49 | `result-track:cee6f622b6fe9ebf2ab7d1fadc205617085e61ce4dc0aba226110feceefaa93a` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimittolimitcolimit-injective--8d4972f7a4a3bd87da9495c3.md) | 71 | `result-track:8d4972f7a4a3bd87da9495c35c5a800d19b15dd35e1a1c78fc269f784cfb2a2a` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimittolimitcolimit-surjective--611645d733b0d29eb9e5a8f1.md) | 153 | `result-track:611645d733b0d29eb9e5a8f18a3537fa66855e9d002c7c3091a38298b8797987` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimittolimitcolimit-isiso--d85a9f23e1980ace16f480e5.md) | 323 | `declaration-track:d85a9f23e1980ace16f480e5a26e4021341f27809e9bd1b28651d5d9b52a5a39` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimittolimitcolimitcone-iso--18c5fe7da554598879b0c342.md) | 328 | `declaration-track:18c5fe7da554598879b0c34231584434c959d9bda3f051515c0050f46b29930b` |
| 6 | `instance` | [filteredColimPreservesFiniteLimitsOfTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/filteredcolimpreservesfinitelimitsoftypes--fd4197000af1e41857d2a924.md) | 338 | `declaration-track:fd4197000af1e41857d2a924ed84cfb7e29156ce0f8d46fde6dffff08e539531` |
| 7 | `instance` | [filteredColimPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/filteredcolimpreservesfinitelimits--b9b91fba9028f2f0be274b0b.md) | 359 | `declaration-track:b9b91fba9028f2f0be274b0bdeccb08ff7b1f0ea3dddc892e9d5aef1100219b4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/instance--f7dde140696996076a10b7b8.md) | 370 | `declaration-track:f7dde140696996076a10b7b83601d5792fa0a3d29528d31ceb603cc3d71a4c0a` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimitiso--cd9a6e35dc0be502aa29c0f4.md) | 386 | `declaration-track:cd9a6e35dc0be502aa29c0f473f862e10552024c922ec54879bb9bfe4608031c` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant4d43be8f766f6f53b4b66e3a1216517705bdae077b1cbedf8b9630fc05462f4c.lean/declarations/colimitlimitiso-limit--bed6f26fcfd9423f63670542.md) | 392 | `result-track:bed6f26fcfd9423f6367054274e3a8b306c58d1c347727b663bd4108a713ee39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
