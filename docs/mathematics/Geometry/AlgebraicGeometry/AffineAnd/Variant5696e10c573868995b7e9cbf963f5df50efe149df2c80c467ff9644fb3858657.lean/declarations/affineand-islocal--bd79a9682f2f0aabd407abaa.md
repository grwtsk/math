# affineAnd_isLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d02f353760d42938ab9c1881c571d6c52e0cd42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:075cdc29-939e-e867-d51f-f35d6d9f4a9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faaa687d-acf7-28de-a166-1f8602b64d8f",
  "kind": "lemma",
  "lexical_name": "affineAnd_isLocal",
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
  "slug": "affineand-islocal--bd79a9682f2f0aabd407abaa",
  "source": {
    "blob": "6d02f353760d42938ab9c1881c571d6c52e0cd42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 59,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd79a9682f2f0aabd407abaa7c3b88542d09cfe3692e77d2538f0511dc5525c4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faaa687d-acf7-28de-a166-1f8602b64d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineAnd_isLocal (hPi : RingHom.RespectsIso Q) (hQl : RingHom.LocalizationAwayPreserves Q)
    (hQs : RingHom.OfLocalizationSpan Q) : (affineAnd Q).IsLocal where
  respectsIso := affineAnd_respectsIso hPi
  to_basicOpen {X Y _} f r := fun ⟨hX, hf⟩ ↦ by
    simp only [Opens.map_top] at hf
    constructor
    · simp only [Scheme.preimage_basicOpen, Opens.map_top]
      exact (isAffineOpen_top X).basicOpen _
    · dsimp only
      rw [morphismRestrict_appTop, CommRingCat.hom_comp, hPi.cancel_right_isIso]
      -- Not sure why the `show` fixes the following `rw` complaining about "motive is incorrect"
      show Q (Scheme.Hom.app f ((Y.basicOpen r).ι ''ᵁ ⊤)).hom
      rw [Scheme.Opens.ι_image_top]
      rw [(isAffineOpen_top Y).app_basicOpen_eq_away_map f (isAffineOpen_top X),
        CommRingCat.hom_comp, hPi.cancel_right_isIso, ← Scheme.Hom.appTop]
      dsimp only [Opens.map_top]
      haveI := (isAffineOpen_top X).isLocalization_basicOpen (f.appTop r)
      apply hQl
      exact hf
  of_basicOpenCover {X Y _} f s hs hf := by
    dsimp [affineAnd] at hf
    haveI : IsAffine X := by
      apply isAffine_of_isAffineOpen_basicOpen (f.appTop '' s)
      · apply_fun Ideal.map (f.appTop).hom at hs
        rwa [Ideal.map_span, Ideal.map_top] at hs
      · rintro - ⟨r, hr, rfl⟩
        simp_rw [Scheme.preimage_basicOpen] at hf
        exact (hf ⟨r, hr⟩).left
    refine ⟨inferInstance, hQs.ofIsLocalization' hPi (f.appTop).hom s hs fun a ↦ ?_⟩
    refine ⟨Γ(Y, Y.basicOpen a.val), Γ(X, X.basicOpen (f.appTop a.val)), inferInstance,
      inferInstance, inferInstance, inferInstance, inferInstance, ?_, ?_⟩
    · exact (isAffineOpen_top X).isLocalization_basicOpen (f.appTop a.val)
    · obtain ⟨_, hf⟩ := hf a
      rw [morphismRestrict_appTop, CommRingCat.hom_comp, hPi.cancel_right_isIso] at hf
      -- Not sure why the `show` fixes the following `rw` complaining about "motive is incorrect"
      have hf : Q (Scheme.Hom.app f ((Y.basicOpen a.1).ι ''ᵁ ⊤)).hom := hf
      rw [Scheme.Opens.ι_image_top] at hf
      rw [(isAffineOpen_top Y).app_basicOpen_eq_away_map _ (isAffineOpen_top X)] at hf
      rwa [CommRingCat.hom_comp, hPi.cancel_right_isIso] at hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d02f353760d42938ab9c1881c571d6c52e0cd42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
