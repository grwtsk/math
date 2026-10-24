# firstDiffPos_loop_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfe42277b2b1f36cb7e9c3fe7ca513bed0f6cc1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65892f5d94af28e25fd2c22e026423b416a13eb93886352677bbc2fb034d537d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3a4d709-b5b6-553b-c89b-5d087fcfa540",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09f2d0d7-71fb-4bdf-2212-fe04cf7bf488",
  "kind": "theorem",
  "lexical_name": "firstDiffPos_loop_eq",
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
  "slug": "firstdiffpos-loop-eq--25cad54850a3edebe6449ccc",
  "source": {
    "blob": "cfe42277b2b1f36cb7e9c3fe7ca513bed0f6cc1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 368,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant65892f5d94af28e25fd2c22e026423b416a13eb93886352677bbc2fb034d537d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25cad54850a3edebe6449ccc700dcf24d3983bf640259c0aafa0856556f4ccc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant65892f5d94af28e25fd2c22e026423b416a13eb93886352677bbc2fb034d537d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f2d0d7-71fb-4bdf-2212-fe04cf7bf488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstDiffPos_loop_eq (l₁ l₂ r₁ r₂ stop p)
    (hl₁ : p = utf8Len l₁) (hl₂ : p = utf8Len l₂)
    (hstop : stop = min (utf8Len l₁ + utf8Len r₁) (utf8Len l₂ + utf8Len r₂)) :
    firstDiffPos.loop ⟨l₁ ++ r₁⟩ ⟨l₂ ++ r₂⟩ ⟨stop⟩ ⟨p⟩ =
      ⟨p + utf8Len (List.takeWhile₂ (· = ·) r₁ r₂).1⟩ := by
  unfold List.takeWhile₂; split <;> unfold firstDiffPos.loop
  · next a r₁ b r₂ =>
    rw [
      dif_pos <| by
        rw [hstop, ← hl₁, ← hl₂]
        refine Nat.lt_min.2 ⟨?_, ?_⟩ <;> exact Nat.lt_add_of_pos_right add_csize_pos,
      show get ⟨l₁ ++ a :: r₁⟩ ⟨p⟩ = a by simp [hl₁, get_of_valid],
      show get ⟨l₂ ++ b :: r₂⟩ ⟨p⟩ = b by simp [hl₂, get_of_valid]]
    simp [bne]; split <;> simp
    subst b
    rw [show next ⟨l₁ ++ a :: r₁⟩ ⟨p⟩ = ⟨utf8Len l₁ + csize a⟩ by simp [hl₁, next_of_valid]]
    simpa [← hl₁, ← Nat.add_assoc, Nat.add_right_comm] using
      firstDiffPos_loop_eq (l₁ ++ [a]) (l₂ ++ [a]) r₁ r₂ stop (p + csize a)
        (by simp [hl₁]) (by simp [hl₂]) (by simp [hstop, ← Nat.add_assoc, Nat.add_right_comm])
  · next h =>
    rw [dif_neg] <;> simp [hstop, ← hl₁, ← hl₂, -Nat.not_lt, Nat.lt_min]
    intro h₁ h₂
    have : ∀ {cs}, p < p + utf8Len cs → cs ≠ [] := by rintro _ h rfl; simp at h
    obtain ⟨a, as, e₁⟩ := List.exists_cons_of_ne_nil (this h₁)
    obtain ⟨b, bs, e₂⟩ := List.exists_cons_of_ne_nil (this h₂)
    exact h _ _ _ _ e₁ e₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant65892f5d94af28e25fd2c22e026423b416a13eb93886352677bbc2fb034d537d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant65892f5d94af28e25fd2c22e026423b416a13eb93886352677bbc2fb034d537d.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe42277b2b1f36cb7e9c3fe7ca513bed0f6cc1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
