# ListBlank.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45e3442467904774e87e37e0c4a3b14c7a84bbaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b329382-f1a1-5ef5-e919-9bf5a71bcc8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cc4c44b-438a-0f08-a9b5-a420b0bfb76c",
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
  "slug": "listblank-ext--a22ed90ab0282ad8166961c8",
  "source": {
    "blob": "45e3442467904774e87e37e0c4a3b14c7a84bbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22ed90ab0282ad8166961c8cf3368e1d6f06b4b855843faccba5bd3bb563ab4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc4c44b-438a-0f08-a9b5-a420b0bfb76c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–258.

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
  rcases lt_or_le i l₁.length with h' | h'
  · simp [h', List.getElem_append h₂, ← List.getI_eq_getElem _ h, ← List.getI_eq_getElem _ h', H]
  · rw [List.getElem_append_right h', List.getElem_replicate,
      ← List.getI_eq_default _ h', H, List.getI_eq_getElem _ h]

/-- Apply a function to a value stored at the nth position of the list. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e3442467904774e87e37e0c4a3b14c7a84bbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
