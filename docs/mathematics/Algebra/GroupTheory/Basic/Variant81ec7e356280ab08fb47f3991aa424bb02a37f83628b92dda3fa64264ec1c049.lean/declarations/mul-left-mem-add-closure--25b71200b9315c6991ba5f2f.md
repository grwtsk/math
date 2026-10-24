# mul_left_mem_add_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e01fdc7b69ad7febba62e5f397963e309355c5f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81ec7e356280ab08fb47f3991aa424bb02a37f83628b92dda3fa64264ec1c049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d3fff43-41f4-d38b-42bb-0e201d75398c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c6dcc3b-05e5-73e4-41e0-9cb1e5c08747",
  "kind": "lemma",
  "lexical_name": "mul_left_mem_add_closure",
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
  "slug": "mul-left-mem-add-closure--25b71200b9315c6991ba5f2f",
  "source": {
    "blob": "e01fdc7b69ad7febba62e5f397963e309355c5f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant81ec7e356280ab08fb47f3991aa424bb02a37f83628b92dda3fa64264ec1c049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25b71200b9315c6991ba5f2f3b115bbbdeed29423442fef42e67d641706ac54b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant81ec7e356280ab08fb47f3991aa424bb02a37f83628b92dda3fa64264ec1c049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c6dcc3b-05e5-73e4-41e0-9cb1e5c08747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_left_mem_add_closure (ha : a ∈ S) (hb : b ∈ closure (S : Set R)) :
    a * b ∈ closure (S : Set R) :=
  mul_mem_add_closure (AddSubmonoid.mem_closure.mpr fun _sT hT => hT ha) hb

end MulMemClass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant81ec7e356280ab08fb47f3991aa424bb02a37f83628b92dda3fa64264ec1c049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant81ec7e356280ab08fb47f3991aa424bb02a37f83628b92dda3fa64264ec1c049.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01fdc7b69ad7febba62e5f397963e309355c5f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
