# nontrivial_sourceMass_uniform_positive_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69d2f74e-a908-6ed8-e997-04f9d07cb0c2",
  "kind": "theorem",
  "lexical_name": "nontrivial_sourceMass_uniform_positive_floor",
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
  "slug": "nontrivial-sourcemass-uniform-positive-floor--0336cc7d0a07116fdcca725c",
  "source": {
    "blob": "f618687c6299fd59b222b94050d514ad1c0d373a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0336cc7d0a07116fdcca725c02ff8ec8c2022b507dc7d29befa72fc2af347ca7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d2f74e-a908-6ed8-e997-04f9d07cb0c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_sourceMass_uniform_positive_floor (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hc⟩ := nontrivial_reference_visible_kernel ρ hρ hρre
  refine ⟨‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2, hc, ?_⟩
  intro α hα
  exact sourceMass_kernel_overlap_le u hu hTu α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f618687c6299fd59b222b94050d514ad1c0d373a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
