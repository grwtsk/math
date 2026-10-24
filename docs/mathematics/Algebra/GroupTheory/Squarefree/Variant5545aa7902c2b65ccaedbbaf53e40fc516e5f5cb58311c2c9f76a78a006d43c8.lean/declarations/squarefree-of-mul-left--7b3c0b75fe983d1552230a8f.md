# Squarefree.of_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d9b983a-6535-6dce-8c35-4739f39bd2c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:407b9379-8039-f4d4-882d-4d388c3bf3d9",
  "kind": "theorem",
  "lexical_name": "Squarefree.of_mul_left",
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
  "slug": "squarefree-of-mul-left--7b3c0b75fe983d1552230a8f",
  "source": {
    "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b3c0b75fe983d1552230a8fc0aa18fadab7a23e4abdc61b076a0c0cffc340f8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:407b9379-8039-f4d4-882d-4d388c3bf3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Squarefree.of_mul_left [CommMonoid R] {m n : R} (hmn : Squarefree (m * n)) : Squarefree m :=
  fun p hp => hmn p (dvd_mul_of_dvd_left hp n)
#align squarefree.of_mul_left Squarefree.of_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf88fd873e1d27988d87e3218063091f23eeec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
