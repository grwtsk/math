# of_div_ratCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00ff3bfece4a3c7ce0500392ba4210b718996c4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 413,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:964e8163-f98d-6ec4-b20e-2df53ea2bd1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc00dd5f-979e-7090-8167-2499e37b1ba7",
  "kind": "theorem",
  "lexical_name": "of_div_ratCast",
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
  "slug": "of-div-ratcast--43b3d72c50ab7dddd41dba93",
  "source": {
    "blob": "00ff3bfece4a3c7ce0500392ba4210b718996c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b3d72c50ab7dddd41dba938db1ca925e444b0a73adf432b6be2d84f4082746",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc00dd5f-979e-7090-8167-2499e37b1ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_div_ratCast (h : Irrational (x / q)) : Irrational x :=
  h.div_cases.resolve_right q.not_irrational
@[deprecated (since := "2025-04-01")] alias of_div_rat := of_div_ratCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ff3bfece4a3c7ce0500392ba4210b718996c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
