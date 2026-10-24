# power_exp_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cc656f7-ad88-3a19-5ec2-b5029d2df9d6",
  "kind": "theorem",
  "lexical_name": "power_exp_tendsto_zero",
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
  "slug": "power-exp-tendsto-zero--0d7e8ca798d4ca63e3315b6a",
  "source": {
    "blob": "cd80aa35287a4bd0f5f0978b2144cb99a4085f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7e8ca798d4ca63e3315b6a7f974248679eaf32ea7159d04909140c63002c84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cc656f7-ad88-3a19-5ec2-b5029d2df9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem power_exp_tendsto_zero (n : ℕ) :
    Tendsto (fun A : ℝ => A ^ n * Real.exp (-A)) atTop (𝓝 0) := by
  convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) 1 (by norm_num) using 1
  funext A
  rw [Real.rpow_natCast]
  simp

/-- Each fixed early source budget tends to zero on the actual real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd80aa35287a4bd0f5f0978b2144cb99a4085f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
