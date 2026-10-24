# adjusted_inner_eq_original_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61638326-c59b-f710-9652-4eb257db777c",
  "kind": "theorem",
  "lexical_name": "adjusted_inner_eq_original_hom",
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
  "slug": "adjusted-inner-eq-original-hom--2c9ee482167c7da5b914b6f1",
  "source": {
    "blob": "2364cc6ed409a55caaab7df94fda557bac5ad630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c9ee482167c7da5b914b6f10ffbe66aed01db9a698058423207f58708b92270",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61638326-c59b-f710-9652-4eb257db777c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem adjusted_inner_eq_original_hom {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualAdjointColumnPrimitive A s * covariantMixedDerivative (actualLogMixedDensity A) t s) +
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
        (Real.exp (actualColumnUpper A / 2) * actualTwistedTimeDensity A t (actualColumnUpper A) -
          Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) *
            actualTwistedTimeDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  obtain ⟨hl, hc⟩ := column_orders hA
  have hQ := (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hc).continuousOn
  rw [uIcc_of_le hc] at hQ
  have hiQ : IntervalIntegrable (fun s => actualAdjointColumnPrimitive A s *
      covariantMixedDerivative (actualLogMixedDensity A) t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (hQ.intervalIntegrable_of_Icc hc).mul_continuousOn
    (covariant_continuous (by linarith : 0 < A) t).continuousOn
  have hiE : IntervalIntegrable (fun s =>
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2) *
        covariantMixedDerivative (actualLogMixedDensity A) t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) := by
    exact ((by fun_prop : Continuous (fun s : ℝ =>
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2))).mul
        (covariant_continuous (by linarith : 0 < A) t)).intervalIntegrable _ _
  have he : (fun s => actualCriticalAdjustedColumnPrimitive A s *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (fun s => actualAdjointColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s +
        2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
          (Real.exp (s / 2) * covariantMixedDerivative (actualLogMixedDensity A) t s)) := by
    funext s
    unfold actualCriticalAdjustedColumnPrimitive
    ring
  rw [he, intervalIntegral.integral_add hiQ (by simpa only [mul_assoc] using hiE),
    intervalIntegral.integral_const_mul,
    actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]

/-- The original adjusted inner work retains both boundaries, mean and signed periodic row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2364cc6ed409a55caaab7df94fda557bac5ad630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
