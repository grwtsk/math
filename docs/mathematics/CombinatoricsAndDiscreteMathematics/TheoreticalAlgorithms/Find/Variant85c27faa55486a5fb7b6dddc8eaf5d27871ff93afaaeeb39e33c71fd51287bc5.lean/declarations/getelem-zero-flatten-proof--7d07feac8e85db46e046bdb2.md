# getElem_zero_flatten.proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "170f6f50cd4b2838620bb0a40a71cb6fedf6dd8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85c27faa55486a5fb7b6dddc8eaf5d27871ff93afaaeeb39e33c71fd51287bc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10105dc0-2ca4-619e-7368-7c067ea38d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:213ed21c-1224-e154-2a40-2d1fa9cad890",
  "kind": "theorem",
  "lexical_name": "getElem_zero_flatten.proof",
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
  "slug": "getelem-zero-flatten-proof--7d07feac8e85db46e046bdb2",
  "source": {
    "blob": "170f6f50cd4b2838620bb0a40a71cb6fedf6dd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant85c27faa55486a5fb7b6dddc8eaf5d27871ff93afaaeeb39e33c71fd51287bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d07feac8e85db46e046bdb2d3740214d78c34d0d5067d3ea2e9cd48d34b6f6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant85c27faa55486a5fb7b6dddc8eaf5d27871ff93afaaeeb39e33c71fd51287bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213ed21c-1224-e154-2a40-2d1fa9cad890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zero_flatten.proof {xss : Vector (Vector α m) n} (h : 0 < n * m) :
    (xss.findSome? fun xs => xs[0]?).isSome := by
  cases xss using vector₂_induction with
  | of xss h₁ h₂ =>
    have hn : 0 < n := Nat.pos_of_mul_pos_right h
    have hm : 0 < m := Nat.pos_of_mul_pos_left h
    simp only [hm, getElem?_eq_getElem, findSome?_mk, Array.findSome?_isSome_iff, Array.mem_map,
      Array.mem_attach, mk_eq, true_and, Subtype.exists, exists_prop, exists_eq_right,
      Option.isSome_some, and_true]
    exact ⟨⟨xss[0], h₂ _ (by simp)⟩, by simp⟩

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant85c27faa55486a5fb7b6dddc8eaf5d27871ff93afaaeeb39e33c71fd51287bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant85c27faa55486a5fb7b6dddc8eaf5d27871ff93afaaeeb39e33c71fd51287bc5.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `170f6f50cd4b2838620bb0a40a71cb6fedf6dd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
