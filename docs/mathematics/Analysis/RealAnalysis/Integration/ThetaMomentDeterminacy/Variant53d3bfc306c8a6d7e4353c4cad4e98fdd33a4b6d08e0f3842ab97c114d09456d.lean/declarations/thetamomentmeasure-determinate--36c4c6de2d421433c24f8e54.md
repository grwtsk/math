# thetaMomentMeasure_determinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ef512b7-6978-6d68-d5c2-7917e981eadb",
  "kind": "theorem",
  "lexical_name": "thetaMomentMeasure_determinate",
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
  "slug": "thetamomentmeasure-determinate--36c4c6de2d421433c24f8e54",
  "source": {
    "blob": "2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c4c6de2d421433c24f8e546c094159ccf754ba4eca4ddc3cab69e7b0b7de20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef512b7-6978-6d68-d5c2-7917e981eadb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaMomentMeasure_determinate
    {t : ℝ} (ht : 0 ≤ t) (ν : Measure ℝ) [IsFiniteMeasure ν]
    (hint : ∀ n : ℕ, Integrable (fun x : ℝ => x ^ n) ν)
    (hmom : ∀ n : ℕ, (∫ x : ℝ, x ^ n ∂ν) = moment t n) :
    ν = momentMeasure t := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  let C : ℝ := ThetaPositiveLift.thetaPhiDecayConstant * Real.exp (-3 * t)
  have hbound (n : ℕ) : moment t (2 * n) ≤ ((2 * n).factorial : ℝ) * C := by
    simpa only [C, mul_assoc] using moment_le_factorial_bound (2 * n) ht
  have hνexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν :=
    integrable_exp_abs_half_of_even_factorial_bound ν C (fun n => hint (2 * n))
      (fun n => (hmom (2 * n)).trans_le (hbound n))
  have hμexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) (momentMeasure t) :=
    integrable_exp_abs_half_of_even_factorial_bound (momentMeasure t) C
      (fun n => moment_power_integrable (2 * n) ht) hbound
  exact measure_eq_of_moments_of_exp_abs_half ν (momentMeasure t) hνexp hμexp hmom

end
end FormalResearch.RiemannHypothesis.ThetaMomentDeterminacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
