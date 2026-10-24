# thetaGaussianSum_poly_norm_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00b3f641-c2fe-0fa4-bade-927908a84399",
  "kind": "theorem",
  "lexical_name": "thetaGaussianSum_poly_norm_le_tail",
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
  "slug": "thetagaussiansum-poly-norm-le-tail--633b4d7c3e6a14962be9738e",
  "source": {
    "blob": "36e39e1db8c72be2e2559aac7ad0ce96d2575d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633b4d7c3e6a14962be9738e54deff3363c66cda4689a275f7bb9693aa3bc310",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b3f641-c2fe-0fa4-bade-927908a84399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianSum_poly_norm_le_tail (k c p : ℕ) {t : ℝ}
    (ht : (c : ℝ) + 3 ≤ t) :
    ‖thetaGaussianSum k c t * t ^ p‖ ≤
      (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) * Real.exp (-t) := by
  have ht0 : 0 ≤ t := (by positivity : (0 : ℝ) ≤ (c : ℝ) + 3).trans ht
  have hC : 0 ≤ HurwitzKernelBounds.F_nat k 1 (1 / 2) := by
    unfold HurwitzKernelBounds.F_nat
    exact tsum_nonneg (fun m => by unfold HurwitzKernelBounds.f_nat; positivity)
  have hmul : ((c : ℝ) + 2) * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by nlinarith [Real.pi_gt_three]
  have hdebt : ((c : ℝ) + 2) * t ≤ (Real.pi / 2) * Real.exp (4 * t) :=
    hmul.trans <| hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])
  have hpow : t ^ p ≤ (p.factorial : ℝ) * Real.exp t := by
    have h := Real.pow_div_factorial_le_exp t ht0 p
    have hfac : (0 : ℝ) < p.factorial := by positivity
    nlinarith [(div_le_iff₀ hfac).mp h]
  rw [Real.norm_of_nonneg (mul_nonneg (thetaGaussianSum_nonneg k c t) (pow_nonneg ht0 p))]
  calc
    _ ≤ (HurwitzKernelBounds.F_nat k 1 (1 / 2) *
        Real.exp ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t))) *
        ((p.factorial : ℝ) * Real.exp t) :=
      mul_le_mul (thetaGaussianSum_le_superexp k c ht0) hpow (by positivity) (by positivity)
    _ = (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) *
        Real.exp (((c : ℝ) + 1) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [show ((c : ℝ) + 1) * t - (Real.pi / 2) * Real.exp (4 * t) =
        ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t)) + t by ring, Real.exp_add]
      ring
    _ ≤ _ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Real.exp_le_exp.mpr
      linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e39e1db8c72be2e2559aac7ad0ce96d2575d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
