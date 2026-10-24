# locally_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30d3404b-7879-37a7-4e21-064b6b4fc13f",
  "kind": "lemma",
  "lexical_name": "locally_respectsIso",
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
  "slug": "locally-respectsiso--640e583fd17b0280b34b0223",
  "source": {
    "blob": "e79cf4574ca91dbb7d9812c2231b517acd136f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 189,
    "path": "GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:640e583fd17b0280b34b0223dfef8376c2d67ec2b5d9b6cd0bf1000761e80586",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d3404b-7879-37a7-4e21-064b6b4fc13f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_respectsIso (hPi : RespectsIso P) : RespectsIso (Locally P) where
  left {R S T} _ _ _ f e := fun ⟨s, hsone, hs⟩ ↦ by
    refine ⟨e '' s, ?_, ?_⟩
    · rw [← Ideal.map_span, hsone, Ideal.map_top]
    · rintro - ⟨a, ha, rfl⟩
      let e' : Localization.Away a ≃+* Localization.Away (e a) :=
        IsLocalization.ringEquivOfRingEquiv _ _ e (Submonoid.map_powers e a)
      have : (algebraMap T (Localization.Away (e a))).comp e.toRingHom =
          e'.toRingHom.comp (algebraMap S (Localization.Away a)) := by
        ext x
        simp [e']
      rw [← RingHom.comp_assoc, this, RingHom.comp_assoc]
      apply hPi.left
      exact hs a ha
  right {R S T} _ _ _ f e := fun ⟨s, hsone, hs⟩ ↦
    ⟨s, hsone, fun a ha ↦ (RingHom.comp_assoc _ _ _).symm ▸ hPi.right _ _ (hs a ha)⟩

/-- If `P` holds for localization away maps, then so does `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79cf4574ca91dbb7d9812c2231b517acd136f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
