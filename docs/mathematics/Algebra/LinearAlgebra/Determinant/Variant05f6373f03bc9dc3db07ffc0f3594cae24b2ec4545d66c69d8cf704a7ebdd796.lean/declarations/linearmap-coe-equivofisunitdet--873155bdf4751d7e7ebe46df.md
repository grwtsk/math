# LinearMap.coe_equivOfIsUnitDet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba0f469c-3609-5d94-4957-6405e4b6fc85",
  "kind": "theorem",
  "lexical_name": "LinearMap.coe_equivOfIsUnitDet",
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
  "slug": "linearmap-coe-equivofisunitdet--873155bdf4751d7e7ebe46df",
  "source": {
    "blob": "bde0d8d20049d5430c82ee956791b15a71bb3fe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 566,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:873155bdf4751d7e7ebe46dfa7baffe7b2e528303dff01d3231cdd0e95d1e377",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba0f469c-3609-5d94-4957-6405e4b6fc85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.coe_equivOfIsUnitDet
    [Module.Free R M] [Module.Finite R M]
    {f : M →ₗ[R] M} (h : IsUnit f.det) :
    (LinearMap.equivOfIsUnitDet h : M →ₗ[R] M) = f := by
  ext
  apply LinearMap.equivOfIsUnitDet_apply

/-- Builds a linear equivalence from a linear map on a finite-dimensional vector space whose
determinant is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde0d8d20049d5430c82ee956791b15a71bb3fe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
