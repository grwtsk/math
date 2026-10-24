# pentagonalSeries_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8b79d02-14d6-8fb3-d3a5-f0a6b84e64ab",
  "kind": "theorem",
  "lexical_name": "pentagonalSeries_eq_tsum",
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
  "slug": "pentagonalseries-eq-tsum--bcab0c80f6d5ae46a765495e",
  "source": {
    "blob": "af148b1723747ac2c0787b31519c296b1f3ce7e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcab0c80f6d5ae46a765495e4011e98c1d111fe6b6df3e7b01431a7124045830",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8b79d02-14d6-8fb3-d3a5-f0a6b84e64ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pentagonalSeries_eq_tsum [T2Space R] :
    pentagonalSeries R = ∑' k, (Int.negOnePow k : R⟦X⟧) * X ^ pentagonal k :=
  (hasSum_pentagonalSeries R).tsum_eq.symm

/-- `PowerSeries.pentagonalSeries` as an infinite sum over natural numbers. In this version, terms
are ordered by strictly increasing exponent `pentagonal k` for `k = 0, 1, -1, 2, -2, 3, ...`,
and every two terms are grouped together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af148b1723747ac2c0787b31519c296b1f3ce7e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
