# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fb987f4c87d4aa1c18b8f789aab5d9d4edff462",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fb987f4c87d4aa1c18b8f789aab5d9d4edff462`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Connected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Connected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Equalizers` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/declarations/instance--3a2c547785e018aedde11848.md) | 31 | `declaration-track:3a2c547785e018aedde118484a73926b698ace92c3acdbbc50938ccb9e8362f5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/declarations/instance--0f9892252f19a899e330f7ea.md) | 38 | `declaration-track:0f9892252f19a899e330f7ea299781efe788bce323fcb87f1d0aa20da8f04a71` |
| 3 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/declarations/hasfinitelimits--dfe249181dbfb8d258e4bfee.md) | 44 | `declaration-track:dfe249181dbfb8d258e4bfeeadfec9758c69b4889b96f7199f46761586660bbe` |
| 4 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean/declarations/haslimits--3f25a4b44cd50e174f22f27d.md) | 51 | `declaration-track:3f25a4b44cd50e174f22f27dd7dce126a93161eca65f97f83f7912b2789c7719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
