# calE_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31cb8340-f14f-f1a7-77bb-1d1e392b1384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cff5b371-667c-95e5-6146-143cf88c918a",
  "kind": "theorem",
  "lexical_name": "calE_tendsto_zero",
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
  "slug": "cale-tendsto-zero--812b33880a217fa92c4b5288",
  "source": {
    "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 265,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:812b33880a217fa92c4b528899ed8ee7243943f83cbaa23f5d57543c076e9aba",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cff5b371-667c-95e5-6146-143cf88c918a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calE_tendsto_zero (hlam : 0 < P.lam) (hlam1 : P.lam ≤ 1) (hw : 0 ≤ P.w) :
    Tendsto P.calE atTop (𝓝 0) := by
  -- w / L → 0
  have h1 : Tendsto (fun T => P.w / P.L T) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (L_tendsto_atTop P hlam)
  -- T^{λ/2 - 1} → 0
  have h3 : Tendsto (fun T : ℝ => T ^ (P.lam / 2 - 1)) atTop (𝓝 0) := by
    have : P.lam / 2 - 1 = -(1 - P.lam / 2) := by ring
    rw [this]; exact tendsto_rpow_neg_atTop (by linarith)
  -- l² / T → 0
  have h2a : Tendsto (fun T => l T ^ 2 / T) atTop (𝓝 0) := by
    have := (Real.tendsto_pow_log_div_mul_add_atTop (2 * π) 0 2 (by positivity)).comp
      (tendsto_id.atTop_div_const (show (0:ℝ) < 2 * π by positivity))
    refine this.congr' ?_
    filter_upwards [eventually_gt_atTop 0] with T hT
    simp only [Function.comp, l, id, add_zero]
    rw [mul_div_cancel₀ _ (by positivity)]
  -- log l / l → 0
  have h2b : Tendsto (fun T => Real.log (l T) / l T) atTop (𝓝 0) := by
    have := (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp l_tendsto_atTop
    simpa [Function.comp_def] using this
  have hsum : Tendsto (fun T => P.w / P.L T + (l T ^ 2 / T + Real.log (l T) / l T)
      + T ^ (P.lam / 2 - 1)) atTop (𝓝 0) := by
    simpa using (h1.add (h2a.add h2b)).add h3
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hsum
    (calE_nonneg_eventually hlam hw) ?_
  filter_upwards [eventually_l_ge 1, eventually_X_le_T P hlam hlam1, eventually_ge_atTop 1]
    with T hl hXT hT
  unfold Params.calE
  have hlog0 : 0 ≤ Real.log (l T) := Real.log_nonneg hl
  have hlogle : Real.log (l T) ≤ l T := Real.log_le_self (by linarith)
  have hX0 : 0 ≤ P.X T := (X_pos P T).le
  have hl0 : 0 < l T := by linarith only [hl]
  have hT0 : 0 < T := by linarith only [hT]
  have e1 : l T ^ 2 * Real.log (l T) / (T * l T) ≤ l T ^ 2 / T := by
    rw [div_le_div_iff₀ (by positivity) hT0]
    nlinarith only [hlogle, mul_nonneg (sq_nonneg (l T)) hT0.le]
  have e2 : P.X T * Real.log (l T) / (T * l T) ≤ Real.log (l T) / l T := by
    rw [div_le_div_iff₀ (by positivity) hl0]
    nlinarith only [hXT, mul_nonneg hlog0 hl0.le]
  have e3 : (l T ^ 2 + P.X T) * Real.log (l T) / (T * l T)
      = l T ^ 2 * Real.log (l T) / (T * l T) + P.X T * Real.log (l T) / (T * l T) := by ring
  linarith only [e1, e2, e3]

end PaperParams

/-! ## §2.  Assembly of Theorem [thm:traces] from the §5 sub-results

All quantities are real functions of `T` at fixed `P = (ϱ, λ, w)`.  The hypotheses below are exactly
the conclusions of [prop:trace], [lem:ends], [eq:Msplit], [prop:mumu], [prop:PP], [prop:cross]
(the paper §5), [eq:muints] (from H-Γ), [eq:RvM] (H-RvM) and [eq:abdef] (Taper), each in the
explicit-constant form `EvBound`. -/

namespace PrimeSide

open PaperParams

/-- The real-valued functions of `T` entering [thm:traces].  Docstrings give the paper object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562865ec2246891b67f3fba67e897c39c83cdf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
