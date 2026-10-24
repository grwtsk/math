# circleAverage_re_herglotzRieszKernel_mul_log₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd78e234df51703431c913f5bc6081233542e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c86384f1-eb3a-8c6b-4a1f-384dbe6f672d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc9b05ca-b922-705d-92ae-bce9f313fd2a",
  "kind": "theorem",
  "lexical_name": "circleAverage_re_herglotzRieszKernel_mul_log₀",
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
  "slug": "circleaverage-re-herglotzrieszkernel-mul-log--7d20ee6f0214ed413dd57f5c",
  "source": {
    "blob": "3dd78e234df51703431c913f5bc6081233542e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d20ee6f0214ed413dd57f5cd38fbcc5a8f82e16be46a0a95639c59a7b78a503",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc9b05ca-b922-705d-92ae-bce9f313fd2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_re_herglotzRieszKernel_mul_log₀ {w ρ : ℂ} {R : ℝ} (hρ : ρ ∈ sphere 0 R)
    (hw : w ∈ ball 0 R) :
    circleAverage ((Complex.re ∘ herglotzRieszKernel 0 w) • (log ‖· - ρ‖)) (0 : ℂ) R
      = log ‖w - ρ‖ := by
  have hR : 0 < R := pos_of_mem_ball hw
  rw [mem_sphere_iff_norm, sub_zero] at hρ
  rw [mem_ball_iff_norm, sub_zero] at hw
  let r : ℕ → ℝ := fun n ↦ R - (R - ‖w‖) / (n + 2)
  have hr_lt (n : ℕ) : r n < R := by
    simp_all only [sub_lt_self_iff, sub_pos, div_pos_iff_of_pos_left, r]
    positivity
  have hr_pos (n : ℕ) : 0 < r n := by
    simp_all only [sub_lt_self_iff, sub_pos, div_pos_iff_of_pos_left, r]
    apply (div_lt_iff₀ (by linarith)).2
    calc R - ‖w‖
      _ ≤ R * 1 := by aesop
      _ < R * (n + 2) := by gcongr; grind
  have hr_tendsto : Tendsto r atTop (nhds R) :=
    sub_zero R ▸ (tendsto_const_nhds.sub <| tendsto_const_nhds.div_atTop <|
      tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop)
  have DCT := herglotzLogIntegrand_circleAverage_tendsto hR hρ hw hr_lt hr_tendsto
  have {n : ℕ} : circleAverage (herglotzLogIntegrand w ρ) 0 (r n) = log ‖w - ρ‖ := by
    unfold herglotzLogIntegrand
    apply InnerProductSpace.HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul
    · refine ⟨fun z hz ↦ ?_, fun x hx ↦ ?_⟩
      · exact AnalyticAt.harmonicAt_log_norm (by fun_prop) (by grind [mem_ball, dist_zero_right])
      · suffices ‖x - ρ‖ ≠ 0 by fun_prop
        suffices x ≠ ρ by simpa [sub_eq_zero]
        have key := by simpa using closure_ball_subset_closedBall hx
        grind
    · simp only [mem_ball, dist_zero_right, lt_sub_iff_add_lt, r]
      field_simp
      calc ‖w‖ * (n + 2) + (R - ‖w‖) = ‖w‖ * (n + 1) + R := by ring
        _ < R * (n + 1) + R := by gcongr
        _ = R * (n + 2) := by ring
  aesop

/--
Analogue of the **Poisson Integral Formula** for the circle average function `log ‖· - ρ‖` along the
circle with radius `‖ρ‖`.

- See `InnerProductSpace.HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul` in the file
  `Mathlib/Analysis/Complex/Harmonic/Poisson` for the classic Poisson Integral Formula, for harmonic
  functions without logarithmic poles.

- See `MeromorphicOn.extract_zeros_poles` in the file
  `Mathlib/Analysis/Meromorphic/FactorizedRational` for a construction that splits factors of the
  form `· - ρ` off arbitrary meromorphic functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd78e234df51703431c913f5bc6081233542e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
