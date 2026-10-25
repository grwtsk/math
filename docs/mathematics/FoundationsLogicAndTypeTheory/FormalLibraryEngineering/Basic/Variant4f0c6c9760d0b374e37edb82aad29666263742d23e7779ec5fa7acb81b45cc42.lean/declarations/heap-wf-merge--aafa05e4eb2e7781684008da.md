# Heap.WF.merge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eede834-8fa2-b7fb-2b02-574a830aa489",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:490561ee-5828-1870-06b2-039e5e40f600",
  "kind": "theorem",
  "lexical_name": "Heap.WF.merge'",
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
  "slug": "heap-wf-merge--aafa05e4eb2e7781684008da",
  "source": {
    "blob": "c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aafa05e4eb2e7781684008dafdf442506d73c5471e984bfc5377d09c69fcf485",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490561ee-5828-1870-06b2-039e5e40f600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Heap.WF.merge' (h₁ : s₁.WF le n) (h₂ : s₂.WF le n) :
    (merge le s₁ s₂).WF le n ∧ ((s₁.rankGT n ↔ s₂.rankGT n) → (merge le s₁ s₂).rankGT n) := by
  unfold merge; split
  · exact ⟨h₂, fun h => h.1 h₁⟩
  · exact ⟨h₁, fun h => h.2 h₂⟩
  · rename_i r₁ a₁ n₁ t₁ r₂ a₂ n₂ t₂
    let ⟨hr₁, hn₁, ht₁⟩ := h₁
    let ⟨hr₂, hn₂, ht₂⟩ := h₂
    split <;> rename_i lt₁
    · refine ⟨⟨hr₁, hn₁, And.left (merge' ht₁ ⟨lt₁, hn₂, ht₂⟩)⟩, fun h => ?_⟩
      exact h.2 <| Nat.lt_of_le_of_lt hr₁ lt₁
    split <;> rename_i lt₂
    · refine ⟨⟨hr₂, hn₂, And.left (merge' ⟨lt₂, hn₁, ht₁⟩ ht₂)⟩, fun h => ?_⟩
      exact h.1 <| Nat.lt_of_le_of_lt hr₂ lt₂
    cases Nat.le_antisymm (Nat.ge_of_not_lt lt₂) (Nat.ge_of_not_lt lt₁)
    split; rename_i a n eq
    have : n.WF le a (r₁+1) := by
      unfold combine at eq; split at eq <;> cases eq <;> rename_i h
      · exact ⟨r₁, rfl, h, hn₂, hn₁⟩
      · exact ⟨r₁, rfl, TotalBLE.total.resolve_left h, hn₁, hn₂⟩
    simp only; split <;> split <;> rename_i hl₁ hl₂
    · exact ⟨⟨Nat.le_succ_of_le hr₁, this,
        (merge' (ht₁.of_rankGT hl₁) (ht₂.of_rankGT hl₂)).1⟩,
        fun _ => Nat.lt_succ_of_le hr₁⟩
    · let ⟨ih₁, ih₂⟩ := merge' (s₁ := .cons ..)
        ⟨Nat.le_succ_of_le hr₁, this, ht₁.of_rankGT hl₁⟩
        (ht₂.of_le (Nat.le_succ_of_le hr₁))
      exact ⟨ih₁, fun _ => ih₂ ⟨fun _ => ht₂.rankGT.of_le hr₁, fun h => Nat.lt_succ_of_le hr₁⟩⟩
    · let ⟨ih₁, ih₂⟩ := merge' (s₂ := .cons ..) (ht₁.of_le (Nat.le_succ_of_le hr₁))
        ⟨Nat.le_succ_of_le hr₁, this, ht₂.of_rankGT hl₂⟩
      exact ⟨ih₁, fun _ => ih₂ ⟨fun h => Nat.lt_succ_of_le hr₁, fun _ => ht₁.rankGT.of_le hr₁⟩⟩
    · let ⟨ih₁, ih₂⟩ := merge' ht₁ ht₂
      exact ⟨⟨Nat.le_succ_of_le hr₁, this, ih₁.of_rankGT (ih₂ (iff_of_false hl₁ hl₂))⟩,
        fun _ => Nat.lt_succ_of_le hr₁⟩
termination_by _ => s₁.length + s₂.length

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
