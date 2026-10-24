# actualComplementaryFrequencyMass_eventually_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0789d1b6-c001-7a4e-44cd-b4a11c26105a",
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
  "slug": "actualcomplementaryfrequencymass-eventually-upper--4e0ae8fb436f23bd8a687c92",
  "source": {
    "blob": "7345853cb0d4f687a6f704c820554cd8256da87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 620,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0ae8fb436f23bd8a687c928ad1f34bba8b3be7b78f3ce4da8fcdab7515828f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0789d1b6-c001-7a4e-44cd-b4a11c26105a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–662.

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
    rw [Real.exp_neg]
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
  apply (le_div_iff₀ (show 0 < A ^ 10 by positivity)).2
  have ht : actualComplementaryFrequencyMass A ≤
      -(actualCentralFrequencyConstant / 2) * (Real.exp (2 * A) / A ^ 10) := by
    have hn : A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A ≤
        -(actualCentralFrequencyConstant / 2) := by rw [hi] at hh; nlinarith
    have hs := mul_le_mul_of_nonneg_left hn
      (show 0 ≤ Real.exp (2 * A) / A ^ 10 by positivity)
    have he' : (Real.exp (2 * A) / A ^ 10) *
        (A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A) =
        actualComplementaryFrequencyMass A := by rw [← mul_assoc, mul_comm _ (A ^ 10 *
          Real.exp (-2 * A)), he]; ring
    rw [he'] at hs
    simpa only [mul_comm] using hs
  have hs := mul_le_mul_of_nonneg_right ht (show 0 ≤ A ^ 10 by positivity)
  field_simp at hs
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7345853cb0d4f687a6f704c820554cd8256da87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
