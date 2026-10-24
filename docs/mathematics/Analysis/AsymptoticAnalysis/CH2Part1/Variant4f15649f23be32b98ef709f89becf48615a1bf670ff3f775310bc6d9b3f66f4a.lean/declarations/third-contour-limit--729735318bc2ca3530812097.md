# third_contour_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0136904a-c5fe-73ee-fef5-fcd9cc03d4de",
  "kind": "theorem",
  "lexical_name": "third_contour_limit",
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
  "slug": "third-contour-limit--729735318bc2ca3530812097",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4491,
    "line": 4418,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:729735318bc2ca3530812097d64f1bfec32a20172ca0dddf0482b3579651adb4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0136904a-c5fe-73ee-fef5-fcd9cc03d4de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4418–4491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem third_contour_limit (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x > 0) :
    Filter.atTop.Tendsto (fun T:ℝ ↦
      (∫ t in Set.Icc 0 (1/2:ℝ), (Phi_star ν ε t * E (-t * x)))
        - (I * ∫ t in Set.Icc 0 T, ((Phi_star ν ε (1/2 - I * t)) * E (- (1/2 - I * ↑t) * x)))
        + (I * ∫ t in Set.Icc 0 T, ((Phi_star ν ε (-I * t)) * E (-(-I * ↑t) * x))))
      (nhds 0) := by
  let f : ℂ → ℂ := fun z ↦ Phi_star ν ε z * E (-z * x)
  have hf_anal : ∀ (U : ℝ), U ≥ 0 → HolomorphicOn f (Rectangle (0 : ℂ) (1/2 - I * U)) := by
    intro U hU; exact third_contour_integrand_holomorphicOn ν ε x U hU
  have h_bottom : Filter.Tendsto (fun T : ℝ ↦ ∫ t in (0:ℝ)..(1/2:ℝ), f (↑t - I * ↑T))
      Filter.atTop (nhds 0) := by
    apply horizontal_integral_phi_fourier_vanish_downwards ν ε x 0 (1/2) hν hx
      (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) f
    · intro T hT
      convert (hf_anal T (by linarith)).continuousOn using 2
      push_cast; rfl
    · filter_upwards with T; intro t ht
      simp only [f, norm_mul]
      apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
      linarith [norm_nonneg (Phi_circ ν ε (↑t - I * ↑T))]
  have h_shift : Filter.Tendsto (fun (T : ℝ) ↦ (I * ∫ t in Set.Icc 0 T, f (1/2 - I * t)) - (I * ∫ t in Set.Icc 0 T, f (0 - I * t)))
      Filter.atTop (nhds (∫ t in (0:ℝ)..(1/2:ℝ), f t)) := by
    let σ : ℝ := 0
    let σ' : ℝ := 1/2
    have hf_anal_rect : ∀ (U : ℝ), U ≥ 0 → HolomorphicOn f (Rectangle (σ : ℂ) (σ' - I * U)) := by
      intro U hU; convert third_contour_integrand_holomorphicOn ν ε x U hU; simp [σ']
    convert tendsto_contour_shift_downwards (σ := σ) (σ' := σ') hf_anal_rect h_bottom
    simp [σ']
  convert ((tendsto_const_nhds (x := ∫ t in (0:ℝ)..(1/2:ℝ), f t)).sub h_shift).congr' ?_ using 1
  · simp
  · filter_upwards [] with T
    rw [intervalIntegral.integral_of_le (by norm_num : (0:ℝ) ≤ 1/2),
        ← MeasureTheory.integral_Icc_eq_integral_Ioc]
    calc
      (∫ (t : ℝ) in Set.Icc 0 (1 / 2), f t) - ((I * ∫ t in Set.Icc 0 T, f (1 / 2 - I * t)) - (I * ∫ t in Set.Icc 0 T, f (0 - I * t)))
      _ = (∫ (t : ℝ) in Set.Icc 0 (1 / 2), Phi_star ν ε t * E (-t * x)) -
          ((I * ∫ t in Set.Icc 0 T, Phi_star ν ε (1 / 2 - I * t) * E (-(1 / 2 - I * t) * x)) -
          (I * ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * t) * E (-(-I * t) * x))) := by
        simp only [f]; simp only [zero_sub, neg_neg]
        have hC : ∫ t in Set.Icc 0 T, Phi_star ν ε (-(I * ↑t)) * E (I * ↑t * ↑x) =
            ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * ↑t) * E (-(-I * ↑t) * ↑x) := by
            congr 1; ext t; simp only [neg_mul, neg_neg]
        rw [hC]
      _ = (∫ (t : ℝ) in Set.Icc 0 (1 / 2), Phi_star ν ε t * E (-(x * t))) -
          ((I * ∫ t in Set.Icc 0 T, Phi_star ν ε (1 / 2 - I * t) * E (x * (-1 / 2) + x * I * t)) -
          (I * ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * t) * E (x * I * t))) := by
        congr 1
        · apply MeasureTheory.integral_congr_ae; refine Filter.Eventually.of_forall (fun t ↦ ?_)
          ring_nf
        · congr 1
          · apply congr_arg (fun z ↦ I * z)
            apply MeasureTheory.integral_congr_ae; refine Filter.Eventually.of_forall (fun t ↦ ?_)
            ring_nf
          · apply congr_arg (fun z ↦ I * z)
            apply MeasureTheory.integral_congr_ae; refine Filter.Eventually.of_forall (fun t ↦ ?_)
            ring_nf
      _ = _ := by
        ring_nf

@[blueprint
  "shift-downwards-simplified"
  (title := "Simplified formula for downward contour shift")
  (statement := /--
If $x > 0$, then $\widehat{\varphi^{\pm}_{\nu}}(x) - e^{-\nu x}$ equals
$$ - \frac{\sin^2 \pi x}{\pi^2} \int_0^{\infty} (B^{\pm}(\nu - y) - B^{\pm}(\nu))\, e^{-xy}\, dy. $$
  -/)
  (proof := /-- \begin{align*}
&2\int_0^{-i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz - \int_0^{-i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-(z-1)x)\, dz - \int_0^{-i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-(z+1)x)\, dz\\
&= (2 - e(x) - e(-x)) \int_0^{\infty} \Phi^{\pm,\star}_{\nu}\!\left(-\frac{iy}{2\pi}\right) e\!\left(-\frac{yx}{2\pi i}\right) d\!\left(-\frac{iy}{2\pi}\right)\\
&= -\frac{2i}{\pi}\sin^2 \pi x \int_0^{\infty} \Phi^{\pm,\star}_{\nu}\!\left(-\frac{iy}{2\pi}\right) e^{-xy}\, dy = -\frac{\sin^2 \pi x}{\pi^2} \int_0^{\infty} (B^{\pm}(\nu - y) - B^{\pm}(\nu))\, e^{-xy}\, dy.
\end{align*}
 -/)
  (latexEnv := "sublemma")
  (discussion := 1088)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L4418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
