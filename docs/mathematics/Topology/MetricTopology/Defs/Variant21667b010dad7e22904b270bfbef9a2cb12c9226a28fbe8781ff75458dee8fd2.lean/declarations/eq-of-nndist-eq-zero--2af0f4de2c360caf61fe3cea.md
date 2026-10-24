# eq_of_nndist_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:390fcd32-108e-e49a-1a4c-7f0887ecd266",
  "kind": "theorem",
  "lexical_name": "eq_of_nndist_eq_zero",
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
  "slug": "eq-of-nndist-eq-zero--2af0f4de2c360caf61fe3cea",
  "source": {
    "blob": "7cdef65e104f15c2504ee3f9cdaf1bbfe505aaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 126,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af0f4de2c360caf61fe3ceac615a8453fb2d854b987af18c8d468aea01c8d3f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:390fcd32-108e-e49a-1a4c-7f0887ecd266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_nndist_eq_zero {x y : γ} : nndist x y = 0 → x = y := by
  simp only [NNReal.eq_iff, ← dist_nndist, imp_self, NNReal.coe_zero, dist_eq_zero]

/-- Characterize the equality of points as the vanishing of the nonnegative distance -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cdef65e104f15c2504ee3f9cdaf1bbfe505aaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
