# nowhereZero_of_deriv_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8ada8bb0b2c2b56ee03b576af2821f213a9b17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b28c7bdc-bb1d-7a68-54a9-d2d9566b06bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baf307f2-c924-72f2-878c-f816ef6c6946",
  "kind": "theorem",
  "lexical_name": "nowhereZero_of_deriv_eq_mul",
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
  "slug": "nowherezero-of-deriv-eq-mul--7d73ed37b9c117ae1517a10a",
  "source": {
    "blob": "ab8ada8bb0b2c2b56ee03b576af2821f213a9b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HolomorphicLinearODE/Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d73ed37b9c117ae1517a10ab37ba1c4665cd9163b22bcadb2a49b323d694152",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HolomorphicLinearODE/Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baf307f2-c924-72f2-878c-f816ef6c6946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nowhereZero_of_deriv_eq_mul
    {U : Set ℂ}
    (hUopen : IsOpen U)
    (hUconn : IsPreconnected U)
    (f g : ℂ → ℂ)
    (hf : DifferentiableOn ℂ f U)
    (hg : DifferentiableOn ℂ g U)
    (hODE : ∀ z ∈ U, deriv f z = g z * f z)
    (z₀ : ℂ)
    (hz₀ : z₀ ∈ U)
    (hf₀ : f z₀ ≠ 0) :
    ∀ z ∈ U, f z ≠ 0 := by
  intro z hz hfz
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp hUopen z hz
  have hnegG : DifferentiableOn ℂ (fun w ↦ -g w) (Metric.ball z r) :=
    (hg.mono hball).neg
  obtain ⟨P, _hPz, hP⟩ := hnegG.isExactOn_ball.with_val_at z (0 : ℂ)
  let H : ℂ → ℂ := fun w ↦ Complex.exp (P w) * f w
  have hPdiff : DifferentiableOn ℂ P (Metric.ball z r) := by
    intro w hw
    exact (hP w hw).differentiableAt.differentiableWithinAt
  have hHdiff : DifferentiableOn ℂ H (Metric.ball z r) :=
    hPdiff.cexp.mul (hf.mono hball)
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball z r) := by
    intro w hw
    have hpw := hP w hw
    have hfw :=
      (hf.differentiableAt (hUopen.mem_nhds (hball hw))).hasDerivAt
    have hprod := hpw.cexp.mul hfw
    change deriv ((fun w ↦ Complex.exp (P w)) * f) w = 0
    rw [hprod.deriv]
    rw [hODE w (hball hw)]
    ring
  have hHz : H z = 0 := by
    simp [H, hfz]
  have hH_zero : ∀ w ∈ Metric.ball z r, H w = 0 := by
    intro w hw
    have hconst :=
      (Metric.isOpen_ball : IsOpen (Metric.ball z r)).is_const_of_deriv_eq_zero
        Metric.isPreconnected_ball hHdiff hHderiv hw (Metric.mem_ball_self hr)
    exact hconst.trans hHz
  have hf_zero : ∀ w ∈ Metric.ball z r, f w = 0 := by
    intro w hw
    have h := hH_zero w hw
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P w))
  have hEventually : f =ᶠ[nhds z] (fun _ : ℂ ↦ 0) := by
    filter_upwards [Metric.ball_mem_nhds z hr] with w hw
    exact hf_zero w hw
  have hfAnalytic : AnalyticOnNhd ℂ f U :=
    hf.analyticOnNhd hUopen
  have hzeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ)) U :=
    analyticOnNhd_const
  have hEverywhere :=
    hfAnalytic.eqOn_of_preconnected_of_eventuallyEq
      hzeroAnalytic hUconn hz hEventually
  exact hf₀ (hEverywhere hz₀)

end

end Surface.Core.Analysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HolomorphicLinearODE/Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HolomorphicLinearODE/Variant5fc22c558a4b0aa67038198df1d47cfa0a19a56d040538e04a0dc003559d1029.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8ada8bb0b2c2b56ee03b576af2821f213a9b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
