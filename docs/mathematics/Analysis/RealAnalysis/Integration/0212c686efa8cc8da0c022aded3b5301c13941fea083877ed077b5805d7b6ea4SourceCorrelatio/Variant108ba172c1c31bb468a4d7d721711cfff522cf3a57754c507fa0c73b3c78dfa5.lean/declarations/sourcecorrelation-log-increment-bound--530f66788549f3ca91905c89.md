# sourceCorrelation_log_increment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9ff1c81-d955-c337-2f4a-30ecb77e8c15",
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
  "slug": "sourcecorrelation-log-increment-bound--530f66788549f3ca91905c89",
  "source": {
    "blob": "ed16a1782e4b66694f779075012ba2ef09bec5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530f66788549f3ca91905c8939168a8f8c670d0348682e701a95ec77269536be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9ff1c81-d955-c337-2f4a-30ecb77e8c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–113.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed16a1782e4b66694f779075012ba2ef09bec5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
