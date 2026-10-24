# actualContinuousLogProfile_eq_volterra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f154e2d-431b-c65e-9455-40144a6c5b8f",
  "kind": "theorem",
  "lexical_name": "actualContinuousLogProfile_eq_volterra",
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
  "slug": "actualcontinuouslogprofile-eq-volterra--29b37feb0bb4d6f1a769ab41",
  "source": {
    "blob": "a0be1b39013e109af9f37003ef8bd36145e42fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b37feb0bb4d6f1a769ab4127b6eb31d6e26b7b7227f64dcd53470508d836bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f154e2d-431b-c65e-9455-40144a6c5b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualContinuousLogProfile_eq_volterra (A x : ℝ) (hA : 1 ≤ A)
    (hx0 : -A ≤ x) (hxA : x ≤ A) :
    actualContinuousLogProfile A x =
      bumpInterior A x / Real.sqrt (sourceNormalization A) +
      Real.exp (-x/2) * ∫ y in x..A,
        Real.exp (y/2) * (bumpInterior A y / Real.sqrt (sourceNormalization A)) := by
  let Z := Real.sqrt (sourceNormalization A)
  let f : ℝ → ℝ := fun y => bumpInterior A y / Z
  let g : ℝ → ℝ := fun y => firstInterior A y / Z
  let e : ℝ → ℝ := fun y => secondInterior A y / Z
  let J : ℝ → ℝ := fun y => Real.exp (y/2)*f y
  let F : ℝ → ℝ := fun y => Real.exp (y/2)*(g y-f y/2)
  let R : ℝ → ℝ := fun y => (y-x)*F y
  let E : ℝ → ℝ := fun y => Real.exp (y/2)*normalizedInterior A y
  have hf : Continuous f := (bumpInterior_continuous A).div_const _
  have hg : Continuous g := (firstInterior_continuous A).div_const _
  have he : Continuous e := (secondInterior_continuous A).div_const _
  have hJ : Continuous J := by dsimp [J]; fun_prop
  have hF : Continuous F := by dsimp [F]; fun_prop
  have hNI : Continuous (normalizedInterior A) := by
    unfold normalizedInterior
    exact ((secondInterior_continuous A).sub
      ((bumpInterior_continuous A).div_const 4)).div_const _
  have hE : Continuous E := by dsimp [E]; fun_prop
  have hRE : Continuous (fun y => (y-x)*E y) :=
    (continuous_id.sub continuous_const).mul hE
  have hJ' (y : ℝ) : HasDerivAt J (F y+J y) y := by
    have h := (((hasDerivAt_id y).div_const 2).exp).mul
      ((bumpInterior_hasDerivAt A y).div_const Z)
    convert! h using 1
    dsimp [J, F, f, g]
    ring
  have hF' (y : ℝ) : HasDerivAt F (E y) y := by
    have h := (((hasDerivAt_id y).div_const 2).exp).mul
      (((firstInterior_hasDerivAt A y).div_const Z).sub
        (((bumpInterior_hasDerivAt A y).div_const Z).div_const 2))
    convert! h using 1
    dsimp [F, E, f, g, normalizedInterior]
    ring
  have hR' (y : ℝ) : HasDerivAt R (F y+(y-x)*E y) y := by
    have h := ((hasDerivAt_id y).sub_const x).mul (hF' y)
    convert! h using 1
    dsimp [R]
    ring
  have hJint := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun y _ => hJ' y)
    ((hF.add hJ).intervalIntegrable x A)
  have hRint := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun y _ => hR' y)
    ((hF.add ((continuous_id.sub continuous_const).mul hE)).intervalIntegrable x A)
  have hb := bumpInterior_endpoints A (by linarith : A ≠ 0)
  have hd := firstInterior_endpoints A (by linarith : A ≠ 0)
  have hJA : J A = 0 := by simp [J, f, hb.2]
  have hRA : R A = 0 := by simp [R, F, f, g, hb.2, hd.2]
  have hRx : R x = 0 := by simp [R]
  rw [hJA, intervalIntegral.integral_add (hF.intervalIntegrable _ _)
    (hJ.intervalIntegrable _ _)] at hJint
  rw [hRA, hRx, intervalIntegral.integral_add (hF.intervalIntegrable _ _)
    (hRE.intervalIntegrable _ _)] at hRint
  have hcalc : (∫ y in x..A, (y-x)*E y) = J x + ∫ y in x..A, J y := by
    linear_combination hRint-hJint
  have hbody : actualContinuousLogProfile A x =
      Real.exp (-x/2) * (∫ y in x..A, (y-x)*E y) := by
    unfold actualContinuousLogProfile
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro y hy
    rw [uIcc_of_le hxA] at hy
    rw [interior_agreement A y hA ⟨hx0.trans hy.1,hy.2⟩]
    dsimp [E]
    rw [show (y-x)/2 = -x/2+y/2 by ring, Real.exp_add]
    ring
  rw [hbody, hcalc, mul_add]
  change Real.exp (-x/2)*(Real.exp (x/2)*f x) +
      Real.exp (-x/2)*(∫ y in x..A, J y) = _
  have hex : Real.exp (-x/2)*Real.exp (x/2) = 1 := by
    rw [← Real.exp_add]; ring_nf; exact Real.exp_zero
  rw [← mul_assoc, hex, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0be1b39013e109af9f37003ef8bd36145e42fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
