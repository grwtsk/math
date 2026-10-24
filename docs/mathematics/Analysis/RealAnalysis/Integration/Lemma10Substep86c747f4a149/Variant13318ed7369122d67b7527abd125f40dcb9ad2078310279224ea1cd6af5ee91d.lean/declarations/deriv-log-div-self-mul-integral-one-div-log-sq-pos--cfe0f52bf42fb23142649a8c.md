# deriv_log_div_self_mul_integral_one_div_log_sq_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:087e2005-dc34-8652-9e44-8b4b74546dbb",
  "kind": "lemma",
  "lexical_name": "deriv_log_div_self_mul_integral_one_div_log_sq_pos",
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
  "slug": "deriv-log-div-self-mul-integral-one-div-log-sq-pos--cfe0f52bf42fb23142649a8c",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3357,
    "line": 3329,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe0f52bf42fb23142649a8c79658ca7d29b8d8bde925d1dca3cf705e6359ce7",
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

Occurrence: `result:087e2005-dc34-8652-9e44-8b4b74546dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3329–3357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_log_div_self_mul_integral_one_div_log_sq_pos {x₁ : ℝ} (h : x₁ ≥ 14) :
    deriv (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) (x₁ * log x₁) > 0 := by
  have h_logx₁_gt : 1 < Real.log x₁ := log_gt_one_of_ge_14 h
  have ht₀_pos : 0 < x₁ * log x₁ := mul_pos (by linarith) (by linarith)
  have hx₁_le_x₀ : x₁ ≤ x₁ * Real.log x₁ := x1_le_x1_log_x1 h
  have h_deriv_t₀ := hasDerivAt_log_div_self_mul_integral (by linarith : 1 < x₁) (by nlinarith : x₁ < x₁ * log x₁)
  rw [h_deriv_t₀.deriv]
  have ht₀_sq_pos : 0 < (x₁ * log x₁) ^ 2 := pow_pos ht₀_pos 2
  refine div_pos ?_ ht₀_sq_pos
  have ht₀_mem : x₁ * log x₁ ∈ Set.Icc x₁ (x₁ * log x₁) := ⟨hx₁_le_x₀, le_refl _⟩
  have h_sub_div_t₀ : ∫ s in x₁..x₁ * log x₁, (s - x₁) / s = x₁ * log x₁ - x₁ - x₁ * log (log x₁) := by
    have h_sub := integral_sub_div_self (by linarith : 0 < x₁) hx₁_le_x₀
    rw [mul_div_cancel_left₀ _ (by linarith : x₁ ≠ 0)] at h_sub
    linarith
  have h_I_bound_t₀ : ∫ s in x₁..x₁ * log x₁, (∫ u in x₁..s, 1 / (log u) ^ 2) / s ≤
      (1 / (log x₁) ^ 2) * (x₁ * log x₁ - x₁ - x₁ * log (log x₁)) :=
    h_sub_div_t₀ ▸ integral_I_div_self_le (by linarith) ht₀_mem
  have h_u_eq_t₀ := u_eq_sub_integral (by linarith) ht₀_mem
  have h_pos_bound : x₁ / log x₁ - (1 / (log x₁) ^ 2) * (x₁ * log x₁ - x₁ - x₁ * log (log x₁)) > 0 := by
    have h_logx₁_pos : 0 < log x₁ := Real.log_pos (by linarith)
    have h_loglogx₁_pos : 0 < log (log x₁) := Real.log_pos h_logx₁_gt
    have h_eq : x₁ / log x₁ - (1 / (log x₁) ^ 2) * (x₁ * log x₁ - x₁ - x₁ * log (log x₁)) =
        x₁ * (1 + log (log x₁)) / (log x₁) ^ 2 := by
      field_simp
      ring
    rw [h_eq]
    positivity
  linarith [h_u_eq_t₀, h_I_bound_t₀, h_pos_bound]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L3329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
