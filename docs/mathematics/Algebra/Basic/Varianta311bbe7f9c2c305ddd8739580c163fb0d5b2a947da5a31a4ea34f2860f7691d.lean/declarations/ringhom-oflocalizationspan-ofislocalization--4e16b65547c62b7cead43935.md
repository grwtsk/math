# RingHom.OfLocalizationSpan.ofIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8089a303-fb38-8465-6642-730a0c2d1646",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d2091d2-7a8a-ef65-5072-755d48e68790",
  "kind": "lemma",
  "lexical_name": "RingHom.OfLocalizationSpan.ofIsLocalization",
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
  "slug": "ringhom-oflocalizationspan-ofislocalization--4e16b65547c62b7cead43935",
  "source": {
    "blob": "d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 324,
    "path": "GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e16b65547c62b7cead4393585d1c8611d8b10774d3ad1548d55ec79e4c90853",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2091d2-7a8a-ef65-5072-755d48e68790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.OfLocalizationSpan.ofIsLocalization
    (hP : RingHom.OfLocalizationSpan P) (hPi : RingHom.RespectsIso P)
    {R S : Type u} [CommRing R] [CommRing S] (f : R →+* S) (s : Set R) (hs : Ideal.span s = ⊤)
    (hT : ∀ r : s, ∃ (Rᵣ Sᵣ : Type u) (_ : CommRing Rᵣ) (_ : CommRing Sᵣ)
      (_ : Algebra R Rᵣ) (_ : Algebra S Sᵣ) (_ : IsLocalization.Away r.val Rᵣ)
      (_ : IsLocalization.Away (f r.val) Sᵣ) (fᵣ : Rᵣ →+* Sᵣ)
      (_ : fᵣ.comp (algebraMap R Rᵣ) = (algebraMap S Sᵣ).comp f),
        P fᵣ) : P f := by
  apply hP _ s hs
  intro r
  obtain ⟨Rᵣ, Sᵣ, _, _, _, _, _, _, fᵣ, hfᵣ, hf⟩ := hT r
  let e₁ := (Localization.algEquiv (.powers r.val) Rᵣ).toRingEquiv
  let e₂ := (IsLocalization.algEquiv (.powers (f r.val))
    (Localization (.powers (f r.val))) Sᵣ).symm.toRingEquiv
  have : Localization.awayMap f r.val =
      (e₂.toRingHom.comp fᵣ).comp e₁.toRingHom := by
    apply IsLocalization.ringHom_ext (.powers r.val)
    ext x
    have : fᵣ ((algebraMap R Rᵣ) x) = algebraMap S Sᵣ (f x) := by
      rw [← RingHom.comp_apply, hfᵣ, RingHom.comp_apply]
    simp [-AlgEquiv.symm_toRingEquiv, e₂, e₁, Localization.awayMap, IsLocalization.Away.map, this]
  rw [this]
  apply hPi.right
  apply hPi.left
  exact hf

/-- Variant of `RingHom.OfLocalizationSpan.ofIsLocalization` where
`fᵣ = IsLocalization.Away.map`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
