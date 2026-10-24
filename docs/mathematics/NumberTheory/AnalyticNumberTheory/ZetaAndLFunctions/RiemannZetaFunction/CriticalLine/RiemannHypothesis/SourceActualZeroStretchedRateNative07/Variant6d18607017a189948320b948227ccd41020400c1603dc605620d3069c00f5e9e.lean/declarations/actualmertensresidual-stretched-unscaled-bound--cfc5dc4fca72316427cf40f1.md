# actualMertensResidual_stretched_unscaled_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d63c58b-590b-6a15-513c-5169e0130fc6",
  "kind": "theorem",
  "lexical_name": "actualMertensResidual_stretched_unscaled_bound",
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
  "slug": "actualmertensresidual-stretched-unscaled-bound--cfc5dc4fca72316427cf40f1",
  "source": {
    "blob": "cfc0d7f7f0e0452a3b116cf867c7a0c5a2337d40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 491,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc5dc4fca72316427cf40f17a319b968c1b6b88f17d05cc9bba229a830e49c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d63c58b-590b-6a15-513c-5169e0130fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMertensResidual_stretched_unscaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      |mertensResidual A| ≤ C * Real.exp (A - c * A ^ (1 / 10 : ℝ)) / A ^ 9 := by
  obtain ⟨C,c,R0,hC,hc,hR0,hb⟩ := actualMertensResidual_stretched_scaled_bound
  refine ⟨C,c,R0,hC,hc,hR0,?_⟩
  intro A hA
  have hAp : 0 < A := by linarith [hR0.trans hA]
  have hs : 0 < A ^ 9 * Real.exp (-A) := by positivity
  have hh := hb A hA
  rw [abs_mul,abs_of_pos hs] at hh
  calc
    _ = ((A ^ 9 * Real.exp (-A)) * |mertensResidual A|) /
        (A ^ 9 * Real.exp (-A)) := by field_simp
    _ ≤ (C * Real.exp (-c * A ^ (1 / 10 : ℝ))) /
        (A ^ 9 * Real.exp (-A)) := div_le_div_of_nonneg_right hh hs.le
    _ = _ := by
      rw [Real.exp_sub,Real.exp_neg]
      field_simp

end
end FormalResearch.RiemannHypothesis.SourceActualZeroStretchedRate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variant6d18607017a189948320b948227ccd41020400c1603dc605620d3069c00f5e9e.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc0d7f7f0e0452a3b116cf867c7a0c5a2337d40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
