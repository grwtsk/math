# ContinuousWithinAt.integral_sub_linear_isLittleO_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf48736f6e0c82864b67a48ba180a7d32a8d6123",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0541a4d6-5557-7424-e2b4-9cf91b8dc3dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:404fab05-48ab-2c06-7711-9cad4d4f03d5",
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
  "slug": "continuouswithinat-integral-sub-linear-islittleo-ae--561cba909f05ea03df160673",
  "source": {
    "blob": "cf48736f6e0c82864b67a48ba180a7d32a8d6123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561cba909f05ea03df160673ac864f8931a92afe635eda10f75595b5dab95b54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:404fab05-48ab-2c06-7711-9cad4d4f03d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.integral_sub_linear_isLittleO_ae [TopologicalSpace X]
    [OpensMeasurableSpace X] {μ : Measure X}
    [IsLocallyFiniteMeasure μ] {x : X} {t : Set X} {f : X → E} (hx : ContinuousWithinAt f t x)
    (ht : MeasurableSet t) (hfm : StronglyMeasurableAtFilter f (𝓝[t] x) μ) {s : ι → Set X}
    {li : Filter ι} (hs : Tendsto s li (𝓝[t] x).smallSets) (m : ι → ℝ := fun i => μ.real (s i))
    (hsμ : (fun i => μ.real (s i)) =ᶠ[li] m := by rfl) :
    (fun i => (∫ x in s i, f x ∂μ) - m i • f x) =o[li] m :=
  haveI : (𝓝[t] x).IsMeasurablyGenerated := ht.nhdsWithin_isMeasurablyGenerated _
  (hx.mono_left inf_le_left).integral_sub_linear_isLittleO_ae hfm (μ.finiteAt_nhdsWithin x t) hs m
    hsμ

/-- Fundamental theorem of calculus for set integrals, `nhds` version: if `μ` is a locally finite
measure and `f` is an almost everywhere measurable function that is continuous at a point `a`, then
`∫ x in s i, f x ∂μ = μ (s i) • f a + o(μ (s i))` at `li` provided that `s` tends to
`(𝓝 a).smallSets` along `li`. Since `μ (s i)` is an `ℝ≥0∞` number, we use `μ.real (s i)` in
the actual statement.

Often there is a good formula for `μ.real (s i)`, so the formalization can take an optional
argument `m` with this formula and a proof of `(fun i => μ.real (s i)) =ᶠ[li] m`. Without these
arguments, `m i = μ.real (s i)` is used in the output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant214f00b0a6e937f11642784124358e25e13d7808358f0f879c9c7ae16f359e73.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf48736f6e0c82864b67a48ba180a7d32a8d6123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
