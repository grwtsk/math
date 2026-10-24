# heatPower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d12570a8-ff29-d797-6e83-0f5ebfc30c9b",
  "kind": "theorem",
  "lexical_name": "heatPower_bound",
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
  "slug": "heatpower-bound--0852cd916a0be155bb238d94",
  "source": {
    "blob": "8411695f30cbf8b66b8854b856c711e1b254b2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0852cd916a0be155bb238d94aa8c30527cd8610b804d5f6a7642c3c959ef2a85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d12570a8-ff29-d797-6e83-0f5ebfc30c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem heatPower_bound (p : ℕ) (x t M T : ℝ) (hM : 0 ≤ M)
    (hx : |x| ≤ M) (ht : |t| ≤ T) :
    ‖x ^ p * Real.exp (-t * x ^ 2)‖ ≤ M ^ p * Real.exp (T * M ^ 2) := by
  have hT : 0 ≤ T := (abs_nonneg t).trans ht
  have hsq : x ^ 2 ≤ M ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg x) hM).mpr hx
  have he : -t * x ^ 2 ≤ T * M ^ 2 := by
    calc
      -t * x ^ 2 ≤ |t| * x ^ 2 := mul_le_mul_of_nonneg_right (neg_le_abs t) (sq_nonneg x)
      _ ≤ T * M ^ 2 := mul_le_mul ht hsq (sq_nonneg x) hT
  rw [norm_mul, Real.norm_eq_abs, abs_pow, Real.norm_of_nonneg (Real.exp_pos _).le]
  exact mul_le_mul (pow_le_pow_left₀ (abs_nonneg x) hx p) (Real.exp_le_exp.mpr he)
    (Real.exp_pos _).le (pow_nonneg hM p)

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsFiniteMeasure μ]
    {k : α → ℝ} {M : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8411695f30cbf8b66b8854b856c711e1b254b2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
