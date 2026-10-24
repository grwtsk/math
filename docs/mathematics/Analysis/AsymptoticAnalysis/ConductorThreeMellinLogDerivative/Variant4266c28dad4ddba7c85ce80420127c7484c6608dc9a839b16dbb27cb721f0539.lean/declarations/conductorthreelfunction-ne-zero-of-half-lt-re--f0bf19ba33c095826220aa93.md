# conductorThreeLFunction_ne_zero_of_half_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78d222d2-e077-b8f8-b883-0b77eaa45b63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba06fe37-92b9-f89b-807c-496b4acec3ed",
  "kind": "theorem",
  "lexical_name": "conductorThreeLFunction_ne_zero_of_half_lt_re",
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
  "slug": "conductorthreelfunction-ne-zero-of-half-lt-re--f0bf19ba33c095826220aa93",
  "source": {
    "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 300,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0bf19ba33c095826220aa93ce22bed70f1a6d7ef0732be887f3ab82c0d67006",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba06fe37-92b9-f89b-807c-496b4acec3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeLFunction_ne_zero_of_half_lt_re
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ}
    (hs : (1 / 2 : ℝ) < s.re) :
    DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 := by
  intro hLs
  let L : ℂ → ℂ :=
    DirichletCharacter.LFunction conductorThreeCharacter
  let F : ℂ → ℂ := conductorThreeMellinLogDerivative
  have hsU : s ∈ conductorThreeCriticalRightHalfPlane := hs
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp
    isOpen_conductorThreeCriticalRightHalfPlane s hsU
  have hF : DifferentiableOn ℂ F (Metric.ball s r) :=
    (differentiableOn_conductorThreeMellinLogDerivative hHalf).mono hball
  obtain ⟨P, hPs, hP⟩ := hF.isExactOn_ball.with_val_at s (0 : ℂ)
  let H : ℂ → ℂ := fun z ↦ Complex.exp (P z) * L z
  have hPdiff : DifferentiableOn ℂ P (Metric.ball s r) := by
    intro z hz
    exact (hP z hz).differentiableAt.differentiableWithinAt
  have hLglobal : Differentiable ℂ L :=
    DirichletCharacter.differentiable_LFunction
      conductorThreeCharacter_ne_one
  have hHdiff : DifferentiableOn ℂ H (Metric.ball s r) := by
    exact hPdiff.cexp.mul hLglobal.differentiableOn
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball s r) := by
    intro z hz
    have hpz := hP z hz
    have hlz := (hLglobal z).hasDerivAt
    have hprod := hpz.cexp.mul hlz
    change deriv ((fun z ↦ Complex.exp (P z)) * L) z = 0
    rw [hprod.deriv]
    have hODE := conductorThreeLogDerivativeResidual_eq_zero hHalf (hball hz)
    change deriv L z + F z * L z = 0 at hODE
    calc
      Complex.exp (P z) * F z * L z +
          Complex.exp (P z) * deriv L z =
          Complex.exp (P z) * (deriv L z + F z * L z) := by ring
      _ = 0 := by rw [hODE, mul_zero]
  have hHs : H s = 0 := by
    simp [H, L, hLs]
  have hH_zero : ∀ z ∈ Metric.ball s r, H z = 0 := by
    intro z hz
    have hconst := (Metric.isOpen_ball : IsOpen (Metric.ball s r)).is_const_of_deriv_eq_zero
      Metric.isPreconnected_ball hHdiff hHderiv hz (Metric.mem_ball_self hr)
    exact hconst.trans hHs
  have hL_zero : ∀ z ∈ Metric.ball s r, L z = 0 := by
    intro z hz
    have h := hH_zero z hz
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P z))
  have hEventually : L =ᶠ[nhds s] (fun _ : ℂ ↦ (0 : ℂ)) := by
    filter_upwards [Metric.ball_mem_nhds s hr] with z hz
    exact hL_zero z hz
  have hLAnalytic : AnalyticOnNhd ℂ L (Set.univ : Set ℂ) :=
    hLglobal.differentiableOn.analyticOnNhd isOpen_univ
  have hZeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      (Set.univ : Set ℂ) := analyticOnNhd_const
  have hEverywhere := hLAnalytic.eqOn_of_preconnected_of_eventuallyEq
    hZeroAnalytic isPreconnected_univ (show s ∈ (Set.univ : Set ℂ) by simp)
      hEventually
  have hAtTwo : L (2 : ℂ) = 0 := hEverywhere (by simp)
  have hTwoNe : L (2 : ℂ) ≠ 0 := by
    exact DirichletCharacter.LFunction_ne_zero_of_one_le_re
      conductorThreeCharacter (.inl conductorThreeCharacter_ne_one) (by norm_num)
  exact hTwoNe hAtTwo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5361e98c4071e3b529b7d774f0b91017bbe2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
