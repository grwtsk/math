# Slice.Pos.Splits.lt_iff_exists_eq_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9ef153a9a0800e2d0990b4f2c19666ba9cd16dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 562,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1539e2c10f58fdc69b0c648534f98ba64482509d1d9cbb4de8d327654c6eb199.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c7d003e-429f-21b8-669b-4dfd5f307847",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5d2426d-ae11-d1dd-eb84-47637dd80079",
  "kind": "theorem",
  "lexical_name": "Slice.Pos.Splits.lt_iff_exists_eq_append",
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
  "slug": "slice-pos-splits-lt-iff-exists-eq-append--257b322b14d3a611e454bcc7",
  "source": {
    "blob": "c9ef153a9a0800e2d0990b4f2c19666ba9cd16dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 562,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Splits/Variant1539e2c10f58fdc69b0c648534f98ba64482509d1d9cbb4de8d327654c6eb199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257b322b14d3a611e454bcc7fcd40f3f02d21eadb7d150283d089432a7c65826",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Splits/Variant1539e2c10f58fdc69b0c648534f98ba64482509d1d9cbb4de8d327654c6eb199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5d2426d-ae11-d1dd-eb84-47637dd80079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Slice.Pos.Splits.lt_iff_exists_eq_append {s : Slice} {p₁ p₂ : s.Pos} {t₁ t₂ t₃ t₄ : String}
    (h : p₁.Splits t₁ t₂) (h' : p₂.Splits t₃ t₄) :
    p₁ < p₂ ↔ ∃ t₅, t₅ ≠ "" ∧ t₃ = t₁ ++ t₅ ∧ t₂ = t₅ ++ t₄ := by
  rw [Std.lt_iff_le_and_ne, h.le_iff_exists_eq_append h']
  refine ⟨?_, ?_⟩
  · rintro ⟨⟨t₅, ⟨rfl, rfl⟩⟩, h₂⟩
    refine ⟨t₅, fun hx => ?_, rfl, rfl⟩
    simp [hx] at h h'
    exact h₂ (h.pos_eq h')
  · rintro ⟨t₅, ⟨ht₅, rfl, rfl⟩⟩
    refine ⟨⟨t₅, rfl, rfl⟩, fun hx => ht₅ ?_⟩
    have := h.eq_left (hx ▸ h')
    simpa [eq_comm (a := t₁)] using (h.eq_left (hx ▸ h') :)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Splits/Variant1539e2c10f58fdc69b0c648534f98ba64482509d1d9cbb4de8d327654c6eb199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Splits/Variant1539e2c10f58fdc69b0c648534f98ba64482509d1d9cbb4de8d327654c6eb199.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ef153a9a0800e2d0990b4f2c19666ba9cd16dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
