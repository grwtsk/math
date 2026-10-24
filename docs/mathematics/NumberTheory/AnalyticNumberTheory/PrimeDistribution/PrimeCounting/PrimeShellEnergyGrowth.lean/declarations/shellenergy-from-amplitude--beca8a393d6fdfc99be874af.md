# shellEnergy_from_amplitude

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
      "line": 239,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b17e35a1-dc38-2da0-e017-39d7ec21aab8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:416b2445-ff81-ad1c-41a2-69477e7538ec",
  "kind": "theorem",
  "lexical_name": "shellEnergy_from_amplitude",
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
  "slug": "shellenergy-from-amplitude--beca8a393d6fdfc99be874af",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 239,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beca8a393d6fdfc99be874afdc86ed1d7ad846c9a5bdc36654020ab31621f0ec",
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

Occurrence: `result:416b2445-ff81-ad1c-41a2-69477e7538ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellEnergy_from_amplitude {T amplitude : ℝ} (_hT : chosenWidth ≤ T)
    (hamp : 0 ≤ amplitude)
    (hneg : ∀ u ∈ Icc (T-terminalWidth) T,
      HorizonShell.horizonWave chosenWidth T u ≤ -amplitude) :
    amplitude^2*terminalWidth ≤ shellEnergy chosenWidth T := by
  have hw : 0 ≤ terminalWidth := (div_pos binWidth_positive (by norm_num)).le
  have hwb : terminalWidth ≤ chosenWidth := by
    dsimp only [terminalWidth,binWidth,chosenWidth]
    linarith [Real.log_pos (show (1:ℝ)<2 by norm_num)]
  have hi := HorizonShell.horizonWave_square_integrable chosenWidth T
  have hconst : IntegrableOn (fun _u : ℝ => amplitude^2) (Icc (T-terminalWidth) T) :=
    continuous_const.integrableOn_Icc
  calc
    _ = ∫ _u : ℝ in Icc (T-terminalWidth) T, amplitude^2 := by
      rw [setIntegral_const,Real.volume_real_Icc_of_le (by linarith)]
      simp only [smul_eq_mul]
      ring
    _ ≤ ∫ u : ℝ in Icc (T-terminalWidth) T,
        HorizonShell.horizonWave chosenWidth T u^2 := by
      apply setIntegral_mono_on hconst hi.integrableOn measurableSet_Icc
      intro u hu
      have hn := hneg u hu
      nlinarith
    _ ≤ ∫ u : ℝ in Icc (T-chosenWidth) T,
        HorizonShell.horizonWave chosenWidth T u^2 :=
      setIntegral_mono_set hi.integrableOn (Eventually.of_forall (fun _ => sq_nonneg _))
        (Eventually.of_forall (fun _ hu => ⟨by linarith [hu.1],hu.2⟩))
    _ = _ := rfl

/-- Unconditional controlled-horizon growth of the actual signed shell waveform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
