# half_plane_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10675bad-d746-2717-8f08-978f56c220c7",
  "kind": "theorem",
  "lexical_name": "half_plane_ne_zero",
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
  "slug": "half-plane-ne-zero--b28811fe121ff2b98f87c702",
  "source": {
    "blob": "97236f6986ddaf1153c6b1bc3aa696f3aa03858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28811fe121ff2b98f87c702346eff4cdb01be298507912ca9b27ea7943ec794",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10675bad-d746-2717-8f08-978f56c220c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_plane_ne_zero {z : ℂ} (hz : 0 < z.re) : z ≠ 0 := by
  intro he
  simp [he] at hz

/-- Genuine fixed complex amplitude limit; the negative endpoint vanishes in norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97236f6986ddaf1153c6b1bc3aa696f3aa03858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
