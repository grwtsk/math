# graded_blockSeries_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d243a742-27a0-c36f-75a0-a4e7c2d73891",
  "kind": "theorem",
  "lexical_name": "graded_blockSeries_differentiableOn",
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
  "slug": "graded-blockseries-differentiableon--e0cf7286383c055171cf4459",
  "source": {
    "blob": "2f36b892e40998d0c900fb474617b9677ae19e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 247,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0cf7286383c055171cf44590a5f8563aeb9ad9a4a2912aefccecdd086d6c74e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d243a742-27a0-c36f-75a0-a4e7c2d73891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graded_blockSeries_differentiableOn
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ) :
    DifferentiableOn ℂ blockSeries (rightHalfPlane ρ) := by
  intro s hs
  change ρ < s.re at hs
  let σ : ℝ := (s.re + ρ) / 2
  let M : ℝ := ‖s‖ + 1
  let U : Set ℂ :=
    {z : ℂ | σ < z.re ∧ ‖z‖ < M}
  have hσ : ρ < σ := by
    dsimp [σ]
    linarith [hs]
  have hM : 0 ≤ M := by
    dsimp [M]
    positivity
  have hsU : s ∈ U := by
    constructor
    · dsimp [σ]
      linarith [hs]
    · dsimp [M]
      linarith
  have hU : IsOpen U :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt continuous_norm continuous_const)
  obtain ⟨u, hu, hu0, hbound⟩ :=
    graded_uniform_majorant hE hσ hM
  have hsum :
      DifferentiableOn ℂ
        (fun z =>
          ∑' j,
            dirichletBlock (dyadicScale j) z)
        U := by
    apply Complex.differentiableOn_tsum_of_summable_norm
      hu
      (fun j =>
        (dirichletBlock_differentiable
          (dyadicScale_pos j)).differentiableOn)
      hU
    intro j z hz
    exact hbound j z hz.1.le hz.2.le
  have hfinite :=
    dirichletBlock_differentiable
      (X := 1) (by omega) s
  have htail :=
    hsum.differentiableAt (hU.mem_nhds hsU)
  exact (hfinite.add htail).differentiableWithinAt

/-- Graded analytic-continuation contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f36b892e40998d0c900fb474617b9677ae19e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
