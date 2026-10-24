# ofSet_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9be1d50ea84319e6f1bf0cb4b76bc348a77f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9cf65ae2029dff7861078f859c9ffd6e85bf225a2cb0efa1d6b73d76e369cae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:411cff7b-90b2-5634-96a2-9cb7ca6c0539",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5530ae3-c940-2c91-38cb-3f4115585bd1",
  "kind": "lemma",
  "lexical_name": "ofSet_val",
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
  "slug": "ofset-val--0f406fcec37914ecff672b20",
  "source": {
    "blob": "7c9be1d50ea84319e6f1bf0cb4b76bc348a77f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Generators/Variantb9cf65ae2029dff7861078f859c9ffd6e85bf225a2cb0efa1d6b73d76e369cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f406fcec37914ecff672b20b59fa93434e3b791d68d72e50de4ee249f72c53a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Generators/Variantb9cf65ae2029dff7861078f859c9ffd6e85bf225a2cb0efa1d6b73d76e369cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5530ae3-c940-2c91-38cb-3f4115585bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofSet_val {S : Set G} (hS : Subgroup.closure S = ⊤) :
    (Group.Generators.ofSet hS).val = Subtype.val :=
  rfl

/-- The generating family given by a the canonical surjection from `FreeGroup ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Generators/Variantb9cf65ae2029dff7861078f859c9ffd6e85bf225a2cb0efa1d6b73d76e369cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Generators/Variantb9cf65ae2029dff7861078f859c9ffd6e85bf225a2cb0efa1d6b73d76e369cae.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9be1d50ea84319e6f1bf0cb4b76bc348a77f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
