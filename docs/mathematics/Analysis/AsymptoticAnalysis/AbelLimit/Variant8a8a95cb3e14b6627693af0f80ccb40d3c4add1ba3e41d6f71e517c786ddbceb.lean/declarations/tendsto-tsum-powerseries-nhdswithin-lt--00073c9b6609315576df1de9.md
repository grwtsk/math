# tendsto_tsum_powerSeries_nhdsWithin_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95255ae7-63e7-6d07-e796-e85143dcd84b",
  "kind": "theorem",
  "lexical_name": "tendsto_tsum_powerSeries_nhdsWithin_lt",
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
  "slug": "tendsto-tsum-powerseries-nhdswithin-lt--00073c9b6609315576df1de9",
  "source": {
    "blob": "2fad3fb8daf05e5012118815c8ec582c68b0ca7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 267,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00073c9b6609315576df1de98619d017f2a53f1706e273c529d0960484bcb2a9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95255ae7-63e7-6d07-e796-e85143dcd84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_tsum_powerSeries_nhdsWithin_lt
    (h : Tendsto (fun n ↦ ∑ i ∈ range n, f i) atTop (𝓝 l)) :
    Tendsto (fun x ↦ ∑' n, f n * x ^ n) (𝓝[<] 1) (𝓝 l) := by
  have m : (𝓝 l).map ofReal ≤ 𝓝 ↑l := ofRealCLM.continuous.tendsto l
  replace h := (tendsto_map.comp h).mono_right m
  rw [Function.comp_def] at h
  push_cast at h
  replace h := Complex.tendsto_tsum_powerSeries_nhdsWithin_lt h
  rw [tendsto_map'_iff] at h
  rw [Metric.tendsto_nhdsWithin_nhds] at h ⊢
  convert h
  simp_rw [Function.comp_apply, dist_eq_norm]
  norm_cast

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad3fb8daf05e5012118815c8ec582c68b0ca7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
