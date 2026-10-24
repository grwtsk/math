# locally_of_exists

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
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cda35f73-2432-66fe-3c6e-a2f4929c474b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a03c4023-644a-73a1-8138-ba2b1cc17fcd",
  "kind": "lemma",
  "lexical_name": "locally_of_exists",
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
  "slug": "locally-of-exists--6b2582591418e0bbec238780",
  "source": {
    "blob": "f1edbe094e293ae0f76af300840c5240230f91f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2582591418e0bbec238780970749cdbc1b2301f4b8725480bab44c06847412",
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

Occurrence: `result:a03c4023-644a-73a1-8138-ba2b1cc17fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_of_exists (hP : RespectsIso P) (f : R →+* S) {ι : Type*} (s : ι → S)
    (hsone : Ideal.span (Set.range s) = ⊤)
    (Sₜ : ι → Type u) [∀ i, CommRing (Sₜ i)] [∀ i, Algebra S (Sₜ i)]
    [∀ i, IsLocalization.Away (s i) (Sₜ i)] (hf : ∀ i, P ((algebraMap S (Sₜ i)).comp f)) :
    Locally P f := by
  use Set.range s, hsone
  rintro - ⟨i, rfl⟩
  let e : Localization.Away (s i) ≃+* Sₜ i :=
    (IsLocalization.algEquiv (Submonoid.powers (s i)) _ _).toRingEquiv
  have : algebraMap S (Localization.Away (s i)) = e.symm.toRingHom.comp (algebraMap S (Sₜ i)) :=
    RingHom.ext (fun x ↦ (AlgEquiv.commutes (IsLocalization.algEquiv _ _ _).symm _).symm)
  rw [this, RingHom.comp_assoc]
  exact hP.left _ _ (hf i)

/-- Equivalence variant of `locally_of_exists`. This is sometimes easier to use, if the
`IsLocalization.Away` instance can't be automatically inferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1edbe094e293ae0f76af300840c5240230f91f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
