# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedShiftSequence.Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f0331e1cee79cc85762e4880c8e1071bda6ee21",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f0331e1cee79cc85762e4880c8e1071bda6ee21`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftSequence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/isozero--87b26c72bf3254e6de27894f.md) | 46 | `declaration-track:87b26c72bf3254e6de27894f02c5f73804a174285279968d47adcdcec3c83814` |
| 2 | `lemma` | [isoZero_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/isozero-hom-app-obj--14262838ff47a94417c21636.md) | 49 | `result-track:14262838ff47a94417c216367cae1e47a057e3648f4a6ac38cba8acc0f925192` |
| 3 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/shiftiso--257d4e43f3041d92571d96fa.md) | 58 | `declaration-track:257d4e43f3041d92571d96faa4851d9ddf4b3e5674d49db668a30d0aa75a8fb3` |
| 4 | `lemma` | [shiftIso_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/shiftiso-hom-app-obj--814b85e8f55f555b225c596b.md) | 65 | `result-track:814b85e8f55f555b225c596b849b64836784c504d2a977d978a3f914146693ec` |
| 5 | `def` | [induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/induced--15d24e7f46c18324e53b08be.md) | 82 | `declaration-track:15d24e7f46c18324e53b08be09e3e8a78d5e18d36908e10b89000067afa1c621` |
| 6 | `lemma` | [induced_isoShiftZero_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/induced-isoshiftzero-hom-app-obj--1a13015019b33f6a0e991b31.md) | 111 | `result-track:1a13015019b33f6a0e991b31c5ca5396440651faa36446f2fa5b429a38c4af99` |
| 7 | `lemma` | [induced_shiftIso_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/induced-shiftiso-hom-app-obj--9f5bb139d1bf5a28d5455ee4.md) | 118 | `result-track:9f5bb139d1bf5a28d5455ee4f33f9adc673245574eb2bdd77372cf1347507ec2` |
| 8 | `lemma` | [induced_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variantb186411fc98ee084b0deb17b94c3fe202722df1e900cb975f42a37da61174ac0.lean/declarations/induced-shiftmap--c85def1f2c408a66dc8c5306.md) | 126 | `result-track:c85def1f2c408a66dc8c5306a7b75d861b1f4ca51e706175217ef0323169cad4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
