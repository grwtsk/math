# measure_set_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae6eb862b9197e3454bb5fa0de08d39e610cf5b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d670e8a-7909-898c-18d6-1e53e1a322d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f3efe18-7d35-e020-54f0-ae3759cc0783",
  "kind": "theorem",
  "lexical_name": "measure_set_eq",
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
  "slug": "measure-set-eq--24a894a0969a5184841dceba",
  "source": {
    "blob": "ae6eb862b9197e3454bb5fa0de08d39e610cf5b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a894a0969a5184841dcebad89057eb7f9d0cf3a4710c58136e0fdd8106e4bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3efe18-7d35-e020-54f0-ae3759cc0783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_set_eq (hs : IsFundamentalDomain G s μ) (ht : IsFundamentalDomain G t μ) {A : Set α}
    (hA₀ : MeasurableSet A) (hA : ∀ g : G, (fun x => g • x) ⁻¹' A = A) : μ (A ∩ s) = μ (A ∩ t) := by
  have : ∫⁻ x in s, A.indicator 1 x ∂μ = ∫⁻ x in t, A.indicator 1 x ∂μ := by
    refine hs.set_lintegral_eq ht (Set.indicator A fun _ => 1) fun g x ↦ ?_
    convert (Set.indicator_comp_right (g • · : α → α) (g := fun _ ↦ (1 : ℝ≥0∞))).symm
    rw [hA g]
  simpa [Measure.restrict_apply hA₀, lintegral_indicator _ hA₀] using this
#align measure_theory.is_fundamental_domain.measure_set_eq MeasureTheory.IsFundamentalDomain.measure_set_eq
#align measure_theory.is_add_fundamental_domain.measure_set_eq MeasureTheory.IsAddFundamentalDomain.measure_set_eq

/-- If `s` and `t` are two fundamental domains of the same action, then their measures are equal. -/
@[to_additive "If `s` and `t` are two fundamental domains of the same action, then their measures
  are equal."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6eb862b9197e3454bb5fa0de08d39e610cf5b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
