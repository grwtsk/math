# eta_eq_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a04a3dff-1dff-9f58-10d2-b363f65b5fcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea6a13a3-8783-0a88-102a-22ee5e22fc5f",
  "kind": "theorem",
  "lexical_name": "eta_eq_zeta",
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
  "slug": "eta-eq-zeta--beadccd5dae1f6c5f1d44f71",
  "source": {
    "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 160,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beadccd5dae1f6c5f1d44f7173ed7b708d57dbc76e793a8e6bc4d7eb76d52608",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea6a13a3-8783-0a88-102a-22ee5e22fc5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eta_eq_zeta {z : ℂ} (hz : 0 < z.re) (hz1 : z ≠ 1) :
    eta z = (1 - (2 : ℂ) ^ (1 - z)) * riemannZeta z := by
  let U : Set ℂ := {w | 0 < w.re}
  have hU : IsOpen U := isOpen_lt continuous_const continuous_re
  have hleft : AnalyticOnNhd ℂ (fun w ↦ w * (w - 1) * eta w) U := by
    apply DifferentiableOn.analyticOnNhd _ hU
    intro w hw
    exact ((differentiableAt_id.mul (differentiableAt_id.sub_const 1)).mul
      (differentiableAt_eta hw)).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ
      (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) U := by
    have hd : Differentiable ℂ
        (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) :=
      (((differentiable_id.const_sub 1).const_cpow (Or.inl (by norm_num))).const_sub 1).mul
        differentiable_regularizedZeta
    exact fun w _ ↦ hd.analyticAt w
  have heq := hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected (show (2 : ℂ) ∈ U by norm_num [U])
    (show (fun w ↦ w * (w - 1) * eta w) =ᶠ[𝓝 (2 : ℂ)]
      (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) from ?_)
    (show z ∈ U from hz)
  · dsimp only at heq
    rw [regularizedZeta_eq (ne_zero_of_re_pos hz) hz1] at heq
    have hcancel : z * (z - 1) ≠ 0 := mul_ne_zero (ne_zero_of_re_pos hz) (sub_ne_zero.mpr hz1)
    apply mul_left_cancel₀ hcancel
    linear_combination heq
  · have hV : {w : ℂ | 1 < w.re} ∈ 𝓝 (2 : ℂ) :=
      (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
    filter_upwards [hV] with w hw
    rw [eta_eq_zeta_of_one_lt_re hw, regularizedZeta_eq (ne_zero_of_one_lt_re hw)
      (by intro hw1; simp [hw1] at hw)]
    ring

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

/-- The complex pair specializes exactly to the frozen real paired numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ea260fef4099d6dcf145b8d40f40088d18075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
