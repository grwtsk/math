# exists_finset_3_le_card_with_pairs_summing_to_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0995127-bff5-d5dc-89c4-b0b168dc9b1a",
  "kind": "theorem",
  "lexical_name": "exists_finset_3_le_card_with_pairs_summing_to_squares",
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
  "slug": "exists-finset-3-le-card-with-pairs-summing-to-squares--2099402be380920a3eb09c45",
  "source": {
    "blob": "8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2099402be380920a3eb09c455e8074ceb7b868327ffe871ac903ade06c1b0670",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0995127-bff5-d5dc-89c4-b0b168dc9b1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_3_le_card_with_pairs_summing_to_squares (n : ℕ) (hn : 100 ≤ n) :
    ∃ B : Finset ℕ,
      2 * 1 + 1 ≤ B.card ∧
      (∀ (a) (_ : a ∈ B) (b) (_ : b ∈ B), a ≠ b → ∃ k, a + b = k ^ 2) ∧
      ∀ c ∈ B, n ≤ c ∧ c ≤ 2 * n := by
  obtain ⟨a, b, c, hna, hab, hbc, hcn, h₁, h₂, h₃⟩ := exists_triplet_summing_to_squares n hn
  refine' ⟨{a, b, c}, _, _, _⟩
  · suffices ({a, b, c} : Finset ℕ).card = 3 by rw [this]
    suffices a ∉ {b, c} ∧ b ∉ {c} by
      rw [Finset.card_insert_of_not_mem this.1, Finset.card_insert_of_not_mem this.2,
        Finset.card_singleton]
    · rw [Finset.mem_insert, Finset.mem_singleton, Finset.mem_singleton]
      push_neg
      exact ⟨⟨hab.ne, (hab.trans hbc).ne⟩, hbc.ne⟩
  · intro x hx y hy hxy
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx hy
    rcases hx with (rfl | rfl | rfl) <;> rcases hy with (rfl | rfl | rfl)
    all_goals
      first
      | contradiction
      | assumption
      | simpa only [add_comm x y]
  · simp only [Finset.mem_insert, Finset.mem_singleton]
    rintro d (rfl | rfl | rfl) <;> constructor <;> linarith only [hna, hab, hbc, hcn]
#align imo2021_q1.exists_finset_3_le_card_with_pairs_summing_to_squares Imo2021Q1.exists_finset_3_le_card_with_pairs_summing_to_squares

end Imo2021Q1

open Imo2021Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
