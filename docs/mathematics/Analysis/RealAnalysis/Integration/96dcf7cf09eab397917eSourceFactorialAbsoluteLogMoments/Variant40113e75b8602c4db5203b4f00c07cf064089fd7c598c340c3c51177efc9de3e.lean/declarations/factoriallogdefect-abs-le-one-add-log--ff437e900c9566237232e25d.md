# factorialLogDefect_abs_le_one_add_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a08321bf-1072-4758-6e00-2dea40b7a699",
  "kind": "theorem",
  "lexical_name": "factorialLogDefect_abs_le_one_add_log",
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
  "slug": "factoriallogdefect-abs-le-one-add-log--ff437e900c9566237232e25d",
  "source": {
    "blob": "ed8604a8da8851cbf97b7af7d2e775f71e423a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff437e900c9566237232e25df54db30bdf73867e27447cf2a4ad4768eafeb3c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a08321bf-1072-4758-6e00-2dea40b7a699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialLogDefect_abs_le_one_add_log {y : ℝ} (hy : 1 ≤ y) :
    |factorialLogDefect y| ≤ 1 + Real.log y := by
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
    continuousOn_id.inv₀ (fun t ht => by
      simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t)))
  have hi : IntervalIntegrable (fun t : ℝ => 1 / t) volume 1 y := by
    simpa only [one_div] using hc.intervalIntegrable_of_Icc hy
  have hlo : 0 ≤ ∫ t in 1..y, Int.fract t / t :=
    intervalIntegral.integral_nonneg hy (fun t ht =>
      div_nonneg (Int.fract_nonneg t) (by linarith [ht.1]))
  have hhi := intervalIntegral.integral_mono_on hy
    (fractionalPrimitive_interval_integrable hy) hi (fun t ht =>
      div_le_div_of_nonneg_right (Int.fract_lt_one t).le (by linarith [ht.1]))
  rw [integral_one_div_of_pos (by norm_num : (0 : ℝ) < 1) (by linarith : 0 < y),
    div_one] at hhi
  have hl := Real.log_nonneg hy
  have hf0 := Int.fract_nonneg y
  have hf1 := (Int.fract_lt_one y).le
  rw [factorialLogDefect_eq_fractional_primitive hy, abs_le]
  constructor <;> nlinarith

/-- Genuine absolute-log density; the signed Mellin weight supplies measurability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8604a8da8851cbf97b7af7d2e775f71e423a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
