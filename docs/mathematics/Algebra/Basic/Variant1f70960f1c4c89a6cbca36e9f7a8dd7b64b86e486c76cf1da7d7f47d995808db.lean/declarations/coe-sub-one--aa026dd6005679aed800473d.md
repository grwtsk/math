# coe_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dac2480b2bdb00cab4d57cb1270278e3c5c5f742",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58cc4683-a648-16e7-77d2-4c339e158216",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1749e570-5b33-1095-0ea6-aab58abe1f69",
  "kind": "lemma",
  "lexical_name": "coe_sub_one",
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
  "slug": "coe-sub-one--aa026dd6005679aed800473d",
  "source": {
    "blob": "dac2480b2bdb00cab4d57cb1270278e3c5c5f742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa026dd6005679aed800473d56c3c1b3dc5001288bd2d3cd94ff7496e036a431",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1749e570-5b33-1095-0ea6-aab58abe1f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_sub_one (a : Fin (n + 1)) : ↑(a - 1) = if a = 0 then n else a - 1 := by
  cases n
  · simp
  split_ifs with h
  · simp [h]
  rw [sub_eq_add_neg, val_add_eq_ite, coe_neg_one, if_pos, Nat.add_comm, Nat.add_sub_add_left]
  conv_rhs => rw [Nat.add_comm]
  rw [Nat.add_le_add_iff_left, Nat.one_le_iff_ne_zero]
  rwa [Fin.ext_iff] at h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac2480b2bdb00cab4d57cb1270278e3c5c5f742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
