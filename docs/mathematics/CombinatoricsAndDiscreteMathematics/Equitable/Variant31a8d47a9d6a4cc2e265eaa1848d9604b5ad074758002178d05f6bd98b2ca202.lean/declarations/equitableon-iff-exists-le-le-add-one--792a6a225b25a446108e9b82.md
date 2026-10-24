# equitableOn_iff_exists_le_le_add_one

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
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91137f1f-c23c-13a9-0a3c-400377877d27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dc915a2-db64-027c-2104-61562918289c",
  "kind": "theorem",
  "lexical_name": "equitableOn_iff_exists_le_le_add_one",
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
  "slug": "equitableon-iff-exists-le-le-add-one--792a6a225b25a446108e9b82",
  "source": {
    "blob": "ace02b9130af1f829c3d00d6afc9fe511657c794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:792a6a225b25a446108e9b82e2b3600b6c3f2aaffc14f6cef92013334da8b3aa",
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

Occurrence: `result:5dc915a2-db64-027c-2104-61562918289c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equitableOn_iff_exists_le_le_add_one {s : Set α} {f : α → ℕ} :
    s.EquitableOn f ↔ ∃ b, ∀ a ∈ s, b ≤ f a ∧ f a ≤ b + 1 := by
  refine' ⟨_, fun ⟨b, hb⟩ x y hx hy => (hb x hx).2.trans (add_le_add_right (hb y hy).1 _)⟩
  obtain rfl | ⟨x, hx⟩ := s.eq_empty_or_nonempty
  · simp
  intro hs
  by_cases h : ∀ y ∈ s, f x ≤ f y
  · exact ⟨f x, fun y hy => ⟨h _ hy, hs hy hx⟩⟩
  push_neg at h
  obtain ⟨w, hw, hwx⟩ := h
  refine' ⟨f w, fun y hy => ⟨Nat.le_of_succ_le_succ _, hs hy hw⟩⟩
  rw [(Nat.succ_le_of_lt hwx).antisymm (hs hx hw)]
  exact hs hx hy
#align set.equitable_on_iff_exists_le_le_add_one Set.equitableOn_iff_exists_le_le_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace02b9130af1f829c3d00d6afc9fe511657c794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
