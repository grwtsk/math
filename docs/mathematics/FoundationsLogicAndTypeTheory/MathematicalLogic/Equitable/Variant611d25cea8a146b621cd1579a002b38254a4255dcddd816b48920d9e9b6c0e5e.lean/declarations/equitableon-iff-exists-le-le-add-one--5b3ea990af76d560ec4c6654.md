# equitableOn_iff_exists_le_le_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694cb4b2fcdaca8e378da5cfc40a1cfa1c787cde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09f28847-9a80-d697-7cf4-41b87fe74bc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61014311-9b56-9c4c-a5f4-b3b2f771135e",
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
  "slug": "equitableon-iff-exists-le-le-add-one--5b3ea990af76d560ec4c6654",
  "source": {
    "blob": "694cb4b2fcdaca8e378da5cfc40a1cfa1c787cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b3ea990af76d560ec4c6654fca5b23a5decfc99b4ea53011babe5c6d94248d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61014311-9b56-9c4c-a5f4-b3b2f771135e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equitableOn_iff_exists_le_le_add_one {s : Set α} {f : α → ℕ} :
    s.EquitableOn f ↔ ∃ b, ∀ a ∈ s, b ≤ f a ∧ f a ≤ b + 1 := by
  refine ⟨?_, fun ⟨b, hb⟩ x y hx hy => (hb x hx).2.trans (add_le_add_right (hb y hy).1 _)⟩
  obtain rfl | ⟨x, hx⟩ := s.eq_empty_or_nonempty
  · simp
  intro hs
  by_cases h : ∀ y ∈ s, f x ≤ f y
  · exact ⟨f x, fun y hy => ⟨h _ hy, hs hy hx⟩⟩
  push_neg at h
  obtain ⟨w, hw, hwx⟩ := h
  refine ⟨f w, fun y hy => ⟨Nat.le_of_succ_le_succ ?_, hs hy hw⟩⟩
  rw [(Nat.succ_le_of_lt hwx).antisymm (hs hx hw)]
  exact hs hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694cb4b2fcdaca8e378da5cfc40a1cfa1c787cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
