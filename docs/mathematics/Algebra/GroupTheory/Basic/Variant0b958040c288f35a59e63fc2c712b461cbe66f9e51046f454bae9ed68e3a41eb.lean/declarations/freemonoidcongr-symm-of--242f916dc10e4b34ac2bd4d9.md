# freeMonoidCongr_symm_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:899085e0-6ee8-5ed7-dc88-78df70d9aa99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04f65e1d-3371-1e7c-f23e-5dfc373aa03f",
  "kind": "theorem",
  "lexical_name": "freeMonoidCongr_symm_of",
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
  "slug": "freemonoidcongr-symm-of--242f916dc10e4b34ac2bd4d9",
  "source": {
    "blob": "2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 487,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:242f916dc10e4b34ac2bd4d9a3fa2480d3f442e2349566b5107b7bf768a6206a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f65e1d-3371-1e7c-f23e-5dfc373aa03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeMonoidCongr_symm_of (e : α ≃ β) (b : β) :
    freeMonoidCongr e.symm (of b) = of (e.symm b) := rfl

end IsomorphicTypes

end FreeMonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0b958040c288f35a59e63fc2c712b461cbe66f9e51046f454bae9ed68e3a41eb.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f62eebb28fcec4f7fa4ea6bb31dca7fc6f63ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
