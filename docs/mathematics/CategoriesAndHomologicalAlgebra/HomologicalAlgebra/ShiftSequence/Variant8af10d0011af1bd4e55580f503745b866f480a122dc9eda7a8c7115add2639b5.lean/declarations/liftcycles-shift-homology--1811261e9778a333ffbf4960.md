# liftCycles_shift_homologyπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d38fc59-9b33-7607-9f87-7f28860d183b",
  "kind": "lemma",
  "lexical_name": "liftCycles_shift_homologyπ",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "liftcycles-shift-homology--1811261e9778a333ffbf4960",
  "source": {
    "blob": "ad48080a627749c3bcfd9fe4e877ccb9b4e854ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1811261e9778a333ffbf496076ec671de1dbe459eed8222f726f8a85145dc611",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d38fc59-9b33-7607-9f87-7f28860d183b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftCycles_shift_homologyπ
    (K : CochainComplex C ℤ) {A : C} {n i : ℤ} (f : A ⟶ (K⟦n⟧).X i) (j : ℤ)
    (hj : (up ℤ).next i = j) (hf : f ≫ (K⟦n⟧).d i j = 0) (i' : ℤ) (hi' : n + i = i') (j' : ℤ)
    (hj' : (up ℤ).next i' = j') :
    (K⟦n⟧).liftCycles f j hj hf ≫ (K⟦n⟧).homologyπ i =
      K.liftCycles (f ≫ (K.shiftFunctorObjXIso n i i' (by omega)).hom) j' hj' (by
        simp only [next] at hj hj'
        obtain rfl : i' = i + n := by omega
        obtain rfl : j' = j + n := by omega
        dsimp at hf ⊢
        simp only [Linear.comp_units_smul] at hf
        apply (one_smul (M := ℤˣ) _).symm.trans _
        rw [← Int.units_mul_self n.negOnePow, mul_smul, comp_id, hf, smul_zero]) ≫
        K.homologyπ i' ≫
          ((HomologicalComplex.homologyFunctor C (up ℤ) 0).shiftIso n i i' hi').inv.app K := by
  simp only [liftCycles, homologyπ,
    shiftFunctorObjXIso, Functor.shiftIso, Functor.ShiftSequence.shiftIso,
    ShiftSequence.shiftIso_inv_app, ShortComplex.homologyπ_naturality,
    ShortComplex.liftCycles_comp_cyclesMap_assoc, shiftShortComplexFunctorIso_inv_app_τ₂,
    assoc, Iso.hom_inv_id, comp_id]
  rfl

end CochainComplex

namespace HomotopyCategory

variable [CategoryWithHomology C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad48080a627749c3bcfd9fe4e877ccb9b4e854ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
