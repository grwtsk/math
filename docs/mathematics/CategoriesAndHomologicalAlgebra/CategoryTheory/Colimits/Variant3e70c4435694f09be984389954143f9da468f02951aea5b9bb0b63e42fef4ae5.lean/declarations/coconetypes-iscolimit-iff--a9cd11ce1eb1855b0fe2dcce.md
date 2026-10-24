# CoconeTypes.isColimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46fb445ebdbc4110e8117402dd9dd29626ab9c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2f8f414-48e0-a502-9323-003e7b2df08b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e15c6b88-7283-a76f-179f-3ec125b787e2",
  "kind": "lemma",
  "lexical_name": "CoconeTypes.isColimit_iff",
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
  "slug": "coconetypes-iscolimit-iff--a9cd11ce1eb1855b0fe2dcce",
  "source": {
    "blob": "46fb445ebdbc4110e8117402dd9dd29626ab9c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9cd11ce1eb1855b0fe2dccef4f6fbd370788585e2610b416ec7e79cb46d2e9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15c6b88-7283-a76f-179f-3ec125b787e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CoconeTypes.isColimit_iff (c : CoconeTypes.{u} F) :
    c.IsColimit ↔ Nonempty (Limits.IsColimit (F.coconeTypesEquiv c)) := by
  constructor
  · intro hc
    exact
     ⟨{ desc s := ↾fun x => hc.desc (F.coconeTypesEquiv.symm s) x
        fac s j := by
          ext x
          exact congr_fun (hc.fac (F.coconeTypesEquiv.symm s) j) x
        uniq s m hm := by
          ext x
          exact congr_fun (hc.funext fun j ↦ funext fun y ↦ by simp [← hm j]) x }⟩
  · rintro ⟨hc⟩
    classical
    refine ⟨⟨fun x y h ↦ ?_, fun x ↦ ?_⟩⟩
    · let f (z : F.ColimitType) : ULift.{u} Bool := ULift.up (x = z)
      suffices f x = f y by simpa [f] using this
      suffices ∀ z, hc.desc (F.coconeTypesEquiv (F.coconeTypes.postcomp f))
          (F.descColimitType c z) = f z by rw [← this x, h, ← this y]
      intro z
      obtain ⟨j, z, rfl⟩ := F.ιColimitType_jointly_surjective z
      exact ConcreteCategory.congr_hom (hc.fac _ j) z
    · let f₁ : (F.coconeTypesEquiv c).pt ⟶ (ULift.{u} Bool) :=
        ↾fun _ => ULift.up true
      let f₂ : (F.coconeTypesEquiv c).pt ⟶ (ULift.{u} Bool) :=
        ↾fun x => ULift.up (∃ a, F.descColimitType c a = x)
      suffices f₁ = f₂ by
        have := ConcreteCategory.congr_hom this x
        simpa [f₁, f₂] using this
      refine hc.hom_ext fun j => ?_
      ext x
      simpa [f₁, f₂] using ⟨F.ιColimitType j x, by simp⟩

end Functor

namespace Limits.Types

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fb445ebdbc4110e8117402dd9dd29626ab9c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
