# sphereHomologyRanks_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a2c775e4c33edd86d8cd0a132c05b5aed7e606e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaea236a-b5eb-7526-36ee-053df47e4cbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dc18a57-722d-1a5e-b8d3-38545b4e32ff",
  "kind": "theorem",
  "lexical_name": "sphereHomologyRanks_euler",
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
  "slug": "spherehomologyranks-euler--441aae40d1b950ad3b5deca7",
  "source": {
    "blob": "2a2c775e4c33edd86d8cd0a132c05b5aed7e606e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:441aae40d1b950ad3b5deca7c136f570fa739434c3b499c65e65f5203a32e1dd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dc18a57-722d-1a5e-b8d3-38545b4e32ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphereHomologyRanks_euler :
    sphereHomologyRanks.euler = 2 := by
  norm_num [sphereHomologyRanks, HomologyRanks.euler]

/--
A spherical closure certificate.

This is the homology-level version of saying that the `BinaryMatrix` patch has
been closed as a combinatorial sphere.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2c775e4c33edd86d8cd0a132c05b5aed7e606e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
