# augmentedEnergy_le_of_cumulative_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:353a161e-edef-d0df-f06c-f6b5c2177b97",
  "kind": "theorem",
  "lexical_name": "augmentedEnergy_le_of_cumulative_uniform",
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
  "slug": "augmentedenergy-le-of-cumulative-uniform--424469fe7aa2bf98ac72ee7d",
  "source": {
    "blob": "c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:424469fe7aa2bf98ac72ee7d0add9a27a59f3cf4fc53cf5dae5d0769d13d8df1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:353a161e-edef-d0df-f06c-f6b5c2177b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem augmentedEnergy_le_of_cumulative_uniform
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 ≤ B)
    (hC : ∀ t ∈ Set.Icc (0 : ℝ) 1,
      |cumulative X t| ≤ B) :
    augmentedEnergy X ≤ 6 * B^2 := by
  have hraw :
      (∫ t, cumulative X t^2 ∂unitVolume) ≤ B^2 := by
    change (∫ t in Set.Icc (0 : ℝ) 1, cumulative X t^2) ≤ B^2
    calc
      (∫ t in Set.Icc (0 : ℝ) 1, cumulative X t^2)
          ≤ ∫ _t in Set.Icc (0 : ℝ) 1, B^2 := by
        apply setIntegral_mono_on
        · exact cumulative_square_integrable X
        · exact integrableOn_const (hs := by simp)
        · exact measurableSet_Icc
        · intro t ht
          have habs := hC t ht
          rw [sq_le_sq]
          simpa [abs_of_nonneg hB] using habs
      _ = B^2 := by
        simp
  have hgreen :
      greenEnergy X ≤ B^2 := by
    have hid := raw_cumulative_energy hX
    nlinarith [sq_nonneg (GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.center X)]
  have hm0abs :
      |mass0 X| ≤ B := by
    rw [← cumulative_one_eq_mass0 hX]
    exact hC 1 (by norm_num)
  have hm0sq :
      (mass0 X)^2 ≤ B^2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hB] using hm0abs
  have hcenterabs :
      |GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.center X| ≤ B := by
    rw [← integral_cumulative hX]
    have hnorm0 :
        ‖∫ t, cumulative X t ∂unitVolume‖ ≤
          B * unitVolume.real Set.univ := by
      apply norm_integral_le_of_norm_le_const
      change ∀ᵐ t ∂volume.restrict (Set.Icc (0 : ℝ) 1),
        ‖cumulative X t‖ ≤ B
      filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
      simpa [Real.norm_eq_abs] using hC t ht
    have hnorm :
        ‖∫ t, cumulative X t ∂unitVolume‖ ≤ B := by
      simpa using hnorm0
    simpa [Real.norm_eq_abs] using hnorm
  have hm1abs :
      |mass1 X| ≤ 2 * B := by
    have hid : mass1 X = mass0 X - GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.center X := by
      unfold GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.center
      ring
    rw [hid]
    exact (abs_sub _ _).trans (by linarith)
  have hm1sq :
      (mass1 X)^2 ≤ 4 * B^2 := by
    have h2B : 0 ≤ 2 * B := by positivity
    have hs :
        (mass1 X)^2 ≤ (2 * B)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg h2B] using hm1abs
    nlinarith
  unfold augmentedEnergy
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
