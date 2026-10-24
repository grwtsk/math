# verticalLineMass_le_dampedSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b083401-da19-871a-c6c4-21984ef1e605",
  "kind": "theorem",
  "lexical_name": "verticalLineMass_le_dampedSource",
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
  "slug": "verticallinemass-le-dampedsource--f13ef63df6baa1d24ae89f9a",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13ef63df6baa1d24ae89f9adefc975997e4b10db5ba78508005a6ac94e19aab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b083401-da19-871a-c6c4-21984ef1e605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalLineMass_le_dampedSource {σ T : ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hF2 : IntervalIntegrable
      (fun u : ℝ => dampedMertensSource σ u ^ 2) volume 0 T) :
    verticalLineMass σ T ≤
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := by
  have hbound := exponentialVolterra_sq_integral_le hσ hT
    (dampedMertensSource_intervalIntegrable σ 0 T) hF2
  calc
    verticalLineMass σ T =
        ∫ u in (0 : ℝ)..T,
          (Real.exp (-σ * u) * wholePickup u) ^ 2 := by
      rw [verticalLineMass_eq_weightedWindow hT,
        intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
      apply setIntegral_congr_fun measurableSet_Icc
      intro u _hu
      change Real.exp (-2 * σ * u) * wholePickup u ^ 2 =
        (Real.exp (-σ * u) * wholePickup u) ^ 2
      rw [mul_pow]
      congr 1
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    _ = ∫ u in (0 : ℝ)..T,
          exponentialVolterra σ (dampedMertensSource σ) u ^ 2 := by
      apply intervalIntegral.integral_congr
      intro u _hu
      change (Real.exp (-σ * u) * wholePickup u) ^ 2 =
        exponentialVolterra σ (dampedMertensSource σ) u ^ 2
      rw [damped_wholePickup_eq_exponentialVolterra]
    _ ≤ (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := hbound

/-- A pointwise exponential envelope for the exact damped Mertens source
returns an explicit finite-horizon bound for the completed vertical-line
mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
