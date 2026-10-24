# primeHarmonicPrefix_centered_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac39062e-57af-448a-2257-95895ff09be9",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_centered_abel",
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
  "slug": "primeharmonicprefix-centered-abel--efdce46a7dbd26943486e434",
  "source": {
    "blob": "01e1897af4f1a4620ac672d6d9e761548f91fa4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantef1673ef01d5050f2d91c749fe149aa12615fdc1116ae62ef661e3f2e561752a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efdce46a7dbd26943486e4340265519693092e1da682b05677ff31719405e959",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantef1673ef01d5050f2d91c749fe149aa12615fdc1116ae62ef661e3f2e561752a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac39062e-57af-448a-2257-95895ff09be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_centered_abel (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g))
    (hgz : g A = 0) (hg0 : g 0 = 1) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
      (∫ u in 0..A, g u) + thetaConstant -
        ∫ u in 0..A, thetaRemainder u * deriv g u := by
  have hid : IntervalIntegrable (fun u : ℝ ↦ u * deriv g u) volume 0 A :=
    (continuous_id.mul hgd).intervalIntegrable 0 A
  have hic : IntervalIntegrable (fun u : ℝ ↦ thetaConstant * deriv g u) volume 0 A :=
    (continuous_const.mul hgd).intervalIntegrable 0 A
  have hir := thetaRemainder_mul_intervalIntegrable A hA (deriv g) hgd
  have hsplit : (∫ u in 0..A, primeHarmonicPrefix u * deriv g u) =
      (∫ u in 0..A, u * deriv g u) +
      thetaConstant * (∫ u in 0..A, deriv g u) +
      ∫ u in 0..A, thetaRemainder u * deriv g u := by
    calc
      _ = ∫ u in 0..A,
          (u * deriv g u + thetaConstant * deriv g u) + thetaRemainder u * deriv g u := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hA] at hu
        dsimp only
        rw [primeHarmonicPrefix_centered u hu.1]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_add (hid.add hic) hir,
          intervalIntegral.integral_add hid hic, intervalIntegral.integral_const_mul]
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := (0 : ℝ)) (b := A) continuous_id.continuousOn hg.continuous.continuousOn
    (fun u _ ↦ hasDerivAt_id u) (fun u _ ↦ (hg u).hasDerivAt)
    intervalIntegrable_const (hgd.intervalIntegrable 0 A)
  simp only [id_eq, hgz, hg0, mul_zero, zero_mul, sub_zero, zero_sub, one_mul] at hparts
  have hd : (∫ u in 0..A, deriv g u) = -1 := by
    rw [intervalIntegral.integral_deriv_eq_sub (fun u _ ↦ hg u)
      (hgd.intervalIntegrable 0 A), hgz, hg0]
    norm_num
  rw [primeHarmonicPrefix_weighted_abel A hA g hg hgd hgz, hsplit, hparts, hd]
  ring

/-- Exact prime-square weighted summation for the actual normalized source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantef1673ef01d5050f2d91c749fe149aa12615fdc1116ae62ef661e3f2e561752a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantef1673ef01d5050f2d91c749fe149aa12615fdc1116ae62ef661e3f2e561752a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e1897af4f1a4620ac672d6d9e761548f91fa4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
