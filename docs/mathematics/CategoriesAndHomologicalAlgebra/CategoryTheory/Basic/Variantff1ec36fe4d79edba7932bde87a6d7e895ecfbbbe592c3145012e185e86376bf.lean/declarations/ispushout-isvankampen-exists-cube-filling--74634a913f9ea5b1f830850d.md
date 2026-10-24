# IsPushout.IsVanKampen.exists_cube_filling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa141eb7-ee21-3c96-3b01-680396423acd",
  "kind": "lemma",
  "lexical_name": "IsPushout.IsVanKampen.exists_cube_filling",
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
  "slug": "ispushout-isvankampen-exists-cube-filling--74634a913f9ea5b1f830850d",
  "source": {
    "blob": "d05c6c30b1f0971a74a2a01da21295d6d838be43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74634a913f9ea5b1f830850d22cf89d841afd43b6b5baaef34677513cccb9396",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa141eb7-ee21-3c96-3b01-680396423acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.IsVanKampen.exists_cube_filling {H : IsPushout f g h i} (H' : H.IsVanKampen)
    {X' Y' Z' : C} {h' : X' ⟶ Z'} {i' : Y' ⟶ Z'} {αX : X' ⟶ X} {αY : Y' ⟶ Y} {αZ : Z' ⟶ Z}
    [HasPullback αX f] (hh : IsPullback h' αX αZ h) (hi : IsPullback i' αY αZ i) :
    ∃ (W' : C) (f' : W' ⟶ X') (g' : W' ⟶ Y') (αW : W' ⟶ W),
      IsPullback f' αW αX f ∧ IsPullback g' αW αY g ∧ IsPushout f' g' h' i' := by
  let l := hi.lift ((pullback.fst αX f) ≫ h') ((pullback.snd αX f) ≫ g)
    (by simp only [Category.assoc, hh.toCommSq.w, pullback.condition_assoc, ← H.w])
  use (pullback αX f), (pullback.fst αX f), l, (pullback.snd αX f)
  refine ⟨IsPullback.of_hasPullback αX f, ?_, ?_⟩
  · refine IsPullback.of_right' ?_ hi
    rw [← H.w]
    exact IsPullback.paste_horiz (IsPullback.of_hasPullback αX f) hh
  · refine (H' (pullback.fst αX f) l h' i' (pullback.snd αX f) αX αY αZ
      (IsPullback.of_hasPullback αX f) ?_
        hh.toCommSq hi.toCommSq ⟨by simp only [IsPullback.lift_fst, l]⟩).2 ⟨hh, hi⟩
    · refine IsPullback.of_right' ?_ hi
      rw [← H.w]
      exact IsPullback.paste_horiz (IsPullback.of_hasPullback αX f) hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c6c30b1f0971a74a2a01da21295d6d838be43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
