# horizon_shell_energy_not_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ee7c3f6-7101-f46a-6ba8-30cb1a3d3207",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4823c236-1551-cf46-0ecb-7fd1f2758ea8",
  "kind": "theorem",
  "lexical_name": "horizon_shell_energy_not_polynomial",
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
  "slug": "horizon-shell-energy-not-polynomial--adbe440e1ab1f5da7b1e7855",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 312,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adbe440e1ab1f5da7b1e7855b969e9e58e22b6eba3b303cc986a1c2c53ff0328",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4823c236-1551-cf46-0ecb-7fd1f2758ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizon_shell_energy_not_polynomial :
    ¬PolynomialBound (shellEnergy chosenWidth) := by
  rintro ⟨C,q,hC,hq,hbound⟩
  have hlower : Obstruction.ExponentialEnergyInput
      (fun S => C*(1+S)^q) (growthConstant/256) := by
    filter_upwards [eventually_ge_atTop (1024:ℝ)] with S hS
    obtain ⟨T,hTS,hlarge,hgrowth⟩ := actual_horizon_shell_energy_growth hS
    have hT : 0 ≤ T := chosenWidth_valid.1.le.trans hlarge
    have hS0 : 0 ≤ S := by linarith
    have hST : 1+T ≤ 1+S := by linarith [hTS.2]
    have hrpow : (1+T)^q ≤ (1+S)^q :=
      Real.rpow_le_rpow (by linarith) hST hq
    have hupper : shellEnergy chosenWidth T ≤ C*(1+S)^q :=
      (hbound T hT).trans (mul_le_mul_of_nonneg_left hrpow hC)
    have hden : 0 < (1+T)^2 := sq_pos_of_pos (by linarith)
    have hcore : growthConstant*Real.exp T ≤ shellEnergy chosenWidth T*(1+T)^2 :=
      (div_le_iff₀ hden).mp hgrowth
    have hsq : (1+T)^2 ≤ (1+S)^2 := by nlinarith
    have hmul : shellEnergy chosenWidth T*(1+T)^2 ≤ C*(1+S)^q*(1+S)^2 :=
      mul_le_mul hupper hsq (sq_nonneg _) (by positivity)
    have hexp : Real.exp S/256 ≤ Real.exp T := by
      rw [← exp_binOrigin]
      exact Real.exp_le_exp.mpr hTS.1
    calc
      (growthConstant/256)*Real.exp S = growthConstant*(Real.exp S/256) := by ring
      _ ≤ growthConstant*Real.exp T :=
        mul_le_mul_of_nonneg_left hexp growthConstant_positive.le
      _ ≤ shellEnergy chosenWidth T*(1+T)^2 := hcore
      _ ≤ C*(1+S)^q*(1+S)^2 := hmul
  exact Obstruction.exponential_input_not_polynomial
    (div_pos growthConstant_positive (by norm_num)) hlower
    (Eventually.of_forall (fun _ => le_rfl))

end HSSCP04.ShellObstruction
#print axioms HSSCP04.ShellObstruction.heavy_bin_exists
#print axioms HSSCP04.ShellObstruction.actual_horizon_shell_energy_growth
#print axioms HSSCP04.ShellObstruction.horizon_shell_energy_not_polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
