# hardyW_generic_inputs

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
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06c197be-9783-6459-c720-64c1df31e0f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c20faee2-9d49-de11-957a-8a97ff095c4b",
  "kind": "theorem",
  "lexical_name": "hardyW_generic_inputs",
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
  "slug": "hardyw-generic-inputs--68c773ee1385b1c1333ef6be",
  "source": {
    "blob": "91b42d31544152997406a974300dcd4454a01c43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68c773ee1385b1c1333ef6be29b4750b0b03af90c58c38c55634b1dae06f47d0",
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

Occurrence: `result:c20faee2-9d49-de11-957a-8a97ff095c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_generic_inputs : ∃ (Cf t₁ : ℝ), 0 < Cf ∧ 2 ≤ t₁ ∧
    (∀ t : ℝ, t₁ ≤ |t| → AnalyticOnNhd ℂ hardyW (closedBall (2 + t * I) (91 / 50))) ∧
    (∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖hardyW s‖ ≤ Cf * |s.im| ^ 2) ∧
    (∀ t : ℝ, t₁ ≤ |t| → 1 ≤ ‖hardyW (2 + t * I)‖) := by
  obtain ⟨Cf, hCf, hgrow⟩ := hardyW_growth
  obtain ⟨t₁, ht₁, hlow⟩ := hardyW_two_line_lower
  exact ⟨Cf, t₁, hCf, ht₁, fun t ht => hardyW_analyticOnNhd_disc t (le_trans ht₁ ht), hgrow,
    fun t ht => (hlow t ht).2⟩

/-- **horizontal sides**: |Im ∫_{1/2}^{2} (W′/W)(σ+iT) dσ| ≤ C log(|T|+3) at good heights |T| ≥ t₁. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b42d31544152997406a974300dcd4454a01c43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
