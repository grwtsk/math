# norm_greenDiscretePhaseRiemannSum_le_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a99f6bb2-97f1-9496-a6fa-961098269a3a",
  "kind": "theorem",
  "lexical_name": "norm_greenDiscretePhaseRiemannSum_le_residue",
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
  "slug": "norm-greendiscretephaseriemannsum-le-residue--34fbf4d88aa7382e16767f2a",
  "source": {
    "blob": "db187e03608f5f43f20638805a50f0d3e982ee88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34fbf4d88aa7382e16767f2a394c0e3013adb14220bc6a8083f8d9102b7175d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99f6bb2-97f1-9496-a6fa-961098269a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenDiscretePhaseRiemannSum_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k)
    (hr : R.r ≠ 0) :
    ‖greenDiscretePhaseRiemannSum X k‖ ≤
      1 / (2 * |(R.r : ℝ)|) := by
  unfold greenDiscretePhaseRiemannSum
  have hphase := norm_greenMesh_weighted_phase_sum_le_residue hX R hr
  have hrewrite :
      (∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          (fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
            (1 + (greenRightMeshPoint X j : ℂ)))) =
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        ∑ j ∈ Finset.Icc 1 X,
          (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    rw [fourier_mesh_eq_phase_pow hX]
    unfold greenMeshWeight greenRightMeshPoint
    push_cast
    ring
  rw [hrewrite, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (X : ℝ))]
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  calc
    (1 / (X : ℝ)) *
        ‖∑ j ∈ Finset.Icc 1 X,
          (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j‖ ≤
      (1 / (X : ℝ)) * ((X : ℝ) / (2 * |(R.r : ℝ)|)) :=
        mul_le_mul_of_nonneg_left hphase (by positivity)
    _ = 1 / (2 * |(R.r : ℝ)|) := by
      field_simp
      ring

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db187e03608f5f43f20638805a50f0d3e982ee88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
