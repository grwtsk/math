# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e088aa4bb2c7fa930a2de533949622df4b2416e7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e088aa4bb2c7fa930a2de533949622df4b2416e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Modification.Oplax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/whiskerleft--c8c0471612d300d548597b3c.md) | 33 | `declaration-track:c8c0471612d300d548597b3c4f331b3aca710f9525082ad014c43f3a5d61da23` |
| 2 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/whiskerright--ddb2c0353ea62889929c3b5e.md) | 42 | `declaration-track:ddb2c0353ea62889929c3b5ee7f1bff7af3b1ea74e0135580b566a7c5daf6248` |
| 3 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/associator--5bea0545636bd293c56685b4.md) | 51 | `declaration-track:5bea0545636bd293c56685b4ad5736a9500f4415a16de68afab7095dbef2ac31` |
| 4 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/leftunitor--de8c7f69a50c13ad56477da8.md) | 56 | `declaration-track:de8c7f69a50c13ad56477da8e501eb2ab9bc909671c3f0b80f53afaf74ec842d` |
| 5 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/rightunitor--37192e7570fd8dc223f33aec.md) | 61 | `declaration-track:37192e7570fd8dc223f33aec5cf1d661e10a191ffd2c7525c6d8bb298be290f4` |
| 6 | `instance` | [OplaxFunctor.bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/declarations/oplaxfunctor-bicategory--4fb03f39bba1ebaed4a68f48.md) | 68 | `declaration-track:4fb03f39bba1ebaed4a68f486f7533dc52d86d04127e8e5c32de0c5d16581f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
