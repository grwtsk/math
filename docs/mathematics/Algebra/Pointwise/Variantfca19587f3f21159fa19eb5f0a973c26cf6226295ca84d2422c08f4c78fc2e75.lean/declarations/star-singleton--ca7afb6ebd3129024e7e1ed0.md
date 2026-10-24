# star_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1cdb09257208bd2d37b4fc92a9a3ef41f4e0976",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2012b719-8ed8-e480-5b1c-6fed016a03b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d7aa79c-ec80-352f-3980-88699fec7092",
  "kind": "theorem",
  "lexical_name": "star_singleton",
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
  "slug": "star-singleton--ca7afb6ebd3129024e7e1ed0",
  "source": {
    "blob": "b1cdb09257208bd2d37b4fc92a9a3ef41f4e0976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7afb6ebd3129024e7e1ed0c5d0768a0e6754c66ffaf71606a8cc107bbc433b",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d7aa79c-ec80-352f-3980-88699fec7092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_singleton {β : Type*} [InvolutiveStar β] (x : β) : ({x} : Set β)⋆ = {x⋆} := by
  ext1 y
  rw [mem_star, mem_singleton_iff, mem_singleton_iff, star_eq_iff_star_eq, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1cdb09257208bd2d37b4fc92a9a3ef41f4e0976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
