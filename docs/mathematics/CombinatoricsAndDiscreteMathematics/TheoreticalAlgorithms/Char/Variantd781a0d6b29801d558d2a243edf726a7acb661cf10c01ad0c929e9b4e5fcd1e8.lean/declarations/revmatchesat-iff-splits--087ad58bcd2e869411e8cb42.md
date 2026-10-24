# revMatchesAt_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c556173ec0de86f6e61ff338ea2cfb1ae142ca70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d781a0d6b29801d558d2a243edf726a7acb661cf10c01ad0c929e9b4e5fcd1e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:937eefa8-bbce-1833-bce9-bbe770bf6fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26c0dbe8-1367-17af-0915-4db1d2b86756",
  "kind": "theorem",
  "lexical_name": "revMatchesAt_iff_splits",
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
  "slug": "revmatchesat-iff-splits--087ad58bcd2e869411e8cb42",
  "source": {
    "blob": "c556173ec0de86f6e61ff338ea2cfb1ae142ca70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd781a0d6b29801d558d2a243edf726a7acb661cf10c01ad0c929e9b4e5fcd1e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:087ad58bcd2e869411e8cb42f85908f72a7557ece1bfcc94a5ae75b305406270",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd781a0d6b29801d558d2a243edf726a7acb661cf10c01ad0c929e9b4e5fcd1e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26c0dbe8-1367-17af-0915-4db1d2b86756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revMatchesAt_iff_splits {c : Char} {s : Slice} {pos : s.Pos} :
    RevMatchesAt c pos ↔ ∃ t₁ t₂, pos.Splits (t₁ ++ singleton c) t₂ := by
  rw [revMatchesAt_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨h, rfl⟩
    exact ⟨_, _, pos.splits_prev_right h⟩
  · rintro ⟨t₁, t₂, hs⟩
    have hne := hs.ne_startPos_of_singleton
    refine ⟨hne, ?_⟩
    have := hs.eq_left (pos.splits_prev_right hne)
    simp only [append_singleton, push_inj] at this
    exact this.2.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd781a0d6b29801d558d2a243edf726a7acb661cf10c01ad0c929e9b4e5fcd1e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd781a0d6b29801d558d2a243edf726a7acb661cf10c01ad0c929e9b4e5fcd1e8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c556173ec0de86f6e61ff338ea2cfb1ae142ca70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
