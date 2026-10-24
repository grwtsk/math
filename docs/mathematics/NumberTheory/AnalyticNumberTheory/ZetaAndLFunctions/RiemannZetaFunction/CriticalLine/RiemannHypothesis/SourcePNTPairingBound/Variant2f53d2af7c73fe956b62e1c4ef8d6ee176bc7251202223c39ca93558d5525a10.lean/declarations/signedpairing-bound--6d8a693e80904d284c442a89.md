# signedPairing_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab066081-a3c9-ea97-c87e-a62bd3fc7c50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27e05af3-ea7a-3393-c0ce-bf9a58a7d940",
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
  "slug": "signedpairing-bound--6d8a693e80904d284c442a89",
  "source": {
    "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d8a693e80904d284c442a895563ca27d477a4cd639099c4e0ef7a2a489419f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27e05af3-ea7a-3393-c0ce-bf9a58a7d940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–116.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c751e91015f391c8cb811c6de54a47e74f3e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
