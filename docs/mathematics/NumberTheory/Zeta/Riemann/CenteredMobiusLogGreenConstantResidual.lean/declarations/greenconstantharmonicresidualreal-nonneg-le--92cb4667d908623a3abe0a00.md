# greenConstantHarmonicResidualReal_nonneg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f8597ae-588e-ba38-02e4-90319263df5c",
  "kind": "theorem",
  "lexical_name": "greenConstantHarmonicResidualReal_nonneg_le",
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
  "slug": "greenconstantharmonicresidualreal-nonneg-le--92cb4667d908623a3abe0a00",
  "source": {
    "blob": "19deb489e4896b0560fb41a9b47e3e30bf038728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92cb4667d908623a3abe0a00823d5b48267754cf875cf04db00b0513247439e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f8597ae-588e-ba38-02e4-90319263df5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenConstantHarmonicResidualReal_nonneg_le
    {X : ℕ} (hX : 1 ≤ X) :
    0 ≤ greenConstantHarmonicResidualReal X ∧
      greenConstantHarmonicResidualReal X ≤ 1 / (2 * (X : ℝ)) := by
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  -- Rescale t=u/X. The right-endpoint sum is the antitone right sum
  -- for u ↦ 1/(X+u), while the left sum differs by exactly
  -- (1/X) * (g(0)-g(1)) = 1/(2X).
  let g : ℝ → ℝ := fun u => 1 / ((X : ℝ) + u)
  have hg : AntitoneOn g (Set.Icc (0 : ℝ) X) := by
    intro a ha b hb hab
    dsimp [g]
    exact one_div_le_one_div_of_le (by linarith) (by linarith)
  have hright :=
    hg.sum_le_integral_Ico (a := 0) (b := X) (by omega)
  have hleft :=
    hg.integral_le_sum_Ico (a := 0) (b := X) (by omega)
  -- Convert the scaled integral and the two integer sums back to the
  -- original mesh. The gap between left and right sums telescopes.
  have hgap :
      (∑ j ∈ Finset.range X, g j) -
        (∑ j ∈ Finset.range X, g (j + 1)) =
      1 / (X : ℝ) - 1 / (2 * (X : ℝ)) := by
    rw [Finset.sum_range_sub_sum_range_add_one]
    dsimp [g]
    norm_num
    field_simp
    ring
  unfold greenConstantHarmonicResidualReal
  have hscale :
      (∫ t in (0 : ℝ)..1, reciprocalOnePlus t) =
        ∫ u in (0 : ℝ)..(X : ℝ), g u := by
    rw [← intervalIntegral.integral_comp_mul_deriv
      (f := reciprocalOnePlus) (a := (0 : ℝ)) (b := 1)
      (c := (0 : ℝ)) (d := (X : ℝ))]
    · simp [g, reciprocalOnePlus]
      field_simp
      ring
    · positivity
  rw [hscale]
  have hsum :
      (∑ j ∈ Finset.Icc 1 X,
        (1 / (X : ℝ)) * reciprocalOnePlus (greenRightMeshPoint X j)) =
      ∑ j ∈ Finset.range X, g (j + 1) := by
    rw [Finset.sum_Icc_eq_sum_range]
    apply Finset.sum_congr rfl
    intro j hj
    simp [g, reciprocalOnePlus, greenRightMeshPoint]
    field_simp
    ring
  rw [hsum]
  constructor
  · linarith
  · linarith [hgap]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenConstantResidual.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19deb489e4896b0560fb41a9b47e3e30bf038728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
