# proof_status_not_checked_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d042d5b507d2df462c6ae0379d6d1f35cde9093d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87f3e5fe-7f01-2582-d9d0-a1d8d6798d25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a51176b8-7e53-87b9-8ef5-dfbe7751ef60",
  "kind": "theorem",
  "lexical_name": "proof_status_not_checked_theorem",
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
  "slug": "proof-status-not-checked-theorem--0b5cc3d12dcc3831b790a3bc",
  "source": {
    "blob": "d042d5b507d2df462c6ae0379d6d1f35cde9093d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Algebra/M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f74617/Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b5cc3d12dcc3831b790a3bc905f26b4573f720ac996c2dfcd05c28a10876b4a",
  "verification": {
    "reference": "docs/verification/Algebra/M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f74617/Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51176b8-7e53-87b9-8ef5-dfbe7751ef60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proof_status_not_checked_theorem :
    chebotarevDensityTheoremStatus ≠ "checked_theorem" := by
  decide

end Think.Pipeline.Leaves.ImportedTheorem.ChebotarevDensity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f74617/Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f74617/Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d042d5b507d2df462c6ae0379d6d1f35cde9093d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
