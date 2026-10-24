# Tape.move_left_nth

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
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95e59aaa-1e51-f858-2796-b0725ed7539c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56509ab1-a68c-e375-d86f-a649fbb504d6",
  "kind": "theorem",
  "lexical_name": "Tape.move_left_nth",
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
  "slug": "tape-move-left-nth--8b54fcac41ceccd7582ef74d",
  "source": {
    "blob": "a6c37b5b8f5b0c3e61703e32f9cc06fc61cc47d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 518,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b54fcac41ceccd7582ef74d5cd32bb498fe1dffd71938c5ea625dc9bf968c4a",
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

Occurrence: `result:56509ab1-a68c-e375-d86f-a649fbb504d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tape.move_left_nth {Γ} [Inhabited Γ] :
    ∀ (T : Tape Γ) (i : ℤ), (T.move Dir.left).nth i = T.nth (i - 1)
  | ⟨_, _, _⟩, -(_ + 1 : ℕ) => (ListBlank.nth_succ _ _).symm
  | ⟨_, _, _⟩, 0 => (ListBlank.nth_zero _).symm
  | ⟨_, _, _⟩, 1 => (ListBlank.nth_zero _).trans (ListBlank.head_cons _ _)
  | ⟨a, L, R⟩, (n + 1 : ℕ) + 1 => by
    rw [add_sub_cancel_right]
    change (R.cons a).nth (n + 1) = R.nth n
    rw [ListBlank.nth_succ, ListBlank.tail_cons]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant535299af9e0e8508cfebd538a1f29fc9062a25e2d35ca3ee1af78587fb8feb81.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c37b5b8f5b0c3e61703e32f9cc06fc61cc47d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
