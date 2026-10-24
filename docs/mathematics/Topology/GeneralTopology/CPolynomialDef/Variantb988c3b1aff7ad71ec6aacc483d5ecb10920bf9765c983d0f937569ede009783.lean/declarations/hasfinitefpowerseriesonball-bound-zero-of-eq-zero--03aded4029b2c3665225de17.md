# HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e2d8b0a-87ca-06b7-edf0-909ed5522746",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero",
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
  "slug": "hasfinitefpowerseriesonball-bound-zero-of-eq-zero--03aded4029b2c3665225de17",
  "source": {
    "blob": "fa7e1c740894a3be648b71ad686c0f7b11e831b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03aded4029b2c3665225de171a425b97c8ba23f38833d535ccb19278dfbcd173",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2d8b0a-87ca-06b7-edf0-909ed5522746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero (hf : ∀ y ∈ EMetric.ball x r, f y = 0)
    (r_pos : 0 < r) (hp : ∀ n, p n = 0) : HasFiniteFPowerSeriesOnBall f p x 0 r := by
  refine ⟨⟨?_, r_pos, ?_⟩, fun n _ ↦ hp n⟩
  · rw [p.radius_eq_top_of_forall_image_add_eq_zero 0 (fun n ↦ by rw [add_zero]; exact hp n)]
    exact le_top
  · intro y hy
    rw [hf (x + y)]
    · convert hasSum_zero
      rw [hp, ContinuousMultilinearMap.zero_apply]
    · rwa [EMetric.mem_ball, edist_eq_enorm_sub, add_comm, add_sub_cancel_right,
        ← edist_zero_eq_enorm, ← EMetric.mem_ball]

/-- If `f` has a formal power series at `x` bounded by `0`, then `f` is equal to `0` in a
neighborhood of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7e1c740894a3be648b71ad686c0f7b11e831b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
