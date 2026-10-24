# mem_eraseDupsBy_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3734,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36aca7b5-ea0a-b10c-df67-be5efa6a2ca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d5c4e5d-b7d7-76cb-9b85-4a647dbb8178",
  "kind": "theorem",
  "lexical_name": "mem_eraseDupsBy_loop",
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
  "slug": "mem-erasedupsby-loop--32ff1fd961999016072531f4",
  "source": {
    "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3761,
    "line": 3734,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ff1fd961999016072531f42b721908456bed3ba8c1d8c8306f8c0568db1b46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5c4e5d-b7d7-76cb-9b85-4a647dbb8178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3734–3761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_eraseDupsBy_loop [BEq α] [LawfulBEq α] {a : α} {l acc : List α} :
    a ∈ eraseDupsBy.loop (· == ·) l acc ↔ a ∈ l ∨ a ∈ acc := by
  induction l generalizing acc with
  | nil => simp [eraseDupsBy.loop]
  | cons x xs ih =>
    unfold eraseDupsBy.loop; split
    · next h =>
      rw [ih]; simp only [mem_cons]
      apply Iff.intro (fun
        | .inl hxs => Or.inl (Or.inr hxs)
        | .inr hacc => Or.inr hacc) (fun
        | .inl (.inl rfl) =>
            have ⟨y, hy, heq⟩ := any_eq_true.mp h
            .inr (LawfulBEq.eq_of_beq heq ▸ hy)
        | .inl (.inr hxs) => .inl hxs
        | .inr hacc => .inr hacc)
    · rw [ih]; simp only [mem_cons]
      apply Iff.intro (fun
        | .inl hxs => Or.inl (Or.inr hxs)
        | .inr (.inl rfl) => Or.inl (Or.inl rfl)
        | .inr (.inr hacc) => Or.inr hacc) (fun
        | .inl (.inl rfl) => Or.inr (Or.inl rfl)
        | .inl (.inr hxs) => .inl hxs
        | .inr hacc => Or.inr (Or.inr hacc))

/-- Membership is preserved by `eraseDups`: an element is in the deduplicated list
iff it was in the original list. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean#L3734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519a54b75079a3acb036a212f7303f8d497ecba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
