# exponentialVector_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d2d58a195644c7b631df6f48d35424974967650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f8b89e8-a2f9-cc15-e50c-1c87b7fbe1c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efec4230-fe3d-2f7b-62f1-c2dc929c25b8",
  "kind": "theorem",
  "lexical_name": "exponentialVector_ne_zero",
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
  "slug": "exponentialvector-ne-zero--691c5c487398bd147cae7159",
  "source": {
    "blob": "9d2d58a195644c7b631df6f48d35424974967650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:691c5c487398bd147cae715943b39d740775919dfd0dc2278f31f8bbe794c0a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efec4230-fe3d-2f7b-62f1-c2dc929c25b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentialVector_ne_zero (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz ≠ 0 := by
  intro h
  have hnorm := exponentialVector_norm_sq z hz
  rw [h, norm_zero, zero_pow (by norm_num : 2 ≠ 0)] at hnorm
  have : 0 < 1 / (2 * z.re) := by positivity
  linarith

/-- The fixed reference vector is exactly e_1 in the same Hilbert space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2d58a195644c7b631df6f48d35424974967650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
