# exists_eq_comp_of_le_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5e902ecd0a0a8b54529a9ee8e1ef28312f52f9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63af6fdd3903ef5499b46ac753098f7205bb8face9e796981bfd883540f251d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc34a81b-78ed-dc26-3ebe-582706e167d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a233a3d0-c8f1-9aaf-6f53-9f8ea697f9a9",
  "kind": "theorem",
  "lexical_name": "exists_eq_comp_of_le_length",
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
  "slug": "exists-eq-comp-of-le-length--a68ec3b1b465038ecf5cd479",
  "source": {
    "blob": "e5e902ecd0a0a8b54529a9ee8e1ef28312f52f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Variant63af6fdd3903ef5499b46ac753098f7205bb8face9e796981bfd883540f251d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a68ec3b1b465038ecf5cd4792969e7b892eba02971c21c5c3c1bd29e530cd55c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Variant63af6fdd3903ef5499b46ac753098f7205bb8face9e796981bfd883540f251d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a233a3d0-c8f1-9aaf-6f53-9f8ea697f9a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_comp_of_le_length {n : ℕ} (hn : n ≤ p.length) :
    ∃ (v : V) (p₁ : Path a v) (p₂ : Path v b),
      p = p₁.comp p₂ ∧ p₁.length = n := by
  induction p generalizing n with
  | nil =>
    obtain ⟨rfl⟩ : n = 0 := by simpa using hn
    exact ⟨a, Path.nil, Path.nil, by simp, rfl⟩
  | @cons _ c p' e ih =>
    rw [length_cons] at hn
    rcases (Nat.le_succ_iff).1 hn with h | rfl
    · obtain ⟨d, p₁, p₂, hp, hl⟩ := ih h
      exact ⟨d, p₁, p₂.cons e, by simp [hp], hl⟩
    · exact ⟨c, p'.cons e, Path.nil, by simp, by simp⟩

/-- `split_at_vertex` decomposes a path `p` at the vertex sitting in
    position `i` of its `vertices` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Variant63af6fdd3903ef5499b46ac753098f7205bb8face9e796981bfd883540f251d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Variant63af6fdd3903ef5499b46ac753098f7205bb8face9e796981bfd883540f251d4.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e902ecd0a0a8b54529a9ee8e1ef28312f52f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
