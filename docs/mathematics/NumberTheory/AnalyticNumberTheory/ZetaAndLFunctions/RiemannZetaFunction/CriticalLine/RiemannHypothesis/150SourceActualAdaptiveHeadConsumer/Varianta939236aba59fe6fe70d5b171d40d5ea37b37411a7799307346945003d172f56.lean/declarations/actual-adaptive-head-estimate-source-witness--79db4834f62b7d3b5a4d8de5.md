# actual_adaptive_head_estimate_source_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1351fccd-1571-b482-cea1-9c8005feed96",
  "kind": "theorem",
  "lexical_name": "actual_adaptive_head_estimate_source_witness",
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
  "slug": "actual-adaptive-head-estimate-source-witness--79db4834f62b7d3b5a4d8de5",
  "source": {
    "blob": "5129fdd6077ced5547f97dcf9566c2c8a01e1d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Varianta939236aba59fe6fe70d5b171d40d5ea37b37411a7799307346945003d172f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79db4834f62b7d3b5a4d8de5c3e0b2fe36b82ae272e9394b2a1fd09f1afcdfe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Varianta939236aba59fe6fe70d5b171d40d5ea37b37411a7799307346945003d172f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1351fccd-1571-b482-cea1-9c8005feed96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adaptive_head_estimate_source_witness :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ η Q D : ℝ, 1 ≤ η → 91 ≤ Q →
      (∀ A : ℝ, Q ≤ A →
        -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) →
      EstimateObligation := by
  obtain ⟨A0, hA0, ht⟩ := actualAdaptiveSharpTail_uniform_bound
  refine ⟨A0, hA0, fun η Q D hη hQ hhead => ?_⟩
  exact estimate_of_actual_adaptive_head hQ
    (fun A hQA => ht η Q A hη hQ hQA) hhead

end RH16ActualAdaptiveHeadConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Varianta939236aba59fe6fe70d5b171d40d5ea37b37411a7799307346945003d172f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Varianta939236aba59fe6fe70d5b171d40d5ea37b37411a7799307346945003d172f56.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5129fdd6077ced5547f97dcf9566c2c8a01e1d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
