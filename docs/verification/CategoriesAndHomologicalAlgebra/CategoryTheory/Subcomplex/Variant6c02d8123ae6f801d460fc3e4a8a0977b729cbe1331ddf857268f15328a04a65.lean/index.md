# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcomplex.Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e811c34ba058675df698a5bce849c62637426a3c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e811c34ba058675df698a5bce849c62637426a3c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Subcomplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/declarations/subcomplex--d225f9bdfcd58f553ca323e4.md) | 42 | `declaration-track:d225f9bdfcd58f553ca323e40bcc2b20edadff84df41fc8ffd54cab5194b1c01` |
| 2 | `abbrev` | [Subcomplex.toSSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/declarations/subcomplex-tosset--889a612b2345a9c19ee99297.md) | 47 | `declaration-track:889a612b2345a9c19ee992978454d10c31f9d4f2fd8ad6ce05c6a77da8b77aeb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/declarations/instance--864d431f0e01b68473f39325.md) | 49 | `declaration-track:864d431f0e01b68473f3932571f00c2099bead928f5ec182ad48efcdcd62abec` |
| 4 | `abbrev` | [Subcomplex.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/declarations/subcomplex--762c9295cf1f06c34034c810.md) | 53 | `declaration-track:762c9295cf1f06c34034c810d0156f9a606957534a42c0c6f8da4a1229a23e83` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcomplex/Variant6c02d8123ae6f801d460fc3e4a8a0977b729cbe1331ddf857268f15328a04a65.lean/declarations/instance--c03fac96e9383b9fdb19450c.md) | 55 | `declaration-track:c03fac96e9383b9fdb19450c2dd29ddbb00c35df4ae8ea9c602a60e75c4f6b34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
