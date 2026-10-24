# findIdx?_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8c3fd37-2b18-2307-6d54-f30dd25c393c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f62da554-7f85-c9ff-c199-0fed41cd32d7",
  "kind": "theorem",
  "lexical_name": "findIdx?_flatten",
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
  "slug": "findidx-flatten--637dd0eadead36e9fff8b43e",
  "source": {
    "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 882,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:637dd0eadead36e9fff8b43e45b5f9193b1f9ecf4ff8b6c56981fb8addc6830e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f62da554-7f85-c9ff-c199-0fed41cd32d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findIdx?_flatten {l : List (List α)} {p : α → Bool} :
    l.flatten.findIdx? p =
      (l.findIdx? (·.any p)).map
        fun i => ((l.take i).map List.length).sum +
          (l[i]?.map fun xs => xs.findIdx p).getD 0 := by
  induction l with
  | nil => simp
  | cons xs l ih =>
    rw [flatten_cons, findIdx?_append, ih, findIdx?_cons]
    split <;> rename_i h
    · simp only [any_eq_true] at h
      rw [Option.or_of_isSome (by simp_all [findIdx?_isSome])]
      simp_all [findIdx?_eq_some_of_exists]
    · rw [Option.or_of_isNone (by simp_all [findIdx?_isNone])]
      simp [Function.comp_def, Nat.add_comm, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c03aa5a3f59c3fe67e5c593c97f676c21f5320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
