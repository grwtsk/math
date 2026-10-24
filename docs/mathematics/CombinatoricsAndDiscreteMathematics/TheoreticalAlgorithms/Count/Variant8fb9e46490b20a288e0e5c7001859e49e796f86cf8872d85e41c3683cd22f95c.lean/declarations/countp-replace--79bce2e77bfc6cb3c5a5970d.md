# countP_replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5a558e4dc01c980a35b89f396649f59d4aee8c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ced946a2-4e57-ce47-456e-08116cc76400",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d0685fc-0c84-6d61-2209-b6290b3d2ce0",
  "kind": "theorem",
  "lexical_name": "countP_replace",
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
  "slug": "countp-replace--79bce2e77bfc6cb3c5a5970d",
  "source": {
    "blob": "e5a558e4dc01c980a35b89f396649f59d4aee8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79bce2e77bfc6cb3c5a5970d432d82e57b48bbbd22517adf718b5e3070c4f854",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d0685fc-0c84-6d61-2209-b6290b3d2ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countP_replace [BEq α] [LawfulBEq α] {a b : α} {l : List α} {p : α → Bool} :
    (l.replace a b).countP p =
      if l.contains a then l.countP p + (if p b then 1 else 0) - (if p a then 1 else 0) else l.countP p := by
  induction l with
  | nil => simp
  | cons x l ih =>
    simp [replace_cons]
    split <;> rename_i h
    · simp at h
      simp [h, countP_cons]
      omega
    · simp only [beq_eq_false_iff_ne, ne_eq] at h
      simp only [countP_cons, ih, contains_eq_mem, decide_eq_true_eq, mem_cons, h, false_or]
      split <;> rename_i h'
      · by_cases h'' : p a
        · have : countP p l > 0 := countP_pos_iff.mpr ⟨a, h', h''⟩
          simp [h'']
          omega
        · simp [h'']
          omega
      · omega

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a558e4dc01c980a35b89f396649f59d4aee8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
