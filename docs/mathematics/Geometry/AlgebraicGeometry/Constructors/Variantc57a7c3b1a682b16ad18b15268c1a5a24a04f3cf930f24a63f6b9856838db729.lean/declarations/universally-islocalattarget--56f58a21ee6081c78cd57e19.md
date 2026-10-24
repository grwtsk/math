# universally_isLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df892e16-0cc1-1f48-43a6-2d7c354c0b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:134d3938-2936-c539-66de-a8c43066a2c5",
  "kind": "theorem",
  "lexical_name": "universally_isLocalAtTarget",
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
  "slug": "universally-islocalattarget--56f58a21ee6081c78cd57e19",
  "source": {
    "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 175,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56f58a21ee6081c78cd57e19e9802dd5db8a1e437e03a239a68cb59a818c4152",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:134d3938-2936-c539-66de-a8c43066a2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem universally_isLocalAtTarget (P : MorphismProperty Scheme)
    (hP₂ : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) {ι : Type u} (U : ι → Y.Opens)
      (_ : IsOpenCover U), (∀ i, P (f ∣_ U i)) → P f) : IsLocalAtTarget P.universally := by
  apply IsLocalAtTarget.mk'
  · exact fun {X Y} f U => P.universally.of_isPullback
      (isPullback_morphismRestrict f U).flip
  · intros X Y f ι U hU H X' Y' i₁ i₂ f' h
    apply hP₂ _ (fun i ↦ i₂ ⁻¹ᵁ U i)
    · simp only [IsOpenCover, ← top_le_iff] at hU ⊢
      rintro x -
      simpa using @hU (i₂.base x) trivial
    · rintro i
      refine H _ ((X'.isoOfEq ?_).hom ≫ i₁ ∣_ _) (i₂ ∣_ _) _ ?_
      · exact congr($(h.1.1) ⁻¹ᵁ U i)
      · rw [← (isPullback_morphismRestrict f _).paste_vert_iff]
        · simp only [Category.assoc, morphismRestrict_ι, Scheme.isoOfEq_hom_ι_assoc]
          exact (isPullback_morphismRestrict f' (i₂ ⁻¹ᵁ U i)).paste_vert h
        · rw [← cancel_mono (Scheme.Opens.ι _)]
          simp [morphismRestrict_ι_assoc, h.1.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bcf15636c887111b8f5d021d3744ed9d486c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
