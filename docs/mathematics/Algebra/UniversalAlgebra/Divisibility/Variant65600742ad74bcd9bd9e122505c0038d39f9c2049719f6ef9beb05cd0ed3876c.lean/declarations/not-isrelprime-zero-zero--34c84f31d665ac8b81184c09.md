# not_isRelPrime_zero_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27d2dccf-890d-b11d-fe8e-02ffa0f95a05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a0e0011-e815-4ddd-6933-37fd96a0e801",
  "kind": "theorem",
  "lexical_name": "not_isRelPrime_zero_zero",
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
  "slug": "not-isrelprime-zero-zero--34c84f31d665ac8b81184c09",
  "source": {
    "blob": "2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 81,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c84f31d665ac8b81184c094fb374afa1c771c97dc6fef3b47f1c459b0dbfc6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0e0011-e815-4ddd-6933-37fd96a0e801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isRelPrime_zero_zero [Nontrivial α] : ¬IsRelPrime (0 : α) 0 :=
  mt isRelPrime_zero_right.mp not_isUnit_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
