# locally_iff_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1edbe094e293ae0f76af300840c5240230f91f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d20a0626-2782-712a-0e55-aa6ded10174d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e05c315f-d0f1-41e5-4deb-bafc643b8078",
  "kind": "lemma",
  "lexical_name": "locally_iff_isLocalization",
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
  "slug": "locally-iff-islocalization--d8d572d6a13246852d7da186",
  "source": {
    "blob": "f1edbe094e293ae0f76af300840c5240230f91f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d572d6a13246852d7da186cc4d859c9e0320914ac332e6906faca357f1bb54",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e05c315f-d0f1-41e5-4deb-bafc643b8078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_iff_isLocalization (hP : RespectsIso P) (f : R →+* S) :
    Locally P f ↔ ∃ (s : Finset S) (_ : Ideal.span (s : Set S) = ⊤),
      ∀ t ∈ s, ∀ (Sₜ : Type u) [CommRing Sₜ] [Algebra S Sₜ] [IsLocalization.Away t Sₜ],
      P ((algebraMap S Sₜ).comp f) := by
  rw [locally_iff_finite P f]
  refine ⟨fun ⟨s, hsone, hs⟩ ↦ ⟨s, hsone, fun t ht Sₜ _ _ _ ↦ ?_⟩, fun ⟨s, hsone, hs⟩ ↦ ?_⟩
  · let e : Localization.Away t ≃+* Sₜ :=
      (IsLocalization.algEquiv (Submonoid.powers t) _ _).toRingEquiv
    have : algebraMap S Sₜ = e.toRingHom.comp (algebraMap S (Localization.Away t)) :=
      RingHom.ext (fun x ↦ (AlgEquiv.commutes (IsLocalization.algEquiv _ _ _) _).symm)
    rw [this, RingHom.comp_assoc]
    exact hP.left _ _ (hs t ht)
  · exact ⟨s, hsone, fun t ht ↦ hs t ht _⟩

/-- If `f` satisfies `P`, then in particular it satisfies `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1edbe094e293ae0f76af300840c5240230f91f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
