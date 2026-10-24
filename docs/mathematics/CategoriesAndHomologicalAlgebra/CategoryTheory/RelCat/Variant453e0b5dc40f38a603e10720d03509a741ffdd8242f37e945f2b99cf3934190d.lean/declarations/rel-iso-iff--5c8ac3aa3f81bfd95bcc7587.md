# rel_iso_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a993b043-f4d7-0bff-aa98-e860fcbccd41",
  "kind": "theorem",
  "lexical_name": "rel_iso_iff",
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
  "slug": "rel-iso-iff--5c8ac3aa3f81bfd95bcc7587",
  "source": {
    "blob": "713cfe351816ad5a6b0391dac3326cc2292a9787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8ac3aa3f81bfd95bcc758797671228d642b3108cf28323ac1aa4ffba4e7407",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a993b043-f4d7-0bff-aa98-e860fcbccd41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_iso_iff {X Y : RelCat} (r : X ⟶ Y) :
    IsIso (C := RelCat) r ↔ ∃ f : (Iso (C := Type u) X Y), graphFunctor.map f.hom = r := by
  constructor
  · intro h
    have h1 := congr_fun₂ h.hom_inv_id
    have h2 := congr_fun₂ h.inv_hom_id
    simp only [RelCat.Hom.rel_comp_apply₂, RelCat.Hom.rel_id_apply₂, eq_iff_iff] at h1 h2
    obtain ⟨f, hf⟩ := Classical.axiomOfChoice (fun a => (h1 a a).mpr rfl)
    obtain ⟨g, hg⟩ := Classical.axiomOfChoice (fun a => (h2 a a).mpr rfl)
    suffices hif : IsIso (C := Type u) f by
      use asIso f
      ext x y
      simp only [asIso_hom, graphFunctor_map]
      constructor
      · rintro rfl
        exact (hf x).1
      · intro hr
        specialize h2 (f x) y
        rw [← h2]
        use x, (hf x).2, hr
    use g
    constructor
    · ext x
      apply (h1 _ _).mp
      use f x, (hg _).2, (hf _).2
    · ext y
      apply (h2 _ _).mp
      use g y, (hf (g y)).2, (hg y).2
  · rintro ⟨f, rfl⟩
    apply graphFunctor.map_isIso

section Opposite
open Opposite

/-- The argument-swap isomorphism from `RelCat` to its opposite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variant453e0b5dc40f38a603e10720d03509a741ffdd8242f37e945f2b99cf3934190d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713cfe351816ad5a6b0391dac3326cc2292a9787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
