# circleAverage_log_norm_sub_const₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93a3175a-b050-b4d6-d6a6-19bdf97a2ee2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47ca62b1-93ed-1efc-604b-1459242ce5b2",
  "kind": "theorem",
  "lexical_name": "circleAverage_log_norm_sub_const₁",
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
  "slug": "circleaverage-log-norm-sub-const--a080f7f8bd569f13e3b6cf87",
  "source": {
    "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a080f7f8bd569f13e3b6cf877633f3ad89bd52867e807787458f66c81ce893ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ca62b1-93ed-1efc-604b-1459242ce5b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_log_norm_sub_const₁ (h : ‖a‖ = 1) :
    circleAverage (log ‖· - a‖) 0 1 = 0 := by
  -- Observing that the problem is rotation invariant, we rotate by an angle of `ζ = - arg a` and
  -- reduce the problem to the case where `a = 1`. The integral can then be evaluated by a direct
  -- computation.
  simp only [circleAverage, mul_inv_rev, smul_eq_mul, mul_eq_zero, inv_eq_zero, OfNat.ofNat_ne_zero,
    or_false]
  right
  obtain ⟨ζ, hζ⟩ : ∃ ζ, a⁻¹ = circleMap 0 1 ζ := by simp [Set.exists_range_iff.1, h]
  calc ∫ x in 0..(2 * π), log ‖circleMap 0 1 x - a‖
  _ = ∫ x in 0..(2 * π), log ‖(circleMap 0 1 ζ) * (circleMap 0 1 x - a)‖ := by
    simp
  _ = ∫ x in 0..(2 * π), log ‖circleMap 0 1 (ζ + x) - (circleMap 0 1 ζ) * a‖ := by
    simp [mul_sub, circleMap, add_mul, Complex.exp_add]
  _ = ∫ x in 0..(2 * π), log ‖circleMap 0 1 (ζ + x) - 1‖ := by
    simp [← hζ, inv_mul_cancel₀ (by aesop : a ≠ 0)]
  _ = ∫ x in 0..(2 * π), log ‖circleMap 0 1 x - 1‖ := by
    have : Function.Periodic (log ‖circleMap 0 1 · - 1‖) (2 * π) :=
      fun x ↦ by simp [periodic_circleMap 0 1 x]
    have := this.intervalIntegral_add_eq (t := 0) (s := ζ)
    simp_all [integral_comp_add_left (log ‖circleMap 0 1 · - 1‖)]
  _ = ∫ x in 0..(2 * π), log (4 * sin (x / 2) ^ 2) / 2 := by
    apply integral_congr
    intro x hx
    simp only
    rw [Complex.norm_def, log_sqrt (circleMap 0 1 x - 1).normSq_nonneg]
    congr
    calc Complex.normSq (circleMap 0 1 x - 1)
    _ = (cos x - 1) * (cos x - 1) + sin x * sin x := by
      simp [circleMap, Complex.normSq_apply]
    _ = sin x ^ 2 + cos x ^ 2 + 1 - 2 * cos x := by
      ring
    _ = 2 - 2 * cos x := by
      rw [sin_sq_add_cos_sq]
      norm_num
    _ = 2 - 2 * cos (2 * (x / 2)) := by
      rw [← mul_div_assoc]
      simp
    _ = 4 - 4 * cos (x / 2) ^ 2 := by
      rw [cos_two_mul]
      ring
    _ = 4 * sin (x / 2) ^ 2 := by
      nth_rw 1 [← mul_one 4, ← sin_sq_add_cos_sq (x / 2)]
      ring
  _ = 0 := circleAverage_log_norm_sub_const₁_integral

/-!
## Computing `circleAverage (log ‖· - a‖) 0 1` in case where `1 < ‖a‖`.
-/

/--
If `a : ℂ` has norm greater than one, then `circleAverage (log ‖· - a‖) 0 1` equals `log ‖a‖`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5b260515787adb57c1b012687a2ddbc02c2599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
