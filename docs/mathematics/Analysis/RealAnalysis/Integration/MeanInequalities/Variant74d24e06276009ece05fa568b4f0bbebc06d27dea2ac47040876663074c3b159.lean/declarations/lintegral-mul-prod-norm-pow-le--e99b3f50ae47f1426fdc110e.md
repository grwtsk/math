# lintegral_mul_prod_norm_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40630c4f-eed1-2f89-1678-d0a001ad7df8",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_prod_norm_pow_le",
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
  "slug": "lintegral-mul-prod-norm-pow-le--e99b3f50ae47f1426fdc110e",
  "source": {
    "blob": "931e69ad6afb3c17b677b6029211c720218e4863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e99b3f50ae47f1426fdc110eb0dab5c34c944270ee11e466dab30d8920079b9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40630c4f-eed1-2f89-1678-d0a001ad7df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_prod_norm_pow_le {α ι : Type*} [MeasurableSpace α] {μ : Measure α}
    (s : Finset ι) {g : α → ℝ≥0∞} {f : ι → α → ℝ≥0∞} (hg : AEMeasurable g μ)
    (hf : ∀ i ∈ s, AEMeasurable (f i) μ) (q : ℝ) {p : ι → ℝ} (hpq : q + ∑ i ∈ s, p i = 1)
    (hq : 0 ≤ q) (hp : ∀ i ∈ s, 0 ≤ p i) :
    ∫⁻ a, g a ^ q * ∏ i ∈ s, f i a ^ p i ∂μ ≤
      (∫⁻ a, g a ∂μ) ^ q * ∏ i ∈ s, (∫⁻ a, f i a ∂μ) ^ p i := by
  suffices
    ∫⁻ t, ∏ j ∈ insertNone s, Option.elim j (g t) (fun j ↦ f j t) ^ Option.elim j q p ∂μ
    ≤ ∏ j ∈ insertNone s, (∫⁻ t, Option.elim j (g t) (fun j ↦ f j t) ∂μ) ^ Option.elim j q p by
    simpa using this
  refine ENNReal.lintegral_prod_norm_pow_le _ ?_ ?_ ?_
  · rintro (_|i) hi
    · exact hg
    · refine hf i ?_
      simpa using hi
  · simp_rw [sum_insertNone, Option.elim]
    exact hpq
  · rintro (_|i) hi
    · exact hq
    · refine hp i ?_
      simpa using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e69ad6afb3c17b677b6029211c720218e4863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
