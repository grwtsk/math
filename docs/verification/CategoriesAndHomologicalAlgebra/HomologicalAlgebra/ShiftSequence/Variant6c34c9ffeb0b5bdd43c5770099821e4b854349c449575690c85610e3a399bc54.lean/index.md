# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ShiftSequence.Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c30d43c21d34b65eb720b93a35cf875b605e838e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c30d43c21d34b65eb720b93a35cf875b605e838e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.InducedShiftSequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftShortComplexFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftshortcomplexfunctor--9a9bc351644847f7319cd8a9.md) | 37 | `declaration-track:9a9bc351644847f7319cd8a9fec9211b035d6b37f16d66dc3e95abbb7d6a177f` |
| 2 | `def` | [shiftShortComplexFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftshortcomplexfunctoriso--7880b6c0f159ce63c3a405e7.md) | 49 | `declaration-track:7880b6c0f159ce63c3a405e703aae9491fe6bad50d02d003ef2cf9dcb5abc8d9` |
| 3 | `lemma` | [shiftShortComplexFunctorIso_zero_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftshortcomplexfunctoriso-zero-add-hom-app--a15d78763f5d20dd120a8778.md) | 56 | `result-track:a15d78763f5d20dd120a8778b05c08149ae55a4ba1617d317643af6f62d71d8d` |
| 4 | `lemma` | [shiftShortComplexFunctorIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftshortcomplexfunctoriso-add-hom-app--016f8b9e3f9b79e806f827ee.md) | 62 | `result-track:016f8b9e3f9b79e806f827ee86f8a78d8a99623f68a8ab5e6479a27e970ea2ca` |
| 5 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftiso--371626eeeb405ebe6c461973.md) | 80 | `declaration-track:371626eeeb405ebe6c461973cde39c758b03cfa2c2270325baf40c2a23421234` |
| 6 | `lemma` | [shiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftiso-hom-app--6e8ed690392909f66b23c76c.md) | 89 | `result-track:6e8ed690392909f66b23c76c0145169ac489556e8269d0c482780bd8ce8dfe28` |
| 7 | `lemma` | [shiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/shiftiso-inv-app--1c5e3e3c01ab943aff9b335a.md) | 102 | `result-track:1c5e3e3c01ab943aff9b335ae4e991d5f6dcd8e4560d5a906e8f58a68f455a85` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/instance--18f6b682289bd7a5cb7fa37c.md) | 112 | `declaration-track:18f6b682289bd7a5cb7fa37cb6b6090ce80a0c874d2acdb089601aa65f504461` |
| 9 | `lemma` | [quasiIsoAt_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/quasiisoat-shift-iff--fcc363b13a7be206c93ada93.md) | 129 | `result-track:fcc363b13a7be206c93ada93aa5296c01fa0f82445bef6807e0b531c970e3daa` |
| 10 | `lemma` | [quasiIso_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/quasiiso-shift-iff--48839c27b0da7cb1970d23ce.md) | 135 | `result-track:48839c27b0da7cb1970d23ce7498583bdf49485e71bbf329f2185cfa0bf07a29` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/instance--f959f173f1862a16f34272fb.md) | 145 | `declaration-track:f959f173f1862a16f34272fb28a6efd876ee097d15b37fccff5f1bccbc2a191c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/instance--2dd7d730950bded836a18018.md) | 150 | `declaration-track:2dd7d730950bded836a1801852b8b3455ba1238d76591de991efc75eea62e643` |
| 13 | `lemma` | [homologyFunctor_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/homologyfunctor-shift--6e9815988b43e06fdcd6c75c.md) | 154 | `result-track:6e9815988b43e06fdcd6c75cf5faa9908d3f3e65361083975cfa37a751553934` |
| 14 | `lemma` | [liftCycles_shift_homologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/liftcycles-shift-homology--15ace12baf7d622d86736fc0.md) | 159 | `result-track:15ace12baf7d622d86736fc0c66e790b2a7ffe35375e28d5ee914dbc18303366` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/instance--25b9e2de6ec2e39e567b4c12.md) | 187 | `declaration-track:25b9e2de6ec2e39e567b4c123d2b0f0409683158930e3e7e60df78c9ee595646` |
| 16 | `lemma` | [homologyShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/homologyshiftiso-hom-app--d8083c0fdf5c792bc6d5a44f.md) | 195 | `result-track:d8083c0fdf5c792bc6d5a44f2b1eacaf951b89f559315d63d55bcb75d5ae5c06` |
| 17 | `lemma` | [homologyFunctor_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant6c34c9ffeb0b5bdd43c5770099821e4b854349c449575690c85610e3a399bc54.lean/declarations/homologyfunctor-shiftmap--bd5bf7b5d1e9681d9fc532b6.md) | 205 | `result-track:bd5bf7b5d1e9681d9fc532b6e9bdd45a4ac9abc6142fe4a801e5c145c8f6e68e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
