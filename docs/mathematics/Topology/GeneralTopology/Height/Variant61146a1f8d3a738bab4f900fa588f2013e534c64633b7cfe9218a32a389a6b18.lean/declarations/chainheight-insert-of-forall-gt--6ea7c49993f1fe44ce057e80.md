# chainHeight_insert_of_forall_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "823e7a3865e49d6c4b650563037c0c00e1772da1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5112f0b1-598c-064a-9bf1-b8f5e991f28a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be2bb97d-46e9-e9b4-9d0b-4b21d09d5ce7",
  "kind": "theorem",
  "lexical_name": "chainHeight_insert_of_forall_gt",
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
  "slug": "chainheight-insert-of-forall-gt--6ea7c49993f1fe44ce057e80",
  "source": {
    "blob": "823e7a3865e49d6c4b650563037c0c00e1772da1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ea7c49993f1fe44ce057e80d76249fd9889eff5d12c34919dc8a03b2234d228",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be2bb97d-46e9-e9b4-9d0b-4b21d09d5ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_insert_of_forall_gt (a : α) (hx : ∀ b ∈ s, a < b) :
    (insert a s).chainHeight = s.chainHeight + 1 := by
  rw [← add_zero (insert a s).chainHeight]
  change (insert a s).chainHeight + (0 : ℕ) = s.chainHeight + (1 : ℕ)
  apply le_antisymm <;> rw [chainHeight_add_le_chainHeight_add]
  · rintro (_ | ⟨y, ys⟩) h
    · exact ⟨[], nil_mem_subchain _, zero_le _⟩
    · have h' := cons_mem_subchain_iff.mp h
      refine ⟨ys, ⟨h'.2.1.1, fun i hi ↦ ?_⟩, by simp⟩
      apply (h'.2.1.2 i hi).resolve_left
      rintro rfl
      obtain - | hy := chain'_iff_pairwise.mp h.1
      rcases h'.1 with h' | h'
      exacts [(hy _ hi).ne h', not_le_of_gt (hy _ hi) (hx _ h').le]
  · intro l hl
    refine ⟨a::l, ⟨?_, ?_⟩, by simp⟩
    · rw [chain'_cons']
      exact ⟨fun y hy ↦ hx _ (hl.2 _ (mem_of_mem_head? hy)), hl.1⟩
    · rintro x (_ | _)
      exacts [Or.inl (Set.mem_singleton a), Or.inr (hl.2 x ‹x ∈ l›)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823e7a3865e49d6c4b650563037c0c00e1772da1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
