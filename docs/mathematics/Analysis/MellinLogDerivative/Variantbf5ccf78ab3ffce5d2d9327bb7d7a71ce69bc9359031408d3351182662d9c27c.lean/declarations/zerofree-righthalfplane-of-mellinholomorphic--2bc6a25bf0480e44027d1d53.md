# zeroFree_rightHalfPlane_of_mellinHolomorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ad20deb7be8627218d474dbd128ee8fb404071a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2b15ba8-0991-ae31-2f00-0afcf36257aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2212288-2c5c-3177-bb94-3d60a56a91e2",
  "kind": "theorem",
  "lexical_name": "zeroFree_rightHalfPlane_of_mellinHolomorphic",
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
  "slug": "zerofree-righthalfplane-of-mellinholomorphic--2bc6a25bf0480e44027d1d53",
  "source": {
    "blob": "5ad20deb7be8627218d474dbd128ee8fb404071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 176,
    "path": "GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc6a25bf0480e44027d1d5337cc017b2414292262f7fec00931a4e2290bf5ee",
  "verification": {
    "reference": "docs/verification/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2212288-2c5c-3177-bb94-3d60a56a91e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroFree_rightHalfPlane_of_mellinHolomorphic
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  intro s hsHalf hsOne hLs
  have hFs : square.regularizedL s = 0 :=
    (square.regularizedL_zero_iff_LFunction_zero s (by linarith) hsOne).2 hLs
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp
    isOpen_criticalRightHalfPlane s hsHalf
  have hMellin : DifferentiableOn ℂ square.mellin (Metric.ball s r) :=
    (square.mellin_differentiableOn hBound).mono hball
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ square.mellin z + dirichletPrincipalIndicator χ)
      (Metric.ball s r) := hMellin.add (by fun_prop)
  obtain ⟨P, _hPs, hP⟩ := hCoefficient.isExactOn_ball.with_val_at s (0 : ℂ)
  let H : ℂ → ℂ := fun z ↦ Complex.exp (P z) * square.regularizedL z
  have hPdiff : DifferentiableOn ℂ P (Metric.ball s r) := by
    intro z hz
    exact (hP z hz).differentiableAt.differentiableWithinAt
  have hHdiff : DifferentiableOn ℂ H (Metric.ball s r) :=
    hPdiff.cexp.mul square.regularizedL_differentiable.differentiableOn
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball s r) := by
    intro z hz
    have hpz := hP z hz
    have hlz := (square.regularizedL_differentiable z).hasDerivAt
    have hprod := hpz.cexp.mul hlz
    change deriv ((fun z ↦ Complex.exp (P z)) * square.regularizedL) z = 0
    rw [hprod.deriv]
    have hODE := square.residual_eq_zero hBound (hball hz)
    change deriv square.regularizedL z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        square.regularizedL z = 0 at hODE
    calc
      Complex.exp (P z) *
          (square.mellin z + dirichletPrincipalIndicator χ) *
            square.regularizedL z +
          Complex.exp (P z) * deriv square.regularizedL z =
          Complex.exp (P z) *
            (deriv square.regularizedL z +
              (square.mellin z + dirichletPrincipalIndicator χ) *
                square.regularizedL z) := by ring
      _ = 0 := by rw [hODE, mul_zero]
  have hHs : H s = 0 := by simp [H, hFs]
  have hH_zero : ∀ z ∈ Metric.ball s r, H z = 0 := by
    intro z hz
    have hconst :=
      (Metric.isOpen_ball : IsOpen (Metric.ball s r)).is_const_of_deriv_eq_zero
        Metric.isPreconnected_ball hHdiff hHderiv hz (Metric.mem_ball_self hr)
    exact hconst.trans hHs
  have hF_zero : ∀ z ∈ Metric.ball s r, square.regularizedL z = 0 := by
    intro z hz
    have h := hH_zero z hz
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P z))
  have hEventually : square.regularizedL =ᶠ[nhds s]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    filter_upwards [Metric.ball_mem_nhds s hr] with z hz
    exact hF_zero z hz
  have hLAnalytic : AnalyticOnNhd ℂ square.regularizedL (Set.univ : Set ℂ) :=
    square.regularizedL_differentiable.differentiableOn.analyticOnNhd isOpen_univ
  have hZeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      (Set.univ : Set ℂ) := analyticOnNhd_const
  have hEverywhere := hLAnalytic.eqOn_of_preconnected_of_eventuallyEq
    hZeroAnalytic isPreconnected_univ
      (show s ∈ (Set.univ : Set ℂ) by simp) hEventually
  have hAtTwo : square.regularizedL (2 : ℂ) = 0 := hEverywhere (by simp)
  exact square.regularizedL_ne_zero_of_one_lt_re (2 : ℂ) (by norm_num) hAtTwo

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ad20deb7be8627218d474dbd128ee8fb404071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
