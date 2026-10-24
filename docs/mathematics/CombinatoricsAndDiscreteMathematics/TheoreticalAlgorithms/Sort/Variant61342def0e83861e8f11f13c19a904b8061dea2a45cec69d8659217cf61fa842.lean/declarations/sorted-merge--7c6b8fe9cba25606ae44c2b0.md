# Sorted.merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:883c036b-1eb9-5d6b-4592-772420c78340",
  "kind": "theorem",
  "lexical_name": "Sorted.merge",
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
  "slug": "sorted-merge--7c6b8fe9cba25606ae44c2b0",
  "source": {
    "blob": "88d5ca86dfe9b54fcca4288c310b1352d5d55881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 415,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c6b8fe9cba25606ae44c2b00189a6f2b92f4177d16e122f41a2a36ace67cbe7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:883c036b-1eb9-5d6b-4592-772420c78340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sorted.merge : ∀ {l l' : List α}, Sorted r l → Sorted r l' → Sorted r (merge r l l')
  | [], [], _, _ => by simp [List.merge]
  | [], b :: l', _, h₂ => by simpa [List.merge] using h₂
  | a :: l, [], h₁, _ => by simpa [List.merge] using h₁
  | a :: l, b :: l', h₁, h₂ => by
    by_cases h : a ≼ b
    · suffices ∀ (b' : α) (_ : b' ∈ List.merge r l (b :: l')), r a b' by
        simpa [List.merge, h, h₁.of_cons.merge h₂]
      intro b' bm
      rcases show b' = b ∨ b' ∈ l ∨ b' ∈ l' by
          simpa [or_left_comm] using (perm_merge _ _ _).subset bm with
        (be | bl | bl')
      · subst b'
        assumption
      · exact rel_of_sorted_cons h₁ _ bl
      · exact _root_.trans h (rel_of_sorted_cons h₂ _ bl')
    · suffices ∀ (b' : α) (_ : b' ∈ List.merge r (a :: l) l'), r b b' by
        simpa [List.merge, h, h₁.merge h₂.of_cons]
      intro b' bm
      have ba : b ≼ a := (total_of r _ _).resolve_left h
      have : b' = a ∨ b' ∈ l ∨ b' ∈ l' := by simpa using (perm_merge _ _ _).subset bm
      rcases this with (be | bl | bl')
      · subst b'
        assumption
      · exact _root_.trans ba (rel_of_sorted_cons h₁ _ bl)
      · exact rel_of_sorted_cons h₂ _ bl'
  termination_by Sorted.merge l₁ l₂ _ _ => length l₁ + length l₂
#align list.sorted.merge List.Sorted.merge

variable (r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d5ca86dfe9b54fcca4288c310b1352d5d55881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
