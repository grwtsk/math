# ContinuousWithinAt.integral_sub_linear_isLittleO_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 997,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4010e72f-eaf0-8c01-b82b-6a4f2c38888c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2b01173-f6b9-7e74-dbee-05b7efb64e91",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.integral_sub_linear_isLittleO_ae",
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
  "slug": "continuouswithinat-integral-sub-linear-islittleo-ae--a3ae08e04be358bf014e5d38",
  "source": {
    "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 997,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ae08e04be358bf014e5d386c8c877919c31667cee0153663601816c1254666",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b01173-f6b9-7e74-dbee-05b7efb64e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.integral_sub_linear_isLittleO_ae [TopologicalSpace α]
    [OpensMeasurableSpace α] [NormedSpace ℝ E] [CompleteSpace E] {μ : Measure α}
    [IsLocallyFiniteMeasure μ] {a : α} {t : Set α} {f : α → E} (ha : ContinuousWithinAt f t a)
    (ht : MeasurableSet t) (hfm : StronglyMeasurableAtFilter f (𝓝[t] a) μ) {s : ι → Set α}
    {li : Filter ι} (hs : Tendsto s li (𝓝[t] a).smallSets) (m : ι → ℝ := fun i => (μ (s i)).toReal)
    (hsμ : (fun i => (μ (s i)).toReal) =ᶠ[li] m := by rfl) :
    (fun i => (∫ x in s i, f x ∂μ) - m i • f a) =o[li] m :=
  haveI : (𝓝[t] a).IsMeasurablyGenerated := ht.nhdsWithin_isMeasurablyGenerated _
  (ha.mono_left inf_le_left).integral_sub_linear_isLittleO_ae hfm (μ.finiteAt_nhdsWithin a t) hs m
    hsμ
#align continuous_within_at.integral_sub_linear_is_o_ae ContinuousWithinAt.integral_sub_linear_isLittleO_ae

/-- Fundamental theorem of calculus for set integrals, `nhds` version: if `μ` is a locally finite
measure and `f` is an almost everywhere measurable function that is continuous at a point `a`, then
`∫ x in s i, f x ∂μ = μ (s i) • f a + o(μ (s i))` at `li` provided that `s` tends to
`(𝓝 a).smallSets` along `li`. Since `μ (s i)` is an `ℝ≥0∞` number, we use `(μ (s i)).toReal` in
the actual statement.

Often there is a good formula for `(μ (s i)).toReal`, so the formalization can take an optional
argument `m` with this formula and a proof of `(fun i => (μ (s i)).toReal) =ᶠ[li] m`. Without these
arguments, `m i = (μ (s i)).toReal` is used in the output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93145a449b40beaf8f7f308cd682cf4c5ffae23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
