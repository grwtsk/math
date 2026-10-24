# signedPairing_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bef0448-1e79-5ca7-a4ca-d55f4f3f8e39",
  "kind": "theorem",
  "lexical_name": "signedPairing_bound",
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
  "slug": "signedpairing-bound--65581a238ca702e3822fd366",
  "source": {
    "blob": "3037aaacd5f596186d4ed0242dae8bad21778f22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65581a238ca702e3822fd3660cc373209873efa20a5a844b892c638cbb508e7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bef0448-1e79-5ca7-a4ca-d55f4f3f8e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedPairing_bound (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C*Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2*A),
      |errorProfile t| ≤ C*Real.exp t*Real.exp (-c*A^((1:ℝ)/10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2*C*correlationBudget*(Real.exp (A/2) +
        Real.exp A*Real.exp (-c*A^((1:ℝ)/10))) := by
  have hAt : A ≤ 2*A := by linarith
  have hall := sourcePairing_intervalIntegrable A hA
  have hleft := hall.mono_set (show uIcc lowerEndpoint A ⊆ uIcc lowerEndpoint (2*A) by
    rw [uIcc_of_le hstart, uIcc_of_le (hstart.trans hAt)]
    exact Icc_subset_Icc le_rfl hAt)
  have hright := hall.mono_set (show uIcc A (2*A) ⊆ uIcc lowerEndpoint (2*A) by
    rw [uIcc_of_le hAt, uIcc_of_le (hstart.trans hAt)]
    exact Icc_subset_Icc hstart le_rfl)
  have htail : ∀ t ∈ Icc A (2*A), |errorProfile t| ≤
      (C*Real.exp (-c*A^((1:ℝ)/10)))*Real.exp t := by
    intro t ht
    simpa only [mul_assoc, mul_left_comm, mul_comm] using hpnt t ht

  unfold signedPairing
  rw [← intervalIntegral.integral_add_adjacent_intervals hleft hright]
  apply (abs_add_le _ _).trans
  have hl := source_interval_bound A lowerEndpoint A C hA hstart hC hglobal
  have hr := source_interval_bound A A (2*A) (C*Real.exp (-c*A^((1:ℝ)/10)))
    hA hAt (by positivity) htail
  calc
    _ ≤ 2*C*correlationBudget*Real.exp (A/2) +
        2*(C*Real.exp (-c*A^((1:ℝ)/10)))*correlationBudget*Real.exp ((2*A)/2) :=
      add_le_add hl hr
    _ = _ := by rw [mul_div_cancel_left₀ A (by norm_num : (2:ℝ) ≠ 0)]; ring

/-- The actual signed pairing inherits the checked quantitative arithmetic saving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3037aaacd5f596186d4ed0242dae8bad21778f22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
