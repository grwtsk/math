# actualSourceQuadraticValue_stretched_scaled_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f645679f-fb84-0110-a1c3-b3fc1caf8fcc",
  "kind": "theorem",
  "lexical_name": "actualSourceQuadraticValue_stretched_scaled_bound",
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
  "slug": "actualsourcequadraticvalue-stretched-scaled-bound--b568c5a1b32d45defefdca8b",
  "source": {
    "blob": "4c6da6d9168c3594b8762a83d5c64e9cef0208a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 392,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b568c5a1b32d45defefdca8bad25b0125523ee917ca218540760ea01d0c2b70b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f645679f-fb84-0110-a1c3-b3fc1caf8fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceQuadraticValue_stretched_scaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      |A ^ 9 * Real.exp (-A) * sourceQuadraticValue explicitSecondDerivative A| ≤
        C * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨C,c,R0,hC,hc,hR0,hb⟩ := actualFullZeroContribution_stretched_scaled_bound
  refine ⟨C,c,R0,hC,hc,hR0,?_⟩
  intro A hA
  have h := hb A hA
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A (hR0.trans hA)] at h
  simpa only [← Complex.ofReal_mul,Complex.norm_real,Real.norm_eq_abs] using h

end
end FormalResearch.RiemannHypothesis.SourceActualZeroStretchedRate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6da6d9168c3594b8762a83d5c64e9cef0208a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
