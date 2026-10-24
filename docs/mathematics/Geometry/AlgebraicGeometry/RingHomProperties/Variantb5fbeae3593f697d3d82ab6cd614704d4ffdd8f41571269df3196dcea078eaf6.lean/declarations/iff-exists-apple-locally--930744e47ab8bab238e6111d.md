# iff_exists_appLE_locally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 584,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7e91386-fa5a-a840-bd2a-b7faeea92256",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f577b1aa-19d9-44a0-b417-82dd21483600",
  "kind": "lemma",
  "lexical_name": "iff_exists_appLE_locally",
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
  "slug": "iff-exists-apple-locally--930744e47ab8bab238e6111d",
  "source": {
    "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 584,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930744e47ab8bab238e6111d8e878b4798d9aa51eeecf1ce74e1fedff7b9d70d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f577b1aa-19d9-44a0-b417-82dd21483600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_exists_appLE_locally
    (hQ : RingHom.StableUnderCompositionWithLocalizationAwaySource Q)
    (hQi : RespectsIso Q) [HasRingHomProperty P (Locally Q)] :
    P f ↔ ∀ (x : X), ∃ (U : Y.affineOpens) (V : X.affineOpens) (_ : x ∈ V.1) (e : V.1 ≤ f ⁻¹ᵁ U.1),
      Q (f.appLE U V e).hom := by
  have := respects_isOpenImmersion (P := P)
    (RingHom.locally_StableUnderCompositionWithLocalizationAwaySource hQ)
  refine ⟨fun hf x ↦ ?_, fun hf ↦ (IsLocalAtSource.iff_exists_resLE (P := P)).mpr <| fun x ↦ ?_⟩
  · obtain ⟨U, hU, hfx, _⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_affine_open Y)
      (Opens.mem_top <| f.base x)
    obtain ⟨V, hV, hx, e⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_affine_open X)
      (show x ∈ f ⁻¹ᵁ U from hfx)
    simp_rw [HasRingHomProperty.iff_appLE (P := P), locally_iff_isLocalization hQi] at hf
    obtain ⟨s, hs, hfs⟩ := hf ⟨U, hU⟩ ⟨V, hV⟩ e
    apply iSup_basicOpen_of_span_eq_top at hs
    have : x ∈ (⨆ i ∈ s, X.basicOpen i) := hs.symm ▸ hx
    have : ∃ r ∈ s, x ∈ X.basicOpen r := by simpa using this
    obtain ⟨r, hr, hrs⟩ := this
    refine ⟨⟨U, hU⟩, ⟨X.basicOpen r, hV.basicOpen r⟩, hrs, (X.basicOpen_le r).trans e, ?_⟩
    rw [← f.appLE_map e (homOfLE (X.basicOpen_le r)).op]
    haveI : IsLocalization.Away r Γ(X, X.basicOpen r) := hV.isLocalization_basicOpen r
    exact hfs r hr _
  · obtain ⟨U, V, hxV, e, hf⟩ := hf x
    use U, V, hxV, e
    simp only [iff_of_isAffine (P := P), Scheme.Hom.appLE, homOfLE_leOfHom] at hf ⊢
    haveI : (toMorphismProperty (Locally Q)).RespectsIso := toMorphismProperty_respectsIso_iff.mp <|
      (isLocal_ringHomProperty P).respectsIso
    exact (MorphismProperty.arrow_mk_iso_iff (toMorphismProperty (Locally Q))
      (arrowResLEAppIso f U V e)).mpr (locally_of hQi _ hf)

/-- `P` can be checked locally around points of the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
