# exists_embedding_disjoint_range_of_add_le_ENat_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf7a2e6d-074a-185d-3b02-082623ea85a8",
  "kind": "theorem",
  "lexical_name": "exists_embedding_disjoint_range_of_add_le_ENat_card",
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
  "slug": "exists-embedding-disjoint-range-of-add-le-enat-card--7e13dab0360a4d9055da8da1",
  "source": {
    "blob": "f54579d93f406b5039c47df60fb82fe2548ef9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Embedding/Variantc5e2233b835323c541077e504463379f8f868ec18823aad1bd9b73d85651a767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e13dab0360a4d9055da8da19f5d8cc1a2d42c58c26d60490d4886b09a27efb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Embedding/Variantc5e2233b835323c541077e504463379f8f868ec18823aad1bd9b73d85651a767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf7a2e6d-074a-185d-3b02-082623ea85a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_embedding_disjoint_range_of_add_le_ENat_card
    [Finite s] (hs : s.ncard + n ≤ ENat.card α) :
    ∃ y : Fin n ↪ α, Disjoint s (range y) := by
  rsuffices ⟨y⟩ : Nonempty (Fin n ↪ (sᶜ : Set α))
  · use y.trans (subtype _)
    rw [Set.disjoint_right]
    rintro _ ⟨i, rfl⟩
    simpa only [← mem_compl_iff] using! Subtype.coe_prop (y i)
  rcases finite_or_infinite α with hα | hα
  · let _ : Fintype α := Fintype.ofFinite α
    classical
    apply nonempty_of_card_le
    rwa [Fintype.card_fin, ← add_le_add_iff_left s.ncard,
      ← Nat.card_eq_fintype_card, Nat.card_coe_set_eq,
        ncard_add_ncard_compl, ← ENat.natCast_le_natCast,
        ← ENat.card_eq_coe_natCard, ENat.natCast_add]
  · exact ⟨valEmbedding.trans s.toFinite.infinite_compl.to_subtype.natEmbedding⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Embedding/Variantc5e2233b835323c541077e504463379f8f868ec18823aad1bd9b73d85651a767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Embedding/Variantc5e2233b835323c541077e504463379f8f868ec18823aad1bd9b73d85651a767.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f54579d93f406b5039c47df60fb82fe2548ef9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
