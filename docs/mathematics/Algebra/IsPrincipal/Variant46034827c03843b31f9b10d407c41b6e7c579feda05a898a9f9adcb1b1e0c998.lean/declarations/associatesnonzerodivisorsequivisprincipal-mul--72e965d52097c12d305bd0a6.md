# associatesNonZeroDivisorsEquivIsPrincipal_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4b21780be013d09b7499cabc2e5d6a65b35e85e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25ac5f2e-0bc5-f135-8dd2-f60b30889031",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a988f4b-98ef-2a2d-4a46-e4212006f7b0",
  "kind": "theorem",
  "lexical_name": "associatesNonZeroDivisorsEquivIsPrincipal_mul",
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
  "slug": "associatesnonzerodivisorsequivisprincipal-mul--72e965d52097c12d305bd0a6",
  "source": {
    "blob": "b4b21780be013d09b7499cabc2e5d6a65b35e85e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 133,
    "path": "GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e965d52097c12d305bd0a6fc160215770c51d5dae130d3b0c14542e4bbe574",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a988f4b-98ef-2a2d-4a46-e4212006f7b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associatesNonZeroDivisorsEquivIsPrincipal_mul (x y : Associates R⁰) :
    (associatesNonZeroDivisorsEquivIsPrincipal R (x * y) : Ideal R) =
      (associatesNonZeroDivisorsEquivIsPrincipal R x) *
        (associatesNonZeroDivisorsEquivIsPrincipal R y) := by
  simp_rw [associatesNonZeroDivisorsEquivIsPrincipal_coe, map_mul, Submonoid.coe_mul,
    associatesEquivIsPrincipal_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b21780be013d09b7499cabc2e5d6a65b35e85e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
