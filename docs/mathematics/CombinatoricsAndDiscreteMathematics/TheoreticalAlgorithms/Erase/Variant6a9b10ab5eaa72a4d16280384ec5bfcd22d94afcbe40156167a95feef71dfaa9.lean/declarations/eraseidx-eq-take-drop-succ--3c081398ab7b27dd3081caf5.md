# eraseIdx_eq_take_drop_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad8a10fe57d5b95cb8fcbd750b50554de7764dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ad6848a-cea8-6896-e705-529e0f174984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:977cb0fb-e32a-cb8e-5681-312a2531b62e",
  "kind": "theorem",
  "lexical_name": "eraseIdx_eq_take_drop_succ",
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
  "slug": "eraseidx-eq-take-drop-succ--3c081398ab7b27dd3081caf5",
  "source": {
    "blob": "ad8a10fe57d5b95cb8fcbd750b50554de7764dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 326,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c081398ab7b27dd3081caf55cc35afbd2c4748b4e52064d39e005634fda7f0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:977cb0fb-e32a-cb8e-5681-312a2531b62e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseIdx_eq_take_drop_succ {xs : Array α} {i : Nat} (h) :
    xs.eraseIdx i h = xs.take i ++ xs.drop (i + 1) := by
  rcases xs with ⟨xs⟩
  simp only [List.size_toArray] at h
  simp only [List.eraseIdx_toArray, List.eraseIdx_eq_take_drop_succ, take_eq_extract,
    List.extract_toArray, List.extract_eq_take_drop, Nat.sub_zero, List.drop_zero, drop_eq_extract,
    List.size_toArray, List.append_toArray, mk.injEq, List.append_cancel_left_eq]
  rw [List.take_of_length_le]
  simp

grind_pattern eraseIdx_eq_take_drop_succ => xs.eraseIdx i h, xs.take i
grind_pattern eraseIdx_eq_take_drop_succ => xs.eraseIdx i h, xs.drop i

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad8a10fe57d5b95cb8fcbd750b50554de7764dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
