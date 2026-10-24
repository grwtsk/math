# Real.abs_erf_le_2257_div_2000_mul_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2af7e8ad-4959-4830-9c5d-e82d1b461a8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e47b0a0-30e2-a3d3-a3e7-983b1aa65dbb",
  "kind": "theorem",
  "lexical_name": "Real.abs_erf_le_2257_div_2000_mul_abs",
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
  "slug": "real-abs-erf-le-2257-div-2000-mul-abs--8e66797598f6e69e00b4acc0",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 142,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e66797598f6e69e00b4acc0ca18b5109b585ff47011b402d70ce7f8d8324f3d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e47b0a0-30e2-a3d3-a3e7-983b1aa65dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Real.abs_erf_le_2257_div_2000_mul_abs (x : ℝ) :
    |Real.erf x| ≤ ((2257 : ℝ) / 2000) * |x| := by
  unfold Real.erf
  have h_int :
      ‖∫ t in (0 : ℝ)..x, Real.exp (-(t ^ 2))‖ ≤ |x| := by
    have hnorm :
        ∀ t ∈ Set.uIoc (0 : ℝ) x, ‖Real.exp (-(t ^ 2))‖ ≤ (1 : ℝ) := by
      intro t _ht
      have hsq : 0 ≤ t ^ 2 := sq_nonneg t
      have hle : Real.exp (-(t ^ 2)) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
      have hnonneg : 0 ≤ Real.exp (-(t ^ 2)) := le_of_lt (Real.exp_pos _)
      simpa [Real.norm_eq_abs, abs_of_nonneg hnonneg] using hle
    have h := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := x) (C := (1 : ℝ)) (f := fun t => Real.exp (-(t ^ 2))) hnorm
    simpa [one_mul, sub_zero] using h
  have hfactor_nonneg : 0 ≤ 2 / Real.sqrt Real.pi := by
    exact div_nonneg (by norm_num) (le_of_lt (Real.sqrt_pos.mpr Real.pi_pos))
  have hsqrt_ge_17724 : (17724 / 10000 : ℝ) ≤ Real.sqrt Real.pi := by
    have hpi_ge : (3.1415 : ℝ) ≤ Real.pi := le_of_lt Real.pi_gt_d4
    have hsq : (17724 / 10000 : ℝ) ^ 2 ≤ Real.pi := by
      have hcalc : (17724 / 10000 : ℝ) ^ 2 = 3.14140176 := by norm_num
      linarith
    have hnonneg : (0 : ℝ) ≤ (17724 / 10000 : ℝ) := by norm_num
    have hsqrt_sq : (17724 / 10000 : ℝ) = Real.sqrt ((17724 / 10000 : ℝ) ^ 2) := by
      symm; exact Real.sqrt_sq hnonneg
    calc
      (17724 / 10000 : ℝ) = Real.sqrt ((17724 / 10000 : ℝ) ^ 2) := hsqrt_sq
      _ ≤ Real.sqrt Real.pi := by exact Real.sqrt_le_sqrt hsq
  have hfactor_le_2257_div_2000 : 2 / Real.sqrt Real.pi ≤ ((2257 : ℝ) / 2000) := by
    have hmul : (2 : ℝ) ≤ ((2257 : ℝ) / 2000) * Real.sqrt Real.pi := by
      calc
        (2 : ℝ) ≤ ((2257 : ℝ) / 2000) * (17724 / 10000 : ℝ) := by norm_num
        _ ≤ ((2257 : ℝ) / 2000) * Real.sqrt Real.pi := by
              gcongr
    exact (div_le_iff₀ (Real.sqrt_pos.mpr Real.pi_pos)).2 hmul
  calc
    |(2 / Real.sqrt Real.pi) * ∫ t in (0 : ℝ)..x, Real.exp (-(t ^ 2))|
        = (2 / Real.sqrt Real.pi) * ‖∫ t in (0 : ℝ)..x, Real.exp (-(t ^ 2))‖ := by
            rw [abs_mul, abs_of_nonneg hfactor_nonneg, Real.norm_eq_abs]
    _ ≤ (2 / Real.sqrt Real.pi) * |x| := by
          gcongr
    _ ≤ ((2257 : ℝ) / 2000) * |x| := by
          nlinarith [hfactor_nonneg, hfactor_le_2257_div_2000, abs_nonneg x]

/-- Correctness of `erfPointComputable`.
    The enclosure is sign-aware and uses monotonicity of erf with `erf(0)=0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
