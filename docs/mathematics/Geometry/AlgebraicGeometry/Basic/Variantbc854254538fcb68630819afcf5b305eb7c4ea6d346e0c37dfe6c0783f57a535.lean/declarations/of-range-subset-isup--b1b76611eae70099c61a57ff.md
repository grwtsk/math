# of_range_subset_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c840bfac-ccf5-7a23-8c15-ef673eea574a",
  "kind": "lemma",
  "lexical_name": "of_range_subset_iSup",
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
  "slug": "of-range-subset-isup--b1b76611eae70099c61a57ff",
  "source": {
    "blob": "ef34b06cff60c634df9ec888bdb06ad41b241450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 186,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1b76611eae70099c61a57ff786d589549b7522ad8a2854519a68c12d8bf5f60",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c840bfac-ccf5-7a23-8c15-ef673eea574a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_range_subset_iSup [P.RespectsRight @IsOpenImmersion] {ι : Type*} (U : ι → Y.Opens)
    (H : Set.range f.base ⊆ (⨆ i, U i : Y.Opens)) (hf : ∀ i, P (f ∣_ U i)) : P f := by
  let g : X ⟶ (⨆ i, U i : Y.Opens) := IsOpenImmersion.lift (Scheme.Opens.ι _) f (by simpa using H)
  rw [← IsOpenImmersion.lift_fac (⨆ i, U i).ι f (by simpa using H)]
  apply MorphismProperty.RespectsRight.postcomp (Q := @IsOpenImmersion) _ inferInstance
  rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := P) (U := fun i : ι ↦ (⨆ i, U i).ι ⁻¹ᵁ U i)]
  · intro i
    have heq : g ⁻¹ᵁ (⨆ i, U i).ι ⁻¹ᵁ U i = f ⁻¹ᵁ U i := by
      show (g ≫ (⨆ i, U i).ι) ⁻¹ᵁ U i = _
      simp [g]
    let e : Arrow.mk (g ∣_ (⨆ i, U i).ι ⁻¹ᵁ U i) ≅ Arrow.mk (f ∣_ U i) :=
        Arrow.isoMk (X.isoOfEq heq) (Scheme.Opens.isoOfLE (le_iSup U i)) <| by
      simp [← CategoryTheory.cancel_mono (U i).ι, g]
    rw [P.arrow_mk_iso_iff e]
    exact hf i
  apply (⨆ i, U i).ι.image_injective
  dsimp
  rw [Scheme.Hom.image_iSup, Scheme.Hom.image_top_eq_opensRange, Scheme.Opens.opensRange_ι]
  simp [Scheme.Hom.image_preimage_eq_opensRange_inter, le_iSup U]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef34b06cff60c634df9ec888bdb06ad41b241450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
