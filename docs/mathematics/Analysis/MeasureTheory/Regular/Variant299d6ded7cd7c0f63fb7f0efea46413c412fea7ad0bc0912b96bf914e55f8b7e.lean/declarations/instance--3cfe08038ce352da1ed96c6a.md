# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a6b7e4f4da743e51f5160f8c1fe1774c1775a6cc0a4fece5f0b8ed11694c55",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3cfe08038ce352da1ed96c6a",
  "source": {
    "blob": "887a9e4a4cf1dfae86499816f28ed35047105a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant299d6ded7cd7c0f63fb7f0efea46413c412fea7ad0bc0912b96bf914e55f8b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cfe08038ce352da1ed96c6a70b5d027521c3ab3370d76f9f11fb8c4451ff3fd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant299d6ded7cd7c0f63fb7f0efea46413c412fea7ad0bc0912b96bf914e55f8b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a6b7e4f4da743e51f5160f8c1fe1774c1775a6cc0a4fece5f0b8ed11694c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [μ.IsMulLeftInvariant] : ErgodicSMul G G μ := by
  refine ⟨fun {s} hsm hs ↦ ?_⟩
  suffices (∃ᵐ x ∂μ, x ∈ s) → ∀ᵐ x ∂μ, x ∈ s by
    simp only [eventuallyEmptyOrUniv_iff, ← not_frequently]
    exact or_not_of_imp this
  intro hμs
  obtain ⟨a, has, ha⟩ : ∃ a ∈ s, ∀ᵐ b ∂μ, (b * a ∈ s ↔ a ∈ s) := by
    refine (hμs.and_eventually ?_).exists
    rw [ae_ae_comm]
    · exact ae_of_all _ fun b ↦ (hs b).mem_iff
    · exact ((hsm.preimage <| measurable_snd.mul measurable_fst).mem.iff
        (hsm.preimage measurable_fst).mem).setOf
  simpa [has] using (MeasureTheory.quasiMeasurePreserving_mul_right μ a⁻¹).ae ha

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant299d6ded7cd7c0f63fb7f0efea46413c412fea7ad0bc0912b96bf914e55f8b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant299d6ded7cd7c0f63fb7f0efea46413c412fea7ad0bc0912b96bf914e55f8b7e.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887a9e4a4cf1dfae86499816f28ed35047105a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
