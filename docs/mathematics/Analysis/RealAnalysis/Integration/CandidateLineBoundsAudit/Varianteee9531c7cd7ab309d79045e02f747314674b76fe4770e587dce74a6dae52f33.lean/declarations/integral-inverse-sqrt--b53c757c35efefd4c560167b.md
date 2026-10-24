# integral_inverse_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aafd1930-e308-9dff-559b-540b708a3514",
  "kind": "theorem",
  "lexical_name": "integral_inverse_sqrt",
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
  "slug": "integral-inverse-sqrt--b53c757c35efefd4c560167b",
  "source": {
    "blob": "9bc15fbef76f32ba4375a994d61a7477ce914cb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Varianteee9531c7cd7ab309d79045e02f747314674b76fe4770e587dce74a6dae52f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53c757c35efefd4c560167b9eade72de3fc3d1b766264c062076e6364075950",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Varianteee9531c7cd7ab309d79045e02f747314674b76fe4770e587dce74a6dae52f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aafd1930-e308-9dff-559b-540b708a3514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_inverse_sqrt (X : ℕ) (hX : 1 ≤ X) :
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), (Real.sqrt x)⁻¹) = 2 * (Real.sqrt (X : ℝ) - 1) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hint : IntervalIntegrable (fun x : ℝ => (Real.sqrt x)⁻¹) volume 1 X := by
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hXr).mpr
      (inverse_sqrt_integrable X)
  have hd : ∀ x ∈ uIcc (1 : ℝ) X,
      HasDerivAt (fun x : ℝ => 2 * Real.sqrt x) ((Real.sqrt x)⁻¹) x := by
    intro x hx
    rw [uIcc_of_le hXr] at hx
    have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
    have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx0).ne'
    simpa [div_eq_mul_inv, mul_comm, mul_left_comm] using
      (Real.hasDerivAt_sqrt hx0.ne').const_mul 2
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hint
  rw [intervalIntegral.integral_of_le hXr] at h
  simpa only [Real.sqrt_one, mul_one, mul_sub] using h

/-- The actual entire corrected quotient has the uniform requested budget, including w=one half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Varianteee9531c7cd7ab309d79045e02f747314674b76fe4770e587dce74a6dae52f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Varianteee9531c7cd7ab309d79045e02f747314674b76fe4770e587dce74a6dae52f33.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc15fbef76f32ba4375a994d61a7477ce914cb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
