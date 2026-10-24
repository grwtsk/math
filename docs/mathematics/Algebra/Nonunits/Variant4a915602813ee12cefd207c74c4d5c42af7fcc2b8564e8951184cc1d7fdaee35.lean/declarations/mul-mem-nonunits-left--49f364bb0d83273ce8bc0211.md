# mul_mem_nonunits_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc7a96fc6d7bb762add328b54fe55bbda3c8a6a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c2c7582-c895-3bf7-54c2-d203893f3fd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:094a3bbb-ba20-accb-07cf-db84cd29427c",
  "kind": "theorem",
  "lexical_name": "mul_mem_nonunits_left",
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
  "slug": "mul-mem-nonunits-left--49f364bb0d83273ce8bc0211",
  "source": {
    "blob": "dc7a96fc6d7bb762add328b54fe55bbda3c8a6a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 34,
    "path": "GRWTSK/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f364bb0d83273ce8bc0211dc62607c7ca34df42ce48c7f1a8f36169ecc2d14",
  "verification": {
    "reference": "docs/verification/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:094a3bbb-ba20-accb-07cf-db84cd29427c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_mem_nonunits_left [CommMonoid α] : a ∈ nonunits α → a * b ∈ nonunits α :=
  mt isUnit_of_mul_isUnit_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc7a96fc6d7bb762add328b54fe55bbda3c8a6a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
