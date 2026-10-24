# ZModModule.add_add_add_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d265cd1-27f5-df1d-4583-ec6141752ec2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5dbc795-de12-27ae-d07a-ed19b1578b81",
  "kind": "lemma",
  "lexical_name": "ZModModule.add_add_add_cancel",
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
  "slug": "zmodmodule-add-add-add-cancel--9baf4516991df590b18202dc",
  "source": {
    "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1270,
    "line": 1261,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9baf4516991df590b18202dc0f0e168cdc643733a72d592b67b5187c92f4611a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5dbc795-de12-27ae-d07a-ed19b1578b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1261–1270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZModModule.add_add_add_cancel (x y z : G) : (x + y) + (y + z) = x + z := by
  simpa [sub_eq_add] using sub_add_sub_cancel x y z

end two
end Module

section Group
variable {α : Type*} [Group α] {n : ℕ}

@[to_additive (attr := simp) nsmul_zmod_val_inv_nsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean#L1261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e29ffc15e22165fea673f25ce8c171a1cf8c14c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
