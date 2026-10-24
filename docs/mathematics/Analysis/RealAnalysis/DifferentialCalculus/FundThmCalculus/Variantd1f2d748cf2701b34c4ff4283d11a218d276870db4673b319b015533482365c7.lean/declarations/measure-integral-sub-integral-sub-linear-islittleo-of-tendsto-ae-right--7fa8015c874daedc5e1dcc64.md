# measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc9f83da-8e04-6c14-bcbe-6f10393d946d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:704a7fd8-2d34-8e8b-3d67-d54b9ce6d650",
  "kind": "theorem",
  "lexical_name": "measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right",
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
  "slug": "measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-right--7fa8015c874daedc5e1dcc64",
  "source": {
    "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 421,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fa8015c874daedc5e1dcc64103c76e7a857bba666fb8a29a23d329573eb124f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:704a7fd8-2d34-8e8b-3d67-d54b9ce6d650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right
    (hab : IntervalIntegrable f μ a b) (hmeas : StronglyMeasurableAtFilter f lb' μ)
    (hf : Tendsto f (lb' ⊓ ae μ) (𝓝 c)) (hu : Tendsto u lt lb) (hv : Tendsto v lt lb) :
    (fun t => ((∫ x in a..v t, f x ∂μ) - ∫ x in a..u t, f x ∂μ) - ∫ _ in u t..v t, c ∂μ) =o[lt]
      fun t => ∫ _ in u t..v t, (1 : ℝ) ∂μ := by
  simpa using
    measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae hab stronglyMeasurableAt_bot
      hmeas ((tendsto_bot : Tendsto _ ⊥ (𝓝 (0 : E))).mono_left inf_le_left) hf
      (tendsto_const_pure : Tendsto _ _ (pure a)) tendsto_const_pure hu hv

/-- **Fundamental theorem of calculus-1**, strict derivative in left endpoint for a locally finite
measure.

Let `f` be a measurable function integrable on `a..b`. Let `(la, la')` be a pair of
`intervalIntegral.FTCFilter`s around `a`. Suppose that `f` has a finite limit `c` at `la' ⊓ ae μ`.

Then `∫ x in v..b, f x ∂μ - ∫ x in u..b, f x ∂μ = -∫ x in u..v, c ∂μ + o(∫ x in u..v, (1:ℝ) ∂μ)`
as `u` and `v` tend to `la`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
