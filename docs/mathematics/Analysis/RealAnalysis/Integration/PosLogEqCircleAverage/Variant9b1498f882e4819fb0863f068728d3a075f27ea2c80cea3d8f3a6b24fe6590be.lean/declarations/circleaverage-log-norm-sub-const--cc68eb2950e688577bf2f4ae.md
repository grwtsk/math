# circleAverage_log_norm_sub_const₀

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
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9449b61-aa09-4ed7-10b0-6fc8565f8edf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49c0f40a-17c2-72f9-f181-a0ada1bac96d",
  "kind": "theorem",
  "lexical_name": "circleAverage_log_norm_sub_const₀",
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
  "slug": "circleaverage-log-norm-sub-const--cc68eb2950e688577bf2f4ae",
  "source": {
    "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc68eb2950e688577bf2f4ae250c97e36e8f02090727550e2336d16f526167ec",
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

Occurrence: `result:49c0f40a-17c2-72f9-f181-a0ada1bac96d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_log_norm_sub_const₀ (h : ‖a‖ < 1) : circleAverage (log ‖· - a‖) 0 1 = 0 := by
  calc circleAverage (log ‖· - a‖) 0 1
  _ = circleAverage (log ‖1 - ·⁻¹ * a‖) 0 1 := by
    apply circleAverage_congr_sphere
    intro z hz
    simp_all only [abs_one, mem_sphere_iff_norm, sub_zero]
    congr 1
    have : z ≠ 0 := fun h ↦ by simp [h] at hz
    calc ‖z - a‖
    _ = ‖z⁻¹ * (z - a)‖ := by simp [hz]
    _ = ‖1 - z⁻¹ * a‖ := by field_simp
  _ = 0 := by
    rw [circleAverage_zero_one_congr_inv (f := fun x ↦ log ‖1 - x * a‖),
      InnerProductSpace.HarmonicOnNhd.circleAverage_eq, zero_mul, sub_zero,
      CStarRing.norm_of_mem_unitary (unitary ℂ).one_mem, log_one]
    intro x hx
    have : ‖x * a‖ < 1 := by
      calc ‖x * a‖
      _ = ‖x‖ * ‖a‖ := by simp
      _ ≤ ‖a‖ := mul_le_of_le_one_left (norm_nonneg _) (by aesop)
      _ < 1 := h
    apply AnalyticAt.harmonicAt_log_norm (by fun_prop)
    rw [sub_ne_zero]
    by_contra! hCon
    rwa [← hCon, CStarRing.norm_of_mem_unitary (unitary ℂ).one_mem, lt_self_iff_false] at this

/-!
## Computing `circleAverage (log ‖· - a‖) 0 1` in case where `‖a‖ = 1`.
-/

-- Integral computation used in `circleAverage_log_norm_id_sub_const₁`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5b260515787adb57c1b012687a2ddbc02c2599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
