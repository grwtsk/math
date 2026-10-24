# actualCancelledFactorialWork_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16eed617-388c-4c53-024c-27301f2f1c6e",
  "kind": "theorem",
  "lexical_name": "actualCancelledFactorialWork_tendsto_zero",
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
  "slug": "actualcancelledfactorialwork-tendsto-zero--859ca33bc23e49b90098f4c5",
  "source": {
    "blob": "8112b0758f2e3069200d65013d2b3b65ac3477a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859ca33bc23e49b90098f4c5ea7cf8faaeee5417c0329b7a017e65aca0230b16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16eed617-388c-4c53-024c-27301f2f1c6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCancelledFactorialWork_tendsto_zero :
    Tendsto actualCancelledFactorialWork atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    cancelledFactorialEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact (actual_cancelled_factorial_full_abs_le A hA).trans
    (actual_floor_budget_le_logarithmic hA)

/-- The originally retained factorial tail also tends to zero on the real scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variant9c94a9e20d00e06fb7192febe2422feeb08083bf328faa33e37c72235ad3c31e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8112b0758f2e3069200d65013d2b3b65ac3477a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
