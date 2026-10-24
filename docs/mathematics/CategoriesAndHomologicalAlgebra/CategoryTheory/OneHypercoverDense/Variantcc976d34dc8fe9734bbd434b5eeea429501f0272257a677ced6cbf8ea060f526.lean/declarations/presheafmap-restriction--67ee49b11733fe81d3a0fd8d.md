# presheafMap_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0e8bd68-5205-b0c4-2d2b-155bf14bfdbf",
  "kind": "lemma",
  "lexical_name": "presheafMap_restriction",
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
  "slug": "presheafmap-restriction--67ee49b11733fe81d3a0fd8d",
  "source": {
    "blob": "a9f8492e8ed9e9124305f00df1c3a3d867337147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ee49b11733fe81d3a0fd8d31669c3b23c3517a1cecd1ecd425c3e23902000a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e8bd68-5205-b0c4-2d2b-155bf14bfdbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafMap_restriction {X Y : C} {X₀ : C₀} (f : F.obj X₀ ⟶ X) (g : X ⟶ Y) :
    presheafMap data G₀ g ≫ restriction data G₀ f = restriction data G₀ (f ≫ g) := by
  refine Presheaf.IsSheaf.hom_ext G₀.property ⟨_, GrothendieckTopology.bind_covering
    (hS := cover_lift F J₀ J (J.pullback_stable f (data X).mem₀)) (hR := fun Y₀ a ha ↦
      cover_lift F J₀ J (J.pullback_stable
        (Sieve.ofArrows.h ha ≫ (data X).f (Sieve.ofArrows.i ha) ≫ g) (data Y).mem₀))⟩ _ _ ?_
  rintro ⟨U₀, _, Y₀, c, d, hd, hc, rfl⟩
  have hc' := Sieve.ofArrows.fac hc
  have hd' := Sieve.ofArrows.fac hd
  dsimp at hc hd hc' hd' ⊢
  /- #adaptation_note Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed the `fac`
  arguments below (i.e. `fac := by grind`). It is not yet clear whether this is due to defeq
  abuse in Mathlib or a problem in the new canonicalizer; a minimization would help. -/
  rw [assoc, ← op_comp, restriction_map (i := Sieve.ofArrows.i hd)
    (p := F.map c ≫ Sieve.ofArrows.h hd) (fac := by simp; grind),
    restriction_map (i := Sieve.ofArrows.i hc) (p := Sieve.ofArrows.h hc) (fac := by simp; grind),
    presheafMap_π_assoc]
  dsimp
  have := J₀.intersection_covering (IsDenseSubsite.imageSieve_mem J₀ J F (Sieve.ofArrows.h hc))
    (J₀.pullback_stable c (IsDenseSubsite.imageSieve_mem J₀ J F (Sieve.ofArrows.h hd)))
  refine Presheaf.IsSheaf.hom_ext G₀.property ⟨_, this⟩ _ _ ?_
  rintro ⟨V₀, a, ⟨x₁, fac₁⟩, ⟨x₂, fac₂⟩⟩
  dsimp
  rw [assoc, assoc,
    IsDenseSubsite.mapPreimage_map_of_fac J F G₀ _ _ x₂ (by simpa using fac₂.symm),
    IsDenseSubsite.mapPreimage_map_of_fac J F G₀ _ _ x₁ fac₁.symm]
  /- #adaptation_note Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), the last argument below was
  `by grind` (now `by simp_all`). It is not yet clear whether this is due to defeq abuse in
  Mathlib or a problem in the new canonicalizer; a minimization would help. -/
  rw [restriction_map data G₀ _ _ (F.map x₁) (by simp_all), IsDenseSubsite.mapPreimage_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f8492e8ed9e9124305f00df1c3a3d867337147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
