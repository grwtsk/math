# measure_integral_sub_linear_isLittleO_of_tendsto_ae'

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:703869b8-d4f3-4ce7-9950-608485da3aad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed935977-1175-eaf3-7f3b-e928a5610548",
  "kind": "theorem",
  "lexical_name": "measure_integral_sub_linear_isLittleO_of_tendsto_ae'",
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
  "slug": "measure-integral-sub-linear-islittleo-of-tendsto-ae--42a460eb2f18fab3fbc71873",
  "source": {
    "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a460eb2f18fab3fbc718730172aa6a0ea4a2e6a4d8fd3a9a2ccc12cc5d7916",
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

Occurrence: `result:ed935977-1175-eaf3-7f3b-e928a5610548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_integral_sub_linear_isLittleO_of_tendsto_ae' [IsMeasurablyGenerated l']
    [TendstoIxxClass Ioc l l'] (hfm : StronglyMeasurableAtFilter f l' μ)
    (hf : Tendsto f (l' ⊓ ae μ) (𝓝 c)) (hl : μ.FiniteAtFilter l') (hu : Tendsto u lt l)
    (hv : Tendsto v lt l) :
    (fun t => (∫ x in u t..v t, f x ∂μ) - ∫ _ in u t..v t, c ∂μ) =o[lt] fun t =>
      ∫ _ in u t..v t, (1 : ℝ) ∂μ := by
  by_cases hE : CompleteSpace E; swap
  · simp [intervalIntegral, integral, hE]
  have A := hf.integral_sub_linear_isLittleO_ae hfm hl (hu.Ioc hv)
  have B := hf.integral_sub_linear_isLittleO_ae hfm hl (hv.Ioc hu)
  simp_rw [integral_const', sub_smul]
  refine ((A.trans_le fun t ↦ ?_).sub (B.trans_le fun t ↦ ?_)).congr_left fun t ↦ ?_
  · cases le_total (u t) (v t) <;> simp [*]
  · cases le_total (u t) (v t) <;> simp [*]
  · simp_rw [intervalIntegral]
    abel

/-- **Fundamental theorem of calculus-1**, local version for any measure.
Let filters `l` and `l'` be related by `TendstoIxxClass Ioc`.
If `f` has a finite limit `c` at `l ⊓ ae μ`, where `μ` is a measure
finite at `l`, then `∫ x in u..v, f x ∂μ = μ (Ioc u v) • c + o(μ(Ioc u v))` as both
`u` and `v` tend to `l` so that `u ≤ v`.

See also `measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le` for a version assuming
`[intervalIntegral.FTCFilter a l l']` and `[MeasureTheory.IsLocallyFiniteMeasure μ]`. If `l` is one
of `𝓝[≥] a`, `𝓝[≤] a`, `𝓝 a`, then it's easier to apply the non-primed version.  The primed version
also works, e.g., for `l = l' = Filter.atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
