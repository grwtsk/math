# actualFullZeroContribution_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08c9795b-9fa1-942e-00ff-8fbf6357654e",
  "kind": "theorem",
  "lexical_name": "actualFullZeroContribution_scaled_tendsto_zero",
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
  "slug": "actualfullzerocontribution-scaled-tendsto-zero--b37c2892879a2b7e452576ee",
  "source": {
    "blob": "4110c5e72da6bcb2af67a3a2036d4ffc01fd765c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37c2892879a2b7e452576ee874901c7cf8b1152862803114949a6772b6fb420",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08c9795b-9fa1-942e-00ff-8fbf6357654e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullZeroContribution_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualFullZeroContribution A) atTop (𝓝 0) := by
  obtain ⟨B,hB,hbound⟩ := scaled_tail_uniform_bound
  apply Metric.tendsto_nhds.mpr
  intro eps heps
  let R : ℝ := max 4 (2 * B / eps + 1)
  have hR : 4 ≤ R := le_max_left _ _
  have hRp : 0 < R := by linarith
  have hR1 : 1 ≤ R := by linarith
  have hsize : 2 * B / eps ≤ R := by
    have h := le_max_right (4 : ℝ) (2 * B / eps + 1)
    dsimp [R]
    linarith
  have hprod : 2 * B ≤ R * eps := (div_le_iff₀ heps).mp hsize
  have hBR : B / R ^ 4 ≤ eps / 2 := by
    calc
      _ ≤ B / R := div_le_div_of_nonneg_left hB hRp
        (le_self_pow₀ hR1 (by decide : (4 : ℕ) ≠ 0))
      _ ≤ eps / 2 := (div_le_iff₀ hRp).mpr (by nlinarith)
  have hh := Metric.tendsto_nhds.mp (actualZeroHeightHead_scaled_tendsto_zero R)
    (eps / 2) (by linarith)
  filter_upwards [hh,eventually_ge_atTop (1 : ℝ)] with A hhead hA
  rw [dist_zero_right] at hhead ⊢
  calc
    _ = ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A R +
        ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ := by
      rw [actualFullZeroContribution_eq_head_add_tail A R hA, mul_add]
    _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A R‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ := norm_add_le _ _
    _ < eps := by linarith [hbound A R hA hR]

/-- The full source quadratic form has this actual-zero-derived relative cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4110c5e72da6bcb2af67a3a2036d4ffc01fd765c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
