# equitableOn_iff_le_le_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ace02b9130af1f829c3d00d6afc9fe511657c794",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d16b5a16-fe51-420c-0453-025a41ca86c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43424c7e-9e6d-bfa1-cd4b-d7d63fe38294",
  "kind": "theorem",
  "lexical_name": "equitableOn_iff_le_le_add_one",
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
  "slug": "equitableon-iff-le-le-add-one--b4c8e860a21909903e24c79a",
  "source": {
    "blob": "ace02b9130af1f829c3d00d6afc9fe511657c794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4c8e860a21909903e24c79a518c1d6d0082fa39ef596174d06e48fd98cc5e35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43424c7e-9e6d-bfa1-cd4b-d7d63fe38294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equitableOn_iff_le_le_add_one :
    EquitableOn (s : Set α) f ↔
      ∀ a ∈ s, (∑ i in s, f i) / s.card ≤ f a ∧ f a ≤ (∑ i in s, f i) / s.card + 1 := by
  rw [Set.equitableOn_iff_exists_le_le_add_one]
  refine' ⟨_, fun h => ⟨_, h⟩⟩
  rintro ⟨b, hb⟩
  by_cases h : ∀ a ∈ s, f a = b + 1
  · intro a ha
    rw [h _ ha, sum_const_nat h, Nat.mul_div_cancel_left _ (card_pos.2 ⟨a, ha⟩)]
    exact ⟨le_rfl, Nat.le_succ _⟩
  push_neg at h
  obtain ⟨x, hx₁, hx₂⟩ := h
  suffices h : b = (∑ i in s, f i) / s.card
  · simp_rw [← h]
    apply hb
  symm
  refine'
    Nat.div_eq_of_lt_le (le_trans (by simp [mul_comm]) (sum_le_sum fun a ha => (hb a ha).1))
      ((sum_lt_sum (fun a ha => (hb a ha).2) ⟨_, hx₁, (hb _ hx₁).2.lt_of_ne hx₂⟩).trans_le _)
  rw [mul_comm, sum_const_nat]
  exact fun _ _ => rfl
#align finset.equitable_on_iff_le_le_add_one Finset.equitableOn_iff_le_le_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace02b9130af1f829c3d00d6afc9fe511657c794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
