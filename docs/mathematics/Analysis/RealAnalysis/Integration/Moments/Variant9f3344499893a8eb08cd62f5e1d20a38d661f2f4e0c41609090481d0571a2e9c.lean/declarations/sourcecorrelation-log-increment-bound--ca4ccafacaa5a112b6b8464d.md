# sourceCorrelation_log_increment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b960b3a-0a9a-26a8-b1f4-56c67c03ba89",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_log_increment_bound",
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
  "slug": "sourcecorrelation-log-increment-bound--ca4ccafacaa5a112b6b8464d",
  "source": {
    "blob": "73b5c81f445a670386efa3edd3275b5ec0fe3274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca4ccafacaa5a112b6b8464de80bc881f4f7f08e0c6737d26d9c005ee26a85bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b960b3a-0a9a-26a8-b1f4-56c67c03ba89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_log_increment_bound {A a b : ℝ} (hA : 200 ≤ A)
    (ha : 1 ≤ a) (hab : a ≤ b) :
    |sourceCorrelation explicitSecondDerivative A (Real.log a) -
      sourceCorrelation explicitSecondDerivative A (Real.log b)| ≤
      (5 / A ^ 2) * Real.log b * (Real.log b - Real.log a) := by
  have hp : 0 < A := by linarith
  have ha0 : 0 < a := by linarith
  have hb0 : 0 < b := ha0.trans_le hab
  have hlogab : Real.log a ≤ Real.log b := Real.log_le_log ha0 hab
  have hloga : 0 ≤ Real.log a := Real.log_nonneg ha
  have hlogb : 0 ≤ Real.log b := hloga.trans hlogab
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Icc (Real.log a) (Real.log b))
    (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hp).differentiable (by norm_num) x)
    (C := (5 / A ^ 2) * Real.log b)
    (fun x hx => by
      rw [Real.norm_eq_abs]
      apply (sourceCorrelation_deriv_abs_le_scaled_distance hA x).trans
      rw [abs_of_nonneg (hloga.trans hx.1)]
      exact mul_le_mul_of_nonneg_left hx.2 (by positivity))
    (convex_Icc _ _) (left_mem_Icc.mpr hlogab) (right_mem_Icc.mpr hlogab)
  simpa only [Real.norm_eq_abs, abs_sub_comm,
    abs_of_nonneg (sub_nonneg.mpr hlogab)] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b5c81f445a670386efa3edd3275b5ec0fe3274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
