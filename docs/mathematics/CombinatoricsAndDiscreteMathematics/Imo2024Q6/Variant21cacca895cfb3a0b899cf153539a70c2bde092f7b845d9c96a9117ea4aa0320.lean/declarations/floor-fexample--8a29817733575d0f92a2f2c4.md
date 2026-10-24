# floor_fExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3aaa1a65a5f3105cae9534903542da50bf9e54dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d942a9e0-4d74-b010-8a3f-a540a24736d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a3a60bf-9ffa-cb87-fece-3e1decfe702e",
  "kind": "lemma",
  "lexical_name": "floor_fExample",
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
  "slug": "floor-fexample--8a29817733575d0f92a2f2c4",
  "source": {
    "blob": "3aaa1a65a5f3105cae9534903542da50bf9e54dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a29817733575d0f92a2f2c4c87dcef3a07c4ded3bb3c3ed0b428681e175984e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a3a60bf-9ffa-cb87-fece-3e1decfe702e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma floor_fExample (x : ℚ) :
    ⌊fExample x⌋ = if Int.fract x = 0 then x else ⌊x⌋ - 1 := by
  by_cases h : Int.fract x = 0
  · simp only [h, ite_true, fExample, sub_zero, Int.floor_intCast]
    rw [Int.fract, sub_eq_zero] at h
    exact h.symm
  · simp only [h, ite_false, fExample, sub_eq_add_neg, Int.floor_intCast_add, Int.cast_add,
               add_right_inj]
    suffices ⌊-Int.fract x⌋ = -1 from mod_cast this
    rw [Int.floor_eq_iff]
    simp [(Int.fract_nonneg x).lt_of_ne' h, (Int.fract_lt_one x).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aaa1a65a5f3105cae9534903542da50bf9e54dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
