# one_sub_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdba94a5c9d7b75f75b32c5be9e764301fbe3ffc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d11fe61-3a83-4ce6-5074-390443976643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:533fe1f6-6834-1d82-5c0c-9134bb46c02e",
  "kind": "theorem",
  "lexical_name": "one_sub_nonneg",
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
  "slug": "one-sub-nonneg--a27d2dbb2808f1ff6bbc1fe2",
  "source": {
    "blob": "bdba94a5c9d7b75f75b32c5be9e764301fbe3ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 165,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27d2dbb2808f1ff6bbc1fe252a898cb8b9f8285ce8ce2e9dc753facd3e36305",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:533fe1f6-6834-1d82-5c0c-9134bb46c02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_nonneg (x : Icc (0 : β) 1) : 0 ≤ 1 - (x : β) := by simpa using x.2.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdba94a5c9d7b75f75b32c5be9e764301fbe3ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
