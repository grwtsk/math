# exists_finset_3_le_card_with_pairs_summing_to_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c5823ab79a726a006b41e36289498e1865d86de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ccb4257-6fa7-e5bc-1a60-d2a3577ddcdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56cebabe-fa11-7159-dabe-e54d5b9b6b77",
  "kind": "lemma",
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
  "slug": "exists-finset-3-le-card-with-pairs-summing-to-squares--0dbb1c5430e4d4100c1e6726",
  "source": {
    "blob": "3c5823ab79a726a006b41e36289498e1865d86de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbb1c5430e4d4100c1e6726f077a2524207ff553e979482cce9c80e55ae5f75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56cebabe-fa11-7159-dabe-e54d5b9b6b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finset_3_le_card_with_pairs_summing_to_squares {n : ℕ} (hn : 100 ≤ n) :
    ∃ B : Finset ℕ,
      2 * 1 + 1 ≤ #B ∧
      (∀ a ∈ B, ∀ b ∈ B, a ≠ b → IsSquare (a + b)) ∧
      ∀ c ∈ B, n ≤ c ∧ c ≤ 2 * n := by
  obtain ⟨a, b, c, hna, hab, hbc, hcn, h₁, h₂, h₃⟩ := exists_triplet_summing_to_squares hn
  refine ⟨{a, b, c}, ?_, ?_, ?_⟩
  · suffices a ∉ {b, c} ∧ b ∉ {c} by
      rw [Finset.card_insert_of_notMem this.1, Finset.card_insert_of_notMem this.2,
        Finset.card_singleton]
    rw [Finset.mem_insert, Finset.mem_singleton, Finset.mem_singleton]
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

end Imo2021Q1

open Imo2021Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c5823ab79a726a006b41e36289498e1865d86de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
