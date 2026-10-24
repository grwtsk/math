# exists_lt_mul_left_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c0abe6849cee5d6656bba647431b25bf694b0a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3297bd16-45b8-3b75-c15a-21992c0a93ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10f84aeb-46a0-d44a-7c3f-2474681ed52b",
  "kind": "lemma",
  "lexical_name": "exists_lt_mul_left_of_nonneg",
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
  "slug": "exists-lt-mul-left-of-nonneg--de39afd267a0ab2072c1a847",
  "source": {
    "blob": "8c0abe6849cee5d6656bba647431b25bf694b0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 471,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de39afd267a0ab2072c1a847681064a6a0790fe993c52c2230823873200c5b78",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f84aeb-46a0-d44a-7c3f-2474681ed52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_lt_mul_left_of_nonneg (ha : 0 ≤ a) (hc : 0 ≤ c) (h : c < a * b) :
    ∃ a' ∈ Ioo 0 a, c < a' * b := by
  rcases eq_or_ne b ⊤ with rfl | b_top
  · rcases eq_or_lt_of_le ha with rfl | ha
    · rw [zero_mul] at h
      exact (not_le_of_lt h hc).rec
    · obtain ⟨a', a0', aa'⟩ := exists_between ha
      use a', mem_Ioo.2 ⟨a0', aa'⟩
      rw [mul_top_of_pos ha] at h
      rwa [mul_top_of_pos a0']
  · have b0 : 0 < b := pos_of_mul_pos_right (hc.trans_lt h) ha
    obtain ⟨a', ha', aa'⟩ := exists_between ((div_lt_iff b0 b_top).2 h)
    exact ⟨a', ⟨(div_nonneg hc b0.le).trans_lt ha', aa'⟩, (div_lt_iff b0 b_top).1 ha'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0abe6849cee5d6656bba647431b25bf694b0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
