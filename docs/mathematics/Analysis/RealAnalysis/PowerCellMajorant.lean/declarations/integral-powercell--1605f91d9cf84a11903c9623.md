# integral_powerCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:763c0f71-a463-8c90-a113-619bc3a8ec23",
  "kind": "theorem",
  "lexical_name": "integral_powerCell",
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
  "slug": "integral-powercell--1605f91d9cf84a11903c9623",
  "source": {
    "blob": "1c77f105665d4f13284e684007f919750c001b3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/Analysis/Real/PowerCellMajorant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1605f91d9cf84a11903c962318b9761b42f7dd775f08c058ff746736df69fecc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/PowerCellMajorant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763c0f71-a463-8c90-a113-619bc3a8ec23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_powerCell (q p : ℝ) (hq : 0 < q) (hp : 0 < p) :
    (∫ u in (0 : ℝ)..1, Real.exp (-(p + 1) * Real.log (q + u))) = powerCell q p := by
  have hd (u : ℝ) (hu : u ∈ uIcc (0 : ℝ) 1) :
      HasDerivAt (fun v : ℝ => -decayPower p (q + v) / p)
        (Real.exp (-(p + 1) * Real.log (q + u))) u := by
    have hu' : u ∈ Icc (0 : ℝ) 1 := by simpa using hu
    have ht : 0 < q + u := by linarith [hu'.1]
    have h := (((hasDerivAt_decayPower p (q + u) ht).comp u
      ((hasDerivAt_id u).const_add q)).neg).div_const p
    apply h.congr_deriv
    field_simp [ne_of_gt hp]
  have hc : ContinuousOn (fun u : ℝ => Real.exp (-(p + 1) * Real.log (q + u)))
      (Icc (0 : ℝ) 1) := by
    intro u hu
    have ht : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) :
      ContinuousAt (fun v : ℝ => Real.exp (-(p + 1) * Real.log (q + v))) u).continuousWithinAt
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (hc.intervalIntegrable_of_Icc (by norm_num))
  simpa only [powerCell, add_zero, neg_div, sub_div, neg_sub_neg] using hi

/-- The finite upper endpoint is not dropped from the telescope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/PowerCellMajorant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/PowerCellMajorant.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c77f105665d4f13284e684007f919750c001b3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
