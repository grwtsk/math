# actualReciprocalXiVariationBudget_no_uniform_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6723e8b-d9e2-619e-bbbd-2d99054bb282",
  "kind": "theorem",
  "lexical_name": "actualReciprocalXiVariationBudget_no_uniform_upper",
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
  "slug": "actualreciprocalxivariationbudget-no-uniform-upper--5c5126c9789ea216d2494deb",
  "source": {
    "blob": "3d22f638cf72f1cdba80f432a1efb7caf1ed5b74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variant216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c5126c9789ea216d2494debf545ebc62fca7fab47b9b9d87301c88fe0b16df6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variant216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6723e8b-d9e2-619e-bbbd-2d99054bb282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReciprocalXiVariationBudget_no_uniform_upper :
    ¬ ∃ M : ℝ, ∃ R : ℕ, ∀ q : ℕ, R ≤ q → actualReciprocalXiVariationBudget (8 * q) ≤ M := by
  rintro ⟨M, R, hM⟩
  have hb := actualReciprocalXiVariationBudget_tendsto_atTop.eventually_ge_atTop (M + 1)
  obtain ⟨q, hq, hRq⟩ := (hb.and (eventually_ge_atTop R)).exists
  have hh := hM q hRq
  linarith

end
end FormalResearch.RiemannHypothesis.ActualReciprocalXiVariationChallenge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variant216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variant216edcce15aebc7a5b6ef6d8044b748534f2647429019526a46cd4a4ef92a0b7.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d22f638cf72f1cdba80f432a1efb7caf1ed5b74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
