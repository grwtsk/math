# ListBlank.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c37b5b8f5b0c3e61703e32f9cc06fc61cc47d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51e0cc02-dffa-c351-8662-4e576ce6f9b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:638fe3b3-9ff4-9c25-d2d1-181252b4a095",
  "kind": "theorem",
  "lexical_name": "ListBlank.ext",
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
  "slug": "listblank-ext--949e3c18536957a63aef728c",
  "source": {
    "blob": "a6c37b5b8f5b0c3e61703e32f9cc06fc61cc47d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:949e3c18536957a63aef728c6273fb2d9f8ea9d1c57b0f4cee436aefeddb3dee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:638fe3b3-9ff4-9c25-d2d1-181252b4a095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ListBlank.ext {Γ} [i : Inhabited Γ] {L₁ L₂ : ListBlank Γ} :
    (∀ i, L₁.nth i = L₂.nth i) → L₁ = L₂ := by
  refine ListBlank.induction_on L₁ fun l₁ ↦ ListBlank.induction_on L₂ fun l₂ H ↦ ?_
  wlog h : l₁.length ≤ l₂.length
  · cases le_total l₁.length l₂.length <;> [skip; symm] <;> apply this <;> try assumption
    intro
    rw [H]
  refine Quotient.sound' (Or.inl ⟨l₂.length - l₁.length, ?_⟩)
  refine List.ext_getElem ?_ fun i h h₂ ↦ Eq.symm ?_
  · simp only [Nat.add_sub_cancel' h, List.length_append, List.length_replicate]
  simp only [ListBlank.nth_mk] at H
  rcases lt_or_ge i l₁.length with h' | h'
  · simp [h', List.getElem_append h₂, ← List.getI_eq_getElem _ h, ← List.getI_eq_getElem _ h', H]
  · rw [List.getElem_append_right h', List.getElem_replicate,
      ← List.getI_eq_default _ h', H, List.getI_eq_getElem _ h]

/-- Apply a function to a value stored at the nth position of the list. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c37b5b8f5b0c3e61703e32f9cc06fc61cc47d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
