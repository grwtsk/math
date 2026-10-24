# lintegral_tendsto_of_tendsto_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f18ac4783b5cf99f9a35574f96da48666fda7997",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da6f4f0e-d926-f85f-4eb8-76d5e27133da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59e2c1db-59b2-7bc1-7bb6-a913da6dd9ad",
  "kind": "theorem",
  "lexical_name": "lintegral_tendsto_of_tendsto_of_monotone",
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
  "slug": "lintegral-tendsto-of-tendsto-of-monotone--661c70b840f03f0c668bdbe1",
  "source": {
    "blob": "f18ac4783b5cf99f9a35574f96da48666fda7997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661c70b840f03f0c668bdbe1b0c94aef8d6ddd63f4c3425f507b0f78e60ea428",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e2c1db-59b2-7bc1-7bb6-a913da6dd9ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_tendsto_of_tendsto_of_monotone {f : ℕ → α → ℝ≥0∞} {F : α → ℝ≥0∞}
    (hf : ∀ n, AEMeasurable (f n) μ) (h_mono : ∀ᵐ x ∂μ, Monotone fun n => f n x)
    (h_tendsto : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 <| F x)) :
    Tendsto (fun n => ∫⁻ x, f n x ∂μ) atTop (𝓝 <| ∫⁻ x, F x ∂μ) := by
  have : Monotone fun n => ∫⁻ x, f n x ∂μ := fun i j hij =>
    lintegral_mono_ae (h_mono.mono fun x hx => hx hij)
  suffices key : ∫⁻ x, F x ∂μ = ⨆ n, ∫⁻ x, f n x ∂μ by
    rw [key]
    exact tendsto_atTop_iSup this
  rw [← lintegral_iSup' hf h_mono]
  refine lintegral_congr_ae ?_
  filter_upwards [h_mono, h_tendsto] with _ hx_mono hx_tendsto using
    tendsto_nhds_unique hx_tendsto (tendsto_atTop_iSup hx_mono)

/-- Weaker version of the **monotone convergence theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18ac4783b5cf99f9a35574f96da48666fda7997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
