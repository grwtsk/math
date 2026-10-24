# mul_rpow_sub_div_le_admissible_bound_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9758214-c76c-9328-5a9d-d772a60cff1d",
  "kind": "lemma",
  "lexical_name": "mul_rpow_sub_div_le_admissible_bound_mul",
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
  "slug": "mul-rpow-sub-div-le-admissible-bound-mul--26ae9088d9ecf853dfad937a",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1084,
    "line": 1012,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26ae9088d9ecf853dfad937ac7bcb102acad9f25dff3ed0838f122d32ad747cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9758214-c76c-9328-5a9d-d772a60cff1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1012–1084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mul_rpow_sub_div_le_admissible_bound_mul (α a Aψ B C R x x₀ : ℝ)
    (ha_nonneg : 0 ≤ a) (hAψ : Aψ > 0) (hR : R > 0)
    (hx_pos : 0 < x) (hx₀_pos : 0 < x₀)
    (hlog_pos : 0 < Real.log x) (hlog_x₀_pos : 0 < Real.log x₀)
    (hx₀ : 7 ≤ Real.log x₀)
    (hg_le : g_bound α (-B) (C / Real.sqrt R) x ≤ g_bound α (-B) (C / Real.sqrt R) x₀) :
    a * x ^ (1 - α) / x ≤
      admissible_bound Aψ B C R x * ((1 / Aψ) * (R / Real.log x₀) ^ B *
        Real.exp (C * Real.sqrt (Real.log x₀ / R)) * (a * Real.log x₀ * x₀ ^ (-α))) := by
  have h_exp_cancel : Real.exp (-C * Real.sqrt (Real.log x / R)) * Real.exp (C / Real.sqrt R * Real.sqrt (Real.log x)) = 1 := by
    rw [← Real.exp_add, show -C * Real.sqrt (Real.log x / R) + C / Real.sqrt R * Real.sqrt (Real.log x) = 0 by
      rw [show Real.log x / R = Real.log x * R⁻¹ from div_eq_mul_inv _ _, Real.sqrt_mul hlog_pos.le, Real.sqrt_inv]; ring, Real.exp_zero]
  have h_log_cancel : (Real.log x) ^ B * (Real.log x) ^ (-B) = 1 := by
    rw [← Real.rpow_add hlog_pos, add_neg_cancel, Real.rpow_zero]
  have h_div_pow1 : (Real.log x / R) ^ B = (Real.log x) ^ B * R ^ (-B) := by
    rw [div_eq_mul_inv, Real.mul_rpow hlog_pos.le (inv_pos.mpr hR).le, Real.inv_rpow hR.le, ← Real.rpow_neg hR.le]
  have h_div_pow2 : (R / Real.log x₀) ^ B = R ^ B * (Real.log x₀) ^ (-B) := by
    rw [div_eq_mul_inv, Real.mul_rpow hR.le (inv_pos.mpr hlog_x₀_pos).le, Real.inv_rpow hlog_x₀_pos.le, ← Real.rpow_neg hlog_x₀_pos.le]
  have h_R_cancel : R ^ (-B) * R ^ B = 1 := by
    rw [← Real.rpow_add hR, neg_add_cancel, Real.rpow_zero]
  have h_exp_eq₀ : C / Real.sqrt R * Real.sqrt (Real.log x₀) = C * Real.sqrt (Real.log x₀ / R) := by
    rw [div_eq_mul_inv, div_eq_mul_inv, Real.sqrt_mul hlog_x₀_pos.le, Real.sqrt_inv]; ring
  have hg_nonneg : 0 ≤ g_bound α (-B) (C / Real.sqrt R) x₀ := by unfold g_bound; positivity
  have h_g_scaled : g_bound α (-B) (C / Real.sqrt R) x ≤ g_bound α (-B) (C / Real.sqrt R) x₀ * Real.log x₀ :=
    le_trans hg_le (by simpa using mul_le_mul_of_nonneg_left (by linarith : 1 ≤ Real.log x₀) hg_nonneg)
  calc a * x ^ (1 - α) / x
      _ = a * x ^ (-α) := by
          rw [mul_div_assoc, show x ^ (1 - α) / x = x ^ (-α) by
            field_simp; rw [show 1 - α = 1 + -α by ring, Real.rpow_add hx_pos, Real.rpow_one]]
      _ = a * (Real.log x) ^ B * Real.exp (-C * Real.sqrt (Real.log x / R)) *
            g_bound α (-B) (C / Real.sqrt R) x := by
          unfold g_bound
          rw [show a * (Real.log x) ^ B * Real.exp (-C * Real.sqrt (Real.log x / R)) *
              (x ^ (-α) * (Real.log x) ^ (-B) * Real.exp (C / Real.sqrt R * Real.sqrt (Real.log x))) =
              a * x ^ (-α) * ((Real.log x) ^ B * (Real.log x) ^ (-B)) *
              (Real.exp (-C * Real.sqrt (Real.log x / R)) *
              Real.exp (C / Real.sqrt R * Real.sqrt (Real.log x))) by ring,
              h_log_cancel, h_exp_cancel]
          ring
      _ ≤ a * (Real.log x) ^ B * Real.exp (-C * Real.sqrt (Real.log x / R)) *
            (g_bound α (-B) (C / Real.sqrt R) x₀ * Real.log x₀) :=
          mul_le_mul_of_nonneg_left h_g_scaled (by positivity)
      _ = admissible_bound Aψ B C R x * ((1 / Aψ) * (R / Real.log x₀) ^ B *
            Real.exp (C * Real.sqrt (Real.log x₀ / R)) * (a * Real.log x₀ * x₀ ^ (-α))) := by
          unfold admissible_bound g_bound
          rw [(Real.sqrt_eq_rpow _).symm, h_div_pow1, h_div_pow2, h_exp_eq₀]
          rw [show Aψ * ((Real.log x) ^ B * R ^ (-B)) * Real.exp (-C * Real.sqrt (Real.log x / R)) *
              ((1 / Aψ) * (R ^ B * (Real.log x₀) ^ (-B)) * Real.exp (C * Real.sqrt (Real.log x₀ / R)) *
              (a * Real.log x₀ * x₀ ^ (-α))) =
              (Aψ * (1 / Aψ)) * (R ^ (-B) * R ^ B) * (a * (Real.log x) ^ B *
              Real.exp (-C * Real.sqrt (Real.log x / R)) *
              ((x₀ ^ (-α) * (Real.log x₀) ^ (-B) *
              Real.exp (C * Real.sqrt (Real.log x₀ / R))) * Real.log x₀)) by ring]
          rw [mul_one_div_cancel hAψ.ne', h_R_cancel]
          ring

@[blueprint
  "fks2-proposition-13"
  (title := "FKS2 Proposition 13")
  (statement := /--
  Suppose that $A_\psi,B,C,R,x_0$ give an admissible bound for $E_\psi$.  If $B > C^2/8R$, then
  $A_\theta, B, C, R, x_0$ give an admissible bound for $E_\theta$, where
  $$ A_\theta = A_\psi (1 + \nu_{asymp}(x_0))$$
  with
  $$ \nu_{asymp}(x_0) = \frac{1}{A_\psi} (\frac{R}{\log x_0})^B
    \exp(C \sqrt{\frac{\log x_0}{R}}) (a_1 (\log x_0) x_0^{-1/2} + a_2 (\log x_0) x_0^{-2/3}).$$
  and $a_1,a_2$ are given by Definitions \ref{bklnw-def-a-1} and \ref{bklnw-def-a-2}.
  -/)
  (proof := /-- The proof of Corollary \ref{bklnw-cor-14-1} essentially proves the proposition, but requires that $x_0 \geq e^{1000}$ to conclude that the function
  $$ 1 + \frac{a_1 \exp(C \sqrt{\frac{\log x}{R}})}{A_\psi \sqrt{x} (\log x/R)^{B}} + \frac{a_2 \exp(C \sqrt{\frac{\log x}{R}})}{A_\psi x^{2/3} (\log x/R)^{B}} = 1 + \frac{a_1}{A_\psi} g(1/2, -B, C/\sqrt{R}, x) + \frac{a_2}{A_\psi} g(2/3, -B, C/\sqrt{R}, x)$$
  is decreasing. By Lemma \ref{fks2-lemma-10a}, since $B > C^2/8R$, the function is actually decreasing for all $x$. -/)
  (latexEnv := "proposition")
  (discussion := 671)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L1012).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
