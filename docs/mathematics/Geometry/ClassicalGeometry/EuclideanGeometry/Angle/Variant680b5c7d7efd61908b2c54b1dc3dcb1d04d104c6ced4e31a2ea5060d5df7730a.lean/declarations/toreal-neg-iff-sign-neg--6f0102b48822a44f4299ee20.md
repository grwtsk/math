# toReal_neg_iff_sign_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:173622d1-cc15-9eae-7e84-179000b2607a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d1b0b55-0f03-f007-b2aa-884604aace43",
  "kind": "theorem",
  "lexical_name": "toReal_neg_iff_sign_neg",
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
  "slug": "toreal-neg-iff-sign-neg--6f0102b48822a44f4299ee20",
  "source": {
    "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 762,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f0102b48822a44f4299ee20f4f4bf68e07db8468d3765a4044457391deaf6d3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d1b0b55-0f03-f007-b2aa-884604aace43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toReal_neg_iff_sign_neg {θ : Angle} : θ.toReal < 0 ↔ θ.sign = -1 := by
  rw [sign, ← sin_toReal, sign_eq_neg_one_iff]
  grind [sin_nonneg_of_nonneg_of_le_pi, sin_neg_of_neg_of_neg_pi_lt, toReal_mem_Ioc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815f53c00815218f96f6ae5af380b3feb4a51f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
