# find?_bool_eq_some_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0ea0ea752605d8cfcb820bb9a3bf225009fc6f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd8b0561-efec-0158-3b2a-21dca98a0155",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd9601c3-3723-695a-c8bb-19c695b208f0",
  "kind": "theorem",
  "lexical_name": "find?_bool_eq_some_iff_splits",
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
  "slug": "find-bool-eq-some-iff-splits--28fd48bdcbcc594e7d356625",
  "source": {
    "blob": "a0ea0ea752605d8cfcb820bb9a3bf225009fc6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fd48bdcbcc594e7d35662510c74607d47dd34ad89147aa9da6145d6ba50393",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9601c3-3723-695a-c8bb-19c695b208f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_bool_eq_some_iff_splits {p : Char → Bool} {s : Slice} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, p d = false := by
  rw [find?_bool_eq_some_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨h, hp, hmin⟩
    exact ⟨_, _, _, pos.splits_next_right h, hp, fun d hd => by
      obtain ⟨pos', hlt, hpget⟩ := (pos.splits_next_right h).mem_toList_left_iff.mp hd
      subst hpget; exact hmin _ hlt⟩
  · rintro ⟨t, c, u, hs, hpc, hmin⟩
    have hne := hs.ne_endPos_of_singleton
    refine ⟨hne, ?_, fun pos' hlt => hmin _ (hs.mem_toList_left_iff.mpr ⟨pos', hlt, rfl⟩)⟩
    rw [(singleton_append_inj.mp (hs.eq_right (pos.splits_next_right hne))).1.symm]
    exact hpc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ea0ea752605d8cfcb820bb9a3bf225009fc6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
