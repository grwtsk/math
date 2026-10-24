# step1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daaf010c-5112-dc58-116c-616fdb36b2b5",
  "kind": "theorem",
  "lexical_name": "step1",
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
  "slug": "step1--dd7cabbaa291cd7c1e903d0b",
  "source": {
    "blob": "e3d76d5379263a76b6040b4707be7cd4d58e9b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 167,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7cabbaa291cd7c1e903d0bcc69e52b09e61f6ea4a91639bf98ea147df8d2af",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daaf010c-5112-dc58-116c-616fdb36b2b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem step1 (K : Subgroup G) (hK : K ⊔ N = ⊤) : K = ⊤ := by
  contrapose! h3
  have h4 : (N.comap K.subtype).index = N.index := by
    rw [← N.relindex_top_right, ← hK]
    exact (relindex_sup_right K N).symm
  have h5 : Nat.card K < Nat.card G := by
    rw [← K.index_mul_card]
    exact lt_mul_of_one_lt_left Nat.card_pos (one_lt_index_of_ne_top h3)
  have h6 : Nat.Coprime (Nat.card (N.comap K.subtype)) (N.comap K.subtype).index := by
    rw [h4]
    exact h1.coprime_dvd_left (card_comap_dvd_of_injective N K.subtype Subtype.coe_injective)
  obtain ⟨H, hH⟩ := h2 K h5 h6
  replace hH : Nat.card (H.map K.subtype) = N.index := by
    rw [← relindex_bot_left, ← relindex_comap, MonoidHom.comap_bot, Subgroup.ker_subtype,
      relindex_bot_left, ← IsComplement'.index_eq_card (IsComplement'.symm hH), index_comap,
      range_subtype, ← relindex_sup_right, hK, relindex_top_right]
  have h7 : Nat.card N * Nat.card (H.map K.subtype) = Nat.card G := by
    rw [hH, ← N.index_mul_card, mul_comm]
  have h8 : (Nat.card N).Coprime (Nat.card (H.map K.subtype)) := by
    rwa [hH]
  exact ⟨H.map K.subtype, isComplement'_of_coprime h7 h8⟩

include h2 in
/-- Do not use this lemma: It is made obsolete by `exists_right_complement'_of_coprime` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d76d5379263a76b6040b4707be7cd4d58e9b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
