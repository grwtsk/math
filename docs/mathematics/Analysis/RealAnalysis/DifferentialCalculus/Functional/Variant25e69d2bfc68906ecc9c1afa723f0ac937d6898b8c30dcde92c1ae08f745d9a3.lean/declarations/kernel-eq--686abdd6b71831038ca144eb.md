# kernel_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e18e60a1-76c0-662a-7e81-d9f9fff56ba3",
  "kind": "theorem",
  "lexical_name": "kernel_eq",
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
  "slug": "kernel-eq--686abdd6b71831038ca144eb",
  "source": {
    "blob": "42291c6dafca5e513a306ef3953a2e7f7d1f43f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 329,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:686abdd6b71831038ca144ebcccc9cf927ca7729881607f956e5f433618f9b62",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e18e60a1-76c0-662a-7e81-d9f9fff56ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_eq {lam : ℝ} (h0 : 0 < lam) {s : ℝ} (hs1 : -(1:ℝ)/2 ≤ s)
    (hs2 : s ≤ 1/2) :
    ∫ s' in (-(1:ℝ)/2)..(1/2), |s - s'| * Real.cos (Real.sqrt 2 * lam * s')
      = aStar lam / 2 + Real.cos (theta lam) / lam ^ 2
        - Real.cos (Real.sqrt 2 * lam * s) / lam ^ 2 := by
  have hs2' : (0:ℝ) < Real.sqrt 2 := by positivity
  have hω : Real.sqrt 2 * lam ≠ 0 := by positivity
  have hsq : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  set ω := Real.sqrt 2 * lam with hωdef
  have hcont : ∀ a b : ℝ, IntervalIntegrable
      (fun s' => |s - s'| * Real.cos (ω * s')) MeasureTheory.volume a b := fun a b =>
    (Continuous.intervalIntegrable (by fun_prop) a b)
  -- split at s
  have hsplit : ∫ s' in (-(1:ℝ)/2)..(1/2), |s - s'| * Real.cos (ω * s')
      = (∫ s' in (-(1:ℝ)/2)..s, |s - s'| * Real.cos (ω * s'))
        + ∫ s' in s..(1/2), |s - s'| * Real.cos (ω * s') :=
    (intervalIntegral.integral_add_adjacent_intervals (hcont _ _) (hcont _ _)).symm
  -- left piece
  have hleft : ∫ s' in (-(1:ℝ)/2)..s, |s - s'| * Real.cos (ω * s')
      = (∫ s' in (-(1:ℝ)/2)..s, (s - s') * Real.cos (ω * s')) := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [Set.uIcc_of_le hs1] at hx
    show |s - x| * Real.cos (ω * x) = (s - x) * Real.cos (ω * x)
    rw [abs_of_nonneg (by linarith [hx.2] : (0:ℝ) ≤ s - x)]
  have hleft2 : ∫ s' in (-(1:ℝ)/2)..s, (s - s') * Real.cos (ω * s')
      = ((s - s) * Real.sin (ω * s) / ω - Real.cos (ω * s) / ω ^ 2)
        - ((s - (-(1:ℝ)/2)) * Real.sin (ω * (-(1:ℝ)/2)) / ω
            - Real.cos (ω * (-(1:ℝ)/2)) / ω ^ 2) :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ => hasDerivAt_left ω s hω x) (Continuous.intervalIntegrable (by fun_prop) _ _)
  -- right piece
  have hright : ∫ s' in s..(1/2), |s - s'| * Real.cos (ω * s')
      = (∫ s' in s..(1/2), (s' - s) * Real.cos (ω * s')) := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [Set.uIcc_of_le hs2] at hx
    show |s - x| * Real.cos (ω * x) = (x - s) * Real.cos (ω * x)
    rw [abs_of_nonpos (by linarith [hx.1] : s - x ≤ 0), neg_sub]
  have hright2 : ∫ s' in s..(1/2), (s' - s) * Real.cos (ω * s')
      = (((1:ℝ)/2 - s) * Real.sin (ω * (1/2)) / ω + Real.cos (ω * (1/2)) / ω ^ 2)
        - ((s - s) * Real.sin (ω * s) / ω + Real.cos (ω * s) / ω ^ 2) :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ => hasDerivAt_right ω s hω x) (Continuous.intervalIntegrable (by fun_prop) _ _)
  rw [hsplit, hleft, hleft2, hright, hright2, aStar_eq h0]
  rw [show ω * (1/2) = theta lam from sqrt2_mul_half, show ω * (-(1:ℝ)/2) = -theta lam
    from sqrt2_mul_neg_half, Real.sin_neg, Real.cos_neg]
  have hω2 : ω ^ 2 = 2 * lam ^ 2 := by rw [hωdef, mul_pow, hsq]
  rw [hω2]
  have h2θ : ω = 2 * theta lam := by
    have := sqrt2_mul_half (lam := lam)
    rw [hωdef]; linarith
  rw [h2θ]
  have hθ : 0 < theta lam := theta_pos h0
  field_simp
  ring_nf
  rw [show theta lam = lam / Real.sqrt 2 from rfl]
  field_simp
  ring_nf
  try rw [hsq]
  try ring

/-- The kernel identity behind J*: with β := a*/2 + cos ϑ/λ²,
∬|s−s'| v* v* = β a* − b*/λ². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42291c6dafca5e513a306ef3953a2e7f7d1f43f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
