# actualNinthNormalizedCriticalCovariance_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c3872fd-9c3f-0d69-b87d-d4d69de013c4",
  "kind": "theorem",
  "lexical_name": "actualNinthNormalizedCriticalCovariance_tendsto_zero",
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
  "slug": "actualninthnormalizedcriticalcovariance-tendsto-zero--e5d6864618833fbab18f0a40",
  "source": {
    "blob": "824c158caab73b8086a42954d41ec9e4fa16abe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d6864618833fbab18f0a40d7b0a9fb81f2278c9740d45e98972c3a1289c6b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3872fd-9c3f-0d69-b87d-d4d69de013c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNinthNormalizedCriticalCovariance_tendsto_zero :
    Tendsto actualNinthNormalizedCriticalCovariance atTop (𝓝 0) := by
  apply Metric.tendsto_atTop.2
  intro eps heps
  let eta : ℝ := eps / (2 * 101921587200)
  have heta : 0 < eta := by dsimp [eta]; positivity
  obtain ⟨T, hT, hG⟩ := actualCenteredMangoldtLogError_small_after heta
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.1
    (actualNinthNormalizedCriticalEarlyBudget_tendsto_zero T) (eps / 2) (by positivity)
  refine ⟨max 91 (max (T / 2) N), fun A hA => ?_⟩
  have h91 : 91 ≤ A := (le_max_left _ _).trans hA
  have hTA : T ≤ 2 * A := by
    have h := (le_max_left (T / 2) N).trans ((le_max_right _ _).trans hA)
    linarith
  have hb := hN A ((le_max_right (T / 2) N).trans ((le_max_right _ _).trans hA))
  rw [Real.dist_eq, sub_zero] at hb ⊢
  have hh := actualNinthNormalizedCriticalCovariance_abs_le h91 hT hTA heta.le hG
  have hbudget : actualNinthNormalizedCriticalEarlyBudget T A < eps / 2 :=
    (le_abs_self _).trans_lt hb
  dsimp [eta] at hh
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceEdgeNine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824c158caab73b8086a42954d41ec9e4fa16abe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
