# candidate_parameter_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75d8c4af-7393-f808-9e96-a46057d62cf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35247f7a-f3b5-cb2b-37c5-3f997e113b5b",
  "kind": "theorem",
  "lexical_name": "candidate_parameter_decay",
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
  "slug": "candidate-parameter-decay--c2b9df4b3963fb9c5a110bdc",
  "source": {
    "blob": "4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 437,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b9df4b3963fb9c5a110bdcbea55ff5d652a5947cb656dccec51be5896bf82e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35247f7a-f3b5-cb2b-37c5-3f997e113b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidate_parameter_decay (ε : ℝ) (hε : 0 < ε) (C : ℝ) (hC : 0 < C)
    (hbound : ∀ w : ℂ, ε ≤ w.re → ‖(reducedW w)⁻¹‖ ≤ C*(1+‖w‖)^4)
    (X : ℕ) (hX : 1 ≤ X) (h : ℝ) (hh : 0 < h) (hh1 : h ≤ 1)
    (z : ℂ) (hz : 0 ≤ z.re) :
    ‖candidate X ε h z‖ ≤
      256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))*h⁻¹^3 /
        (1+h*|z.im|)^3 := by
  let w : ℂ := z + (ε : ℂ)
  have hw : ε ≤ w.re := by change ε ≤ z.re + ε; linarith
  have hw0 : 0 ≤ w.re := hε.le.trans hw
  have hD := correctedQuotient_norm_le X hX w hw0
  have hR := hbound w hw
  have hden := one_add_norm_le_twice w hw0
  have hsden := one_add_norm_le_twice ((h : ℂ)*w) (by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_nonneg hh.le hw0)
  have hhr : ‖(h : ℂ)*w‖ = h*‖w‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hh]
  rw [hhr] at hsden
  have hp : 0 < 1+‖w‖ := by positivity
  have hhp : 0 < 1+h*‖w‖ := by positivity
  have hdn : 0 < ‖1+w‖ := by linarith
  have hsn : 0 < ‖1+(h : ℂ)*w‖ := by linarith
  have hs : ‖(1+(h : ℂ)*w)⁻¹‖ ≤ 2/(1+h*‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hsn hhp).mpr
    simpa only [one_mul] using hsden
  have ho : ‖(1+w)⁻¹‖ ≤ 2/(1+‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hdn hp).mpr
    simpa only [one_mul] using hden
  have hlog : 0 ≤ 1+Real.log (X : ℝ) := by
    have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
    linarith [Real.log_nonneg hx]
  have hexact : ‖candidate X ε h z‖ =
      ‖correctedQuotient X w‖ * ‖(reducedW w)⁻¹‖ *
        ‖(1+(h : ℂ)*w)⁻¹‖^6 * ‖(1+w)⁻¹‖ := by
    unfold candidate quotient
    simp only [div_eq_mul_inv, norm_mul, norm_pow, w, add_assoc]
  have hraw : ‖candidate X ε h z‖ ≤
      (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := by
    rw [hexact]
    gcongr
  have hratio : (1+‖w‖)^3 ≤ h⁻¹^3 * (1+h*‖w‖)^3 := by
    have h1 : 1+‖w‖ ≤ h⁻¹*(1+h*‖w‖) := by
      apply (le_inv_mul_iff₀ hh).mpr
      nlinarith [hh1]
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity : 0 ≤ 1+‖w‖) h1 3
  have him : h*|z.im| ≤ h*‖w‖ := by
    apply mul_le_mul_of_nonneg_left _ hh.le
    have hi := Complex.abs_im_le_norm w
    simpa only [w, Complex.add_im, Complex.ofReal_im, add_zero] using hi
  calc
    _ ≤ (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := hraw
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (1+‖w‖)^3 / (1+h*‖w‖)^6 := by field_simp; ring
    _ ≤ (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (h⁻¹^3*(1+h*‖w‖)^3) / (1+h*‖w‖)^6 := by gcongr
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        h⁻¹^3 / (1+h*‖w‖)^3 := by field_simp
    _ ≤ _ := by
      apply div_le_div_of_nonneg_left (by positivity) (by positivity)
      gcongr

/-- One source-only constant controls every candidate vertical line and every finite cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant594eff6e761ec4b81fcba188fb9b4485fa7642b56f2db41341cb31786b5e190f.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af44af71e9a0d1c4d1117cbca295dcd7a4a84d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
