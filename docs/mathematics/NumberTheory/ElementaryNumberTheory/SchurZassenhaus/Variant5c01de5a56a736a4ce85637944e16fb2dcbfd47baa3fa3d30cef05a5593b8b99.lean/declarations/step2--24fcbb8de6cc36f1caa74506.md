# step2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27890565-0ab7-56ad-9eb1-17b7eca59b8b",
  "kind": "theorem",
  "lexical_name": "step2",
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
  "slug": "step2--24fcbb8de6cc36f1caa74506",
  "source": {
    "blob": "f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 204,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24fcbb8de6cc36f1caa74506cbb55aea7f971ec3a5a6cd2860189e64a1b33437",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27890565-0ab7-56ad-9eb1-17b7eca59b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem step2 (K : Subgroup G) [K.Normal] (hK : K ≤ N) : K = ⊥ ∨ K = N := by
  have : Function.Surjective (QuotientGroup.mk' K) := Quotient.surjective_Quotient_mk''
  have h4 := step1 h1 h2 h3
  contrapose! h4
  have h5 : Fintype.card (G ⧸ K) < Fintype.card G := by
    rw [← index_eq_card, ← K.index_mul_card]
    refine'
      lt_mul_of_one_lt_right (Nat.pos_of_ne_zero index_ne_zero_of_finite)
        (K.one_lt_card_iff_ne_bot.mpr h4.1)
  have h6 :
    (Fintype.card (N.map (QuotientGroup.mk' K))).coprime (N.map (QuotientGroup.mk' K)).index := by
    have index_map := N.index_map_eq this (by rwa [QuotientGroup.ker_mk'])
    have index_pos : 0 < N.index := Nat.pos_of_ne_zero index_ne_zero_of_finite
    rw [index_map]
    refine' h1.coprime_dvd_left _
    rw [← Nat.mul_dvd_mul_iff_left index_pos, index_mul_card, ← index_map, index_mul_card]
    exact K.card_quotient_dvd_card
  obtain ⟨H, hH⟩ := h2 (G ⧸ K) h5 h6
  refine' ⟨H.comap (QuotientGroup.mk' K), _, _⟩
  · have key : (N.map (QuotientGroup.mk' K)).comap (QuotientGroup.mk' K) = N := by
      refine' comap_map_eq_self _
      rwa [QuotientGroup.ker_mk']
    rwa [← key, comap_sup_eq, hH.symm.sup_eq_top, comap_top]
  · rw [← comap_top (QuotientGroup.mk' K)]
    intro hH'
    rw [comap_injective this hH', isComplement'_top_right, map_eq_bot_iff,
      QuotientGroup.ker_mk'] at hH
    · exact h4.2 (le_antisymm hK hH)

/-- Do not use this lemma: It is made obsolete by `exists_right_complement'_of_coprime` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
