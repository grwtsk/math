# actualComplementaryFrequencyMass_eventually_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d337300-71c0-f8eb-4225-e22694639250",
  "kind": "theorem",
  "lexical_name": "actualComplementaryFrequencyMass_eventually_upper",
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
  "slug": "actualcomplementaryfrequencymass-eventually-upper--af4ddd6432abfcb296db70a6",
  "source": {
    "blob": "644467b0351edd4877dd7ace9085fe1618023415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 634,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af4ddd6432abfcb296db70a643fc19b41834d050a3f44e492a722e72def6dc04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d337300-71c0-f8eb-4225-e22694639250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementaryFrequencyMass_eventually_upper :
    ∀ᶠ A : ℝ in atTop, actualComplementaryFrequencyMass A ≤
      -(actualCentralFrequencyConstant / 2) * Real.exp (2 * A) / A ^ 10 := by
  have hh := head_scaled_tendsto_zero.eventually (gt_mem_nhds
    (show (0 : ℝ) < actualCentralFrequencyConstant / 2 by
      exact div_pos actualCentralFrequencyConstant_pos (by norm_num)))
  filter_upwards [eventually_ge_atTop (1 : ℝ), actualCentralFrequencyMass_eventually_lower,
    hh] with A hA hc hh
  have hp : 0 < A := by linarith
  have he : (A ^ 10 * Real.exp (-2 * A)) * (Real.exp (2 * A) / A ^ 10) = 1 := by
    rw [show -2 * A = -(2 * A) by ring, Real.exp_neg]
    field_simp
  have hi := actualClosedPrimeHead_eq_central_add_complement hA
  have hmul := mul_le_mul_of_nonneg_left hc
    (show 0 ≤ A ^ 10 * Real.exp (-2 * A) by positivity)
  have hc' : actualCentralFrequencyConstant ≤ A ^ 10 * Real.exp (-2 * A) *
      actualCentralFrequencyMass A := by
    calc
      _ = (A ^ 10 * Real.exp (-2 * A)) *
          (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) := by
        calc
          _ = actualCentralFrequencyConstant * 1 := by ring
          _ = _ := by rw [← he]; ring
      _ ≤ _ := hmul
  have ht : actualComplementaryFrequencyMass A ≤
      -(actualCentralFrequencyConstant / 2) * (Real.exp (2 * A) / A ^ 10) := by
    have hn : A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A ≤
        -(actualCentralFrequencyConstant / 2) := by rw [hi] at hh; nlinarith
    have hs := mul_le_mul_of_nonneg_left hn
      (show 0 ≤ Real.exp (2 * A) / A ^ 10 by positivity)
    have he' : (Real.exp (2 * A) / A ^ 10) *
        (A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A) =
        actualComplementaryFrequencyMass A := by
      calc
        _ = ((A ^ 10 * Real.exp (-2 * A)) * (Real.exp (2 * A) / A ^ 10)) *
            actualComplementaryFrequencyMass A := by ring
        _ = _ := by rw [he, one_mul]
    rw [he'] at hs
    simpa only [mul_comm] using hs
  simpa only [mul_div_assoc] using ht

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644467b0351edd4877dd7ace9085fe1618023415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
