# iteratedDeriv_sinc_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2060371-20a8-63b3-522f-0e813111f4de",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_sinc_zero",
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
  "slug": "iteratedderiv-sinc-zero--7f3c269657a1588f27cc1af0",
  "source": {
    "blob": "4e85e53361afa174b39a1a749e9fa643b7cb6016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 479,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3c269657a1588f27cc1af0c4c5b7ef9c8d7e558334e9f6d5d625c2297e17b9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2060371-20a8-63b3-522f-0e813111f4de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDeriv_sinc_zero (n : ℕ) :
    iteratedDeriv n Real.sinc 0 = if n % 2 = 0 then
      let k := n / 2
      ((-1 : ℝ) ^ k) / ((2 * k + 1) : ℕ)
    else 0 := by
  -- The recurrence: (n+1) * sinc^{(n)}(0) = sin^{(n+1)}(0)
  -- This follows from: d^{n+1}/dx^{n+1}(x * sinc(x))|_0 = (n+1) * sinc^{(n)}(0) by Leibniz
  -- And x * sinc(x) = sin(x)
  have h_recurrence : ∀ m : ℕ, ((m : ℝ) + 1) * iteratedDeriv m Real.sinc 0 = iteratedDeriv (m + 1) Real.sin 0 := by
    intro m
    have h_eq : ∀ x, x * Real.sinc x = Real.sin x := fun x => by
      by_cases hx : x = 0
      · simp [hx, Real.sinc_zero]
      · rw [Real.sinc_of_ne_zero hx]; field_simp
    have h_deriv_eq : ∀ k x, iteratedDeriv k (fun y => y * Real.sinc y) x = iteratedDeriv k Real.sin x := by
      intro k x; congr 1; exact funext h_eq
    -- Prove: iteratedDeriv (m+1) (x * sinc) 0 = (m+1) * sinc^{(m)}(0) by induction
    suffices h : iteratedDeriv (m + 1) (fun y => y * Real.sinc y) 0 = (m + 1 : ℝ) * iteratedDeriv m Real.sinc 0 by
      rw [← h_deriv_eq (m + 1) 0, h]
    induction m with
    | zero =>
      simp only [iteratedDeriv_zero, zero_add]
      rw [iteratedDeriv_one]
      have hd : HasDerivAt (fun y => y * Real.sinc y) (Real.sinc (0:ℝ) + (0:ℝ) * deriv Real.sinc (0:ℝ)) (0:ℝ) := by
        have h1 : HasDerivAt (fun y : ℝ => y) 1 (0:ℝ) := hasDerivAt_id (0:ℝ)
        have h2 : HasDerivAt Real.sinc (deriv Real.sinc (0:ℝ)) (0:ℝ) :=
          Real.differentiable_sinc.differentiableAt.hasDerivAt
        convert h1.mul h2 using 1; ring
      simp only [zero_mul, add_zero] at hd
      rw [hd.deriv]
      simp only [Real.sinc_zero]; ring
    | succ m ihm =>
      have hcd : ContDiff ℝ ⊤ Real.sinc := Real.contDiff_sinc
      -- Prove: iteratedDeriv (k+1) (x*sinc) x = x * sinc^{(k+1)}(x) + (k+1) * sinc^{(k)}(x)
      have h_formula : ∀ k : ℕ, ∀ x : ℝ,
          iteratedDeriv (k + 1) (fun y => y * Real.sinc y) x =
          x * iteratedDeriv (k + 1) Real.sinc x + (k + 1 : ℝ) * iteratedDeriv k Real.sinc x := by
        intro k
        induction k with
        | zero =>
          intro x
          rw [iteratedDeriv_one, iteratedDeriv_zero]
          have hd : deriv (fun y => y * Real.sinc y) x = Real.sinc x + x * deriv Real.sinc x := by
            have h1 : HasDerivAt (fun y : ℝ => y) 1 x := hasDerivAt_id x
            have h2 : HasDerivAt Real.sinc (deriv Real.sinc x) x :=
              Real.differentiable_sinc.differentiableAt.hasDerivAt
            have := (h1.mul h2).deriv
            simp only [one_mul] at this
            exact this
          rw [hd, iteratedDeriv_one]
          ring
        | succ k ihk =>
          intro x
          rw [iteratedDeriv_succ]
          have hfunc : iteratedDeriv (k + 1) (fun y => y * Real.sinc y) =
              fun y => y * iteratedDeriv (k + 1) Real.sinc y + (k + 1 : ℝ) * iteratedDeriv k Real.sinc y :=
            funext ihk
          rw [hfunc]
          -- Need: deriv (y * f(y) + c * g(y)) = f + y * f' + c * g'
          have hdiff1 : DifferentiableAt ℝ (fun y => y * iteratedDeriv (k + 1) Real.sinc y) x :=
            differentiableAt_id.mul (hcd.differentiable_iteratedDeriv (k + 1) (by simp)).differentiableAt
          have hdiff2 : DifferentiableAt ℝ (fun y => (k + 1 : ℝ) * iteratedDeriv k Real.sinc y) x :=
            (hcd.differentiable_iteratedDeriv k (by simp)).differentiableAt.const_mul _
          have hd1 : deriv (fun y => y * iteratedDeriv (k + 1) Real.sinc y) x =
              iteratedDeriv (k + 1) Real.sinc x + x * deriv (iteratedDeriv (k + 1) Real.sinc) x := by
            have h1 : HasDerivAt (fun y : ℝ => y) 1 x := hasDerivAt_id x
            have h2 : HasDerivAt (iteratedDeriv (k + 1) Real.sinc) _ x :=
              (hcd.differentiable_iteratedDeriv (k + 1) (by simp)).differentiableAt.hasDerivAt
            have := (h1.mul h2).deriv
            simp only [one_mul] at this
            exact this
          have hd2 : deriv (fun y => (k + 1 : ℝ) * iteratedDeriv k Real.sinc y) x =
              (k + 1 : ℝ) * deriv (iteratedDeriv k Real.sinc) x := by
            have h : HasDerivAt (iteratedDeriv k Real.sinc) _ x :=
              (hcd.differentiable_iteratedDeriv k (by simp)).differentiableAt.hasDerivAt
            exact (h.const_mul (k + 1 : ℝ)).deriv
          calc deriv (fun y => y * iteratedDeriv (k + 1) Real.sinc y +
                        (k + 1 : ℝ) * iteratedDeriv k Real.sinc y) x
              = deriv (fun y => y * iteratedDeriv (k + 1) Real.sinc y) x +
                deriv (fun y => (k + 1 : ℝ) * iteratedDeriv k Real.sinc y) x := by
                apply deriv_add hdiff1 hdiff2
            _ = (iteratedDeriv (k + 1) Real.sinc x + x * deriv (iteratedDeriv (k + 1) Real.sinc) x) +
                (k + 1 : ℝ) * deriv (iteratedDeriv k Real.sinc) x := by
                rw [hd1, hd2]
            _ = (iteratedDeriv (k + 1) Real.sinc x + x * iteratedDeriv (k + 2) Real.sinc x) +
                (k + 1 : ℝ) * iteratedDeriv (k + 1) Real.sinc x := by
                simp only [← iteratedDeriv_succ]
            _ = x * iteratedDeriv (k + 1 + 1) Real.sinc x + (↑(k + 1) + 1) * iteratedDeriv (k + 1) Real.sinc x := by
                push_cast; ring
      -- Use h_formula at 0 for m+1
      have hkey := h_formula (m + 1) 0
      simp only [zero_mul, zero_add] at hkey
      exact hkey
  -- Now use the recurrence
  by_cases hn : n % 2 = 0
  · -- n is even
    simp only [hn, ↓reduceIte]
    obtain ⟨k, hk⟩ : ∃ k, n = 2 * k := ⟨n / 2, by omega⟩
    subst hk
    simp only [Nat.mul_div_cancel_left k (by omega : 0 < 2)]
    have hr := h_recurrence (2 * k)
    have hodd : (2 * k + 1) % 2 = 1 := by omega
    rw [iteratedDeriv_sin_zero_odd hodd] at hr
    have hexp : ((2 * k + 1 - 1) / 2) = k := by omega
    rw [hexp] at hr
    -- hr : (↑(2 * k) + 1) * iteratedDeriv (2 * k) Real.sinc 0 = (-1) ^ k
    -- Goal: iteratedDeriv (2 * k) Real.sinc 0 = (-1) ^ k / ↑(2 * k + 1)
    have h2k1_ne : ((2 * k + 1 : ℕ) : ℝ) ≠ 0 := by positivity
    have hcast : ((2 * k : ℕ) : ℝ) + 1 = ((2 * k + 1 : ℕ) : ℝ) := by push_cast; ring
    rw [hcast] at hr
    field_simp [h2k1_ne] at hr ⊢
    linarith
  · -- n is odd
    simp only [hn, ↓reduceIte]
    have hr := h_recurrence n
    have heven : (n + 1) % 2 = 0 := by omega
    rw [iteratedDeriv_sin_zero_even heven] at hr
    -- hr : (↑n + 1) * iteratedDeriv n Real.sinc 0 = 0
    have hn_ne : ((n : ℝ) + 1) ≠ 0 := by positivity
    exact mul_eq_zero.mp hr |>.resolve_left hn_ne

/-- The sincTaylorCoeffs match the Taylor coefficients for sinc at 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e85e53361afa174b39a1a749e9fa643b7cb6016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
