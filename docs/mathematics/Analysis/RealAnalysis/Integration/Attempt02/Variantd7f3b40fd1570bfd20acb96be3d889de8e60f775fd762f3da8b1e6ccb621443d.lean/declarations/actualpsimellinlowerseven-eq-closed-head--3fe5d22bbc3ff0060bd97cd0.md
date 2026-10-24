# actualPsiMellinLowerSeven_eq_closed_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81dc9ea7-5d24-fff1-fc09-61b1fabb08f1",
  "kind": "theorem",
  "lexical_name": "actualPsiMellinLowerSeven_eq_closed_head",
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
  "slug": "actualpsimellinlowerseven-eq-closed-head--3fe5d22bbc3ff0060bd97cd0",
  "source": {
    "blob": "7f1f86f0a852642f4e7de63caca39d837e6b3d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantd7f3b40fd1570bfd20acb96be3d889de8e60f775fd762f3da8b1e6ccb621443d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe5d22bbc3ff0060bd97cd0bf8280f25425415258067e7e1d52382dbeb6fd3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variantd7f3b40fd1570bfd20acb96be3d889de8e60f775fd762f3da8b1e6ccb621443d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81dc9ea7-5d24-fff1-fc09-61b1fabb08f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiMellinLowerSeven_eq_closed_head {s : ℂ} (hs : 1 < s.re) :
    actualClosedMangoldtMellinHeadSeven s = (Chebyshev.psi 7 : ℂ) * (7 : ℂ) ^ (-s) +
      s * ∫ y in (1 : ℝ)..7, (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) := by
  let f : ℝ → ℂ := fun x => (x : ℂ) ^ (-s)
  let c : ℕ → ℂ := fun n => ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)
  have hf (x : ℝ) (hx : x ∈ Set.Icc (1 : ℝ) 7) : DifferentiableAt ℝ f x := by
    exact differentiableAt_id.ofReal_cpow_const
      (ne_of_gt (lt_of_lt_of_le (by norm_num) hx.1)) (neg_ne_zero.mpr (s_ne_zero hs))
  have hi : IntegrableOn (deriv f) (Set.Icc (1 : ℝ) 7) := by
    have hi0 := integrableOn_Ioi_deriv_ofReal_cpow (s := -s)
      (by norm_num : (0 : ℝ) < 1 / 2)
      (by simpa using (show -s.re < 0 by linarith))
    exact hi0.mono_set (fun x hx => by change 1 / 2 < x; linarith [hx.1])
  have ha := sum_mul_eq_sub_integral_mul₀ c (by simp [c]) (7 : ℝ) hf hi
  have he : (∫ y in Set.Ioc (1 : ℝ) 7, deriv f y * ∑ n ∈ Icc 0 (Nat.floor y), c n) =
      -s * ∫ y in (1 : ℝ)..7, (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) := by
    rw [intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ 7), ← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y hy
    dsimp only [f, c]
    rw [deriv_ofReal_cpow_const (ne_of_gt (by linarith [hy.1] : 0 < y))
      (neg_ne_zero.mpr (s_ne_zero hs)), ← psi_complex_eq_sum]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  rw [he] at ha
  simp only [Nat.floor_ofNat, f, c] at ha
  have hψ7 : (∑ n ∈ Icc 0 7, ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) =
      (Chebyshev.psi 7 : ℂ) := by simpa using (psi_complex_eq_sum (7 : ℝ)).symm
  rw [hψ7] at ha
  unfold actualClosedMangoldtMellinHeadSeven
  simpa only [mul_comm, sub_neg_eq_add, ofReal_natCast, ofReal_ofNat] using ha

/-- Genuine actual Psi-tail L1 follows before subtracting the closed finite lower head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variantd7f3b40fd1570bfd20acb96be3d889de8e60f775fd762f3da8b1e6ccb621443d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantd7f3b40fd1570bfd20acb96be3d889de8e60f775fd762f3da8b1e6ccb621443d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1f86f0a852642f4e7de63caca39d837e6b3d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
