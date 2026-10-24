# actualNormalizedMangoldtExpReadout_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f47a5f5e-1584-834b-7249-e0b9c4bd3c86",
  "kind": "theorem",
  "lexical_name": "actualNormalizedMangoldtExpReadout_eq_convolution",
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
  "slug": "actualnormalizedmangoldtexpreadout-eq-convolution--3dcd306b0e899596e5bdfc22",
  "source": {
    "blob": "6e6127286d1c1deebbd085e6066b16213b145cd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Varianta8fc4e7de963ddf308f4225d07c9fce8e974ce12d4fffd2ca6ea3472934a3362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dcd306b0e899596e5bdfc2211cf67c6e68c9b8738b052d5add7d99fc96c8aa1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Varianta8fc4e7de963ddf308f4225d07c9fce8e974ce12d4fffd2ca6ea3472934a3362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f47a5f5e-1584-834b-7249-e0b9c4bd3c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNormalizedMangoldtExpReadout_eq_convolution {lam t : ℝ}
    (hlam : lam ≠ 0) (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout lam t = actualCenteredMangoldtLogError t + 1 / lam -
      lam * actualMangoldtErrorConvolution lam t -
        (Real.eulerMascheroniConstant + 1 / lam) * Real.exp (-lam * t) := by
  let f : ℝ → ℝ := fun r => Real.exp (lam * r)
  have hd : deriv f = fun r => lam * Real.exp (lam * r) := by
    funext r
    have he := exp_hasDerivAt lam 0 r
    simpa only [sub_zero] using he.deriv
  have ha := mangoldtLogSum_abel t ht f (by unfold f; fun_prop)
  have hW := prefix_intervalIntegrable ht
  have hFe := actualMangoldtErrorConvolution_intervalIntegrable lam ht
  have hre : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have he : IntervalIntegrable (fun r : ℝ => Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have hI : (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) =
      actualMangoldtErrorConvolution lam t +
        (∫ r in 0..t, r * Real.exp (lam * (r - t))) -
          Real.eulerMascheroniConstant * (∫ r in 0..t, Real.exp (lam * (r - t))) := by
    unfold actualMangoldtErrorConvolution
    rw [← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hFe hre,
      ← intervalIntegral.integral_sub (hFe.add hre) (he.const_mul _)]
    apply intervalIntegral.integral_congr
    intro r _
    unfold actualCenteredMangoldtLogError mangoldtLogError
    ring
  have hex : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  have hmul : Real.exp (-lam * t) *
      (∫ r in 0..t, mangoldtLogPrefix r * deriv f r) =
      lam * (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) := by
    rw [hd, ← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro r _
    have hr : Real.exp (-lam * t) * Real.exp (lam * r) = Real.exp (lam * (r - t)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = lam * mangoldtLogPrefix r *
          (Real.exp (-lam * t) * Real.exp (lam * r)) := by ring
      _ = _ := by rw [hr]; ring
  unfold actualNormalizedMangoldtExpReadout
  rw [ha]
  change Real.exp (-lam * t) * (Real.exp (lam * t) * mangoldtLogPrefix t - _) = _
  rw [mul_sub, ← mul_assoc, hex, one_mul, hmul, hI,
    exponential_mass lam t hlam, exponential_first_moment lam t hlam]
  unfold actualCenteredMangoldtLogError mangoldtLogError
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Varianta8fc4e7de963ddf308f4225d07c9fce8e974ce12d4fffd2ca6ea3472934a3362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Varianta8fc4e7de963ddf308f4225d07c9fce8e974ce12d4fffd2ca6ea3472934a3362.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6127286d1c1deebbd085e6066b16213b145cd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
