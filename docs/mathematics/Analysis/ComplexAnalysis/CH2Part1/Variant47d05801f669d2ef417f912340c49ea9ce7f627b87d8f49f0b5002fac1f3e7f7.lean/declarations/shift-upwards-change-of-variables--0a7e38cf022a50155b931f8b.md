# shift_upwards_change_of_variables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5226505c-cdad-db50-1147-b8de6e8fc51c",
  "kind": "lemma",
  "lexical_name": "shift_upwards_change_of_variables",
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
  "slug": "shift-upwards-change-of-variables--0a7e38cf022a50155b931f8b",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3524,
    "line": 3489,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a7e38cf022a50155b931f8b9a149a9e98564a3b599db533e444b48a12d34358",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5226505c-cdad-db50-1147-b8de6e8fc51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3489–3524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_upwards_change_of_variables (ν ε x T : ℝ) (hT : 0 ≤ T) :
    ∫ t in Set.Icc 0 T, (B ε ↑(2 * π * t + ν) - B ε ↑ν) * ↑(Real.exp (2 * π * x * t))
    = (1 / (2 * π)) *
      ∫ s in Set.Icc 0 (2 * π * T),
        (B ε (ν + s) - B ε ν) * Real.exp (x * s) := by
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (by positivity)]
  let f : ℝ → ℂ := fun s ↦ (B ε (ν + s) - B ε ν) * (Real.exp (x * s) : ℂ)
  have h_scale : ((2 * π : ℝ) • ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1))
      = ∫ x_1 in (2 * π : ℝ) * 0..2 * π * T, f x_1 :=
    intervalIntegral.smul_integral_comp_mul_left (f := f) (2 * π)
  dsimp [f] at h_scale
  rw [show ((2 * π : ℝ) * 0) = 0 by ring] at h_scale
  rw [show ∫ t in (0 : ℝ)..T, (B ε ↑(2 * π * t + ν) - B ε ↑ν) * (↑(Real.exp (2 * π * x * t)) : ℂ)
        = ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1) from by
      apply intervalIntegral.integral_congr; intro t _; dsimp [f]; push_cast; ring_nf,
      ← h_scale]
  rw [show (1 : ℂ) / (2 * ↑π) * (↑(2 * π) * ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1))
        = ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1) by push_cast; field_simp]

@[blueprint
  "shift-upwards-simplified"
  (title := "Simplified formula for upward contour shift")
  (statement := /-- If $x < 0$, then $\widehat{\varphi^{\pm}_{\nu}}(x)$ equals
$$
\frac{\sin^2 \pi x}{\pi^2} \int_0^{\infty} (B^{\pm}(\nu + y) - B^{\pm}(\nu))\, e^{xy}\, dy.
$$
  -/)
  (proof := /-- We have $\Phi^{\pm,\circ}_{\nu}(z) - \Phi^{\pm,\star}_{\nu}(z) = -\Phi^{\pm,\star}_{\nu}(z+1)$ and $\Phi^{\pm,\circ}_{\nu}(z) + \Phi^{\pm,\star}_{\nu}(z) = \Phi^{\pm,\star}_{\nu}(z-1)$, and so the formula in the previous lemma simplifies to
\begin{align*}
&2\int_0^{i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz - \int_0^{i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-(z-1)x)\, dz - \int_0^{i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-(z+1)x)\, dz\\
&= (2 - e(x) - e(-x)) \int_0^{\infty} \Phi^{\pm,\star}_{\nu}\!\left(\frac{iy}{2\pi}\right) e\!\left(\frac{xy}{2\pi}\right)\, dy = \frac{\sin^2 \pi x}{\pi^2} \int_0^{\infty} (B^{\pm}(\nu + y) - B^{\pm}(\nu))\, e^{xy}\, dy.
\end{align*}
  -/)
  (latexEnv := "sublemma")
  (discussion := 1083)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
