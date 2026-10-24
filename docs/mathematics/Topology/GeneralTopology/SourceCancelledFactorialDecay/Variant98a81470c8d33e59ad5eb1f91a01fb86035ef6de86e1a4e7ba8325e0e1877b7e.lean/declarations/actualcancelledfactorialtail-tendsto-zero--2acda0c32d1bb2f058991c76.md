# actualCancelledFactorialTail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1273c06-3ffc-d700-af8b-8950b3259a4c",
  "kind": "theorem",
  "lexical_name": "actualCancelledFactorialTail_tendsto_zero",
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
  "slug": "actualcancelledfactorialtail-tendsto-zero--2acda0c32d1bb2f058991c76",
  "source": {
    "blob": "41932eab6215b8b21488ba3fa2c6115fc692f3e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2acda0c32d1bb2f058991c76b5dbd0ae7bb4b184e6def6730a0f2659e73ea215",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1273c06-3ffc-d700-af8b-8950b3259a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCancelledFactorialTail_tendsto_zero :
    Tendsto (fun A : ℝ => ∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    cancelledFactorialEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact (actual_cancelled_factorial_tail_abs_le A hA).trans
    (actual_floor_budget_le_logarithmic hA)

end
end FormalResearch.RiemannHypothesis.SourceCancelledFactorialDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41932eab6215b8b21488ba3fa2c6115fc692f3e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
