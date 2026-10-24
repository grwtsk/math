# horizontal_boundW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91b42d31544152997406a974300dcd4454a01c43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9fd0cf3-3887-9fcc-d8d9-21e4d2ac76a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f98cce57-5468-b142-c9b6-a17db74be46b",
  "kind": "theorem",
  "lexical_name": "horizontal_boundW",
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
  "slug": "horizontal-boundw--b20f674241b24152d395011a",
  "source": {
    "blob": "91b42d31544152997406a974300dcd4454a01c43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20f674241b24152d395011a4c5cdbd9a9ecd0614b55ec5efeb5760f45a08daf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98cce57-5468-b142-c9b6-a17db74be46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_boundW : ∃ C t₁ : ℝ, 0 < C ∧ 4 ≤ t₁ ∧ ∀ T : ℝ, t₁ ≤ |T| → GoodHeightW T →
    |(∫ σ in (1 / 2 : ℝ)..2, logDeriv hardyW (σ + T * I)).im| ≤ C * Real.log (|T| + 3) := by
  obtain ⟨Cf, t₁, hCf, ht₁, hfa, hgrow, hlow⟩ := hardyW_generic_inputs
  obtain ⟨C, t₂, hC, ht₂4, ht₁₂, h⟩ := Zeta23.XiPrime.ZeroCount.Generic.horizontal_bound_two_line hfa hCf hgrow hlow
  refine ⟨C, t₂, hC, ht₂4, fun T hT hg => h T hT fun ρ _ h0 him => ?_⟩
  have hT0 : T ≠ 0 := by intro h; rw [h] at hT; norm_num at hT; linarith
  exact hg ρ ⟨h0, by rw [him]; exact hT0⟩ him

/-- **local count** for any ZeroConfig whose carrier consists of non-real W-zeros with m = wMult. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b42d31544152997406a974300dcd4454a01c43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
