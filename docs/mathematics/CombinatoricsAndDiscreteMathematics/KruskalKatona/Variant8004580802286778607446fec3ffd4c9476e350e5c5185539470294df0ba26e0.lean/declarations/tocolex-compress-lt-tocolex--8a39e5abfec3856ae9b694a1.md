# toColex_compress_lt_toColex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0da6ddf2-8f10-73ca-5e44-7c86dc8b1ba5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d6da83d-481d-c679-5493-96edcf7232a9",
  "kind": "lemma",
  "lexical_name": "toColex_compress_lt_toColex",
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
  "slug": "tocolex-compress-lt-tocolex--8a39e5abfec3856ae9b694a1",
  "source": {
    "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a39e5abfec3856ae9b694a17853ac7ccb5775c1dac97e670c5a58cefa427899",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d6da83d-481d-c679-5493-96edcf7232a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toColex_compress_lt_toColex {hU : U.Nonempty} {hV : V.Nonempty} (h : max' U hU < max' V hV)
    (hA : compress U V s ≠ s) : toColex (compress U V s) < toColex s := by
  rw [compress, ite_ne_right_iff] at hA
  rw [compress, ite_eq_left hA.1, lt_iff_exists_filter_lt]
  simp_rw [mem_sdiff (s := s), filter_inj, and_assoc]
  refine ⟨_, hA.1.2 <| max'_mem _ hV, notMem_sdiff_of_mem_right <| max'_mem _ _, fun a ha ↦ ?_⟩
  have : a ∉ V := fun H ↦ ha.not_ge (le_max' _ _ H)
  have : a ∉ U := fun H ↦ ha.not_gt ((le_max' _ _ H).trans_lt h)
  simp [‹a ∉ U›, ‹a ∉ V›]

set_option backward.privateInPublic true in
/-- These are the compressions which we will apply to decrease the "measure" of a family of sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fe3293e6b636baf85a98304145dd1d087b0604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
