# actual_horizon_shell_energy_growth

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
      "line": 269,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b083167-e6e4-09bb-aaa5-816bd2b599b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e335e3ca-deba-ddd5-abdc-abb9c886a9d8",
  "kind": "theorem",
  "lexical_name": "actual_horizon_shell_energy_growth",
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
  "slug": "actual-horizon-shell-energy-growth--ec2abd2f5f61a7039fd0f958",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 269,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec2abd2f5f61a7039fd0f95871e275832492d0e09a9aa85ee6f8408a1d06a4fa",
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

Occurrence: `result:e335e3ca-deba-ddd5-abdc-abb9c886a9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_horizon_shell_energy_growth {S : ℝ} (hS : 1024 ≤ S) :
    ∃ T ∈ Icc (S-8*Real.log 2) S,
      chosenWidth ≤ T ∧ growthConstant*Real.exp T/(1+T)^2 ≤ shellEnergy chosenWidth T := by
  obtain ⟨k,hk,hcount⟩ := heavy_bin_exists hS
  let T := binHorizon S k
  have hlarge : chosenWidth ≤ T := (binHorizon_large hS hk).1
  have hT : 0 ≤ T := chosenWidth_valid.1.le.trans hlarge
  let amplitude := atomGain*Real.exp (T/2)/(1792*(1+T))
  have ha : 0 ≤ amplitude := by
    dsimp only [amplitude]
    exact div_nonneg (mul_nonneg atomGain_positive.le (Real.exp_pos _).le) (by positivity)
  have hneg : ∀ u ∈ Icc (T-terminalWidth) T,
      HorizonShell.horizonWave chosenWidth T u ≤ -amplitude := by
    intro u hu
    have hwb : terminalWidth ≤ chosenWidth := by
      dsimp only [terminalWidth,binWidth,chosenWidth]
      linarith [Real.log_pos (show (1:ℝ)<2 by norm_num)]
    have hmem : u ∈ Icc 0 T := ⟨by linarith [hu.1],hu.2⟩
    rw [HorizonShell.horizonWave_eq_sum hmem]
    exact neg_le_neg (shell_mass_lower hS hk hcount hu.1)
  have hlow := shellEnergy_from_amplitude hlarge ha hneg
  have hexp : Real.exp (T/2)^2 = Real.exp T := by
    rw [pow_two,← Real.exp_add]
    congr 1
    ring
  have heq : amplitude^2*terminalWidth = growthConstant*Real.exp T/(1+T)^2 := by
    dsimp only [amplitude,growthConstant]
    rw [div_pow,mul_pow,hexp,mul_pow]
    have hden : 1+T ≠ 0 := by linarith
    field_simp [hden]
  refine ⟨T,binHorizon_bounds hk,hlarge,?_⟩
  rw [← heq]
  exact hlow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
