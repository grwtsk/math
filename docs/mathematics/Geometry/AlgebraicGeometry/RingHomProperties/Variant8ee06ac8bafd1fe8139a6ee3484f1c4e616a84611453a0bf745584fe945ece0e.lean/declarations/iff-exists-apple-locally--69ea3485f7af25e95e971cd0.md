# iff_exists_appLE_locally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d6bfa7-4d7e-a955-4825-1590228fa0d8",
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
  "slug": "iff-exists-apple-locally--69ea3485f7af25e95e971cd0",
  "source": {
    "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 592,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ea3485f7af25e95e971cd0979c1f16cda8963fdd62a16618ca8cba5904b524",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d6bfa7-4d7e-a955-4825-1590228fa0d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–622.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
