# rationalRieszPrimitive_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f20fae0-582f-9805-0850-341f83eb180c",
  "kind": "theorem",
  "lexical_name": "rationalRieszPrimitive_eq",
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
  "slug": "rationalrieszprimitive-eq--64c207ef44aacd007bd68f2f",
  "source": {
    "blob": "8dfe17b2b933e15b3b03da7035ea776d770acb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 47,
    "path": "GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c207ef44aacd007bd68f2fb9a0eb1ddf8ce096453916ba7eef92c09e96f9c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f20fae0-582f-9805-0850-341f83eb180c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalRieszPrimitive_eq (a x : ℝ) (ha : 1 < a) (hx : 1 < x) :
    rationalRieszPrimitive a x = correction x - correction a - (x-a)*slope a := by
  have hc : ContinuousOn rationalDensity (uIcc a x) :=
    rationalDensity_continuousOn (lt_min ha hx)
  have hf : IntervalIntegrable rationalDensity volume a x := hc.intervalIntegrable
  have htf : IntervalIntegrable (fun t => t*rationalDensity t) volume a x :=
    (continuous_id.continuousOn.mul hc).intervalIntegrable
  have hd (t : ℝ) (ht : t ∈ uIcc a x) : 1 < t := (lt_min ha hx).trans_le ht.1
  have h0 := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht => hasDerivAt_slope t (hd t ht)) hf.neg
  have h1 := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (f := fun t => t*slope t-correction t)
    (f' := fun t => -(t*rationalDensity t)) (a := a) (b := x) (fun t ht => by
      have h := ((hasDerivAt_id t).mul (hasDerivAt_slope t (hd t ht))).sub
        (hasDerivAt_correction t (hd t ht))
      convert h using 1 <;> first | rfl | (simp only [id_eq]; ring)) htf.neg
  rw [intervalIntegral.integral_neg] at h0 h1
  have he : (∫ t in a..x, (x-t)*rationalDensity t) =
      x*(∫ t in a..x, rationalDensity t) - (∫ t in a..x, t*rationalDensity t) := by
    calc
      _ = ∫ t in a..x, (x*rationalDensity t-t*rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  unfold rationalRieszPrimitive
  rw [he]
  nlinarith only [h1, congrArg (fun t : ℝ => x*t) h0]
end GRWTSK.Analysis.Real.ClassicalRieszCorrection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dfe17b2b933e15b3b03da7035ea776d770acb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
