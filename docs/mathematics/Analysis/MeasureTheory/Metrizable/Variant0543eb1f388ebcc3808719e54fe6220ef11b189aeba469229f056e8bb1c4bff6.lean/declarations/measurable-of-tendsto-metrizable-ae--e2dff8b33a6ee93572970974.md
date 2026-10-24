# measurable_of_tendsto_metrizable_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62fd7630-0154-f9f2-58bf-ae120465d3c1",
  "kind": "theorem",
  "lexical_name": "measurable_of_tendsto_metrizable_ae",
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
  "slug": "measurable-of-tendsto-metrizable-ae--e2dff8b33a6ee93572970974",
  "source": {
    "blob": "09e7aeba209eb07846383f5bf8f8cbf6c85fd7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2dff8b33a6ee93572970974a173e6ae488a30ad84da623fe36391a310b8fe58",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62fd7630-0154-f9f2-58bf-ae120465d3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_tendsto_metrizable_ae {μ : Measure α} [μ.IsComplete] {f : ℕ → α → β}
    {g : α → β} (hf : ∀ n, Measurable (f n))
    (h_ae_tendsto : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (g x))) : Measurable g :=
  aemeasurable_iff_measurable.mp
    (aemeasurable_of_tendsto_metrizable_ae' (fun i => (hf i).aemeasurable) h_ae_tendsto)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0543eb1f388ebcc3808719e54fe6220ef11b189aeba469229f056e8bb1c4bff6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e7aeba209eb07846383f5bf8f8cbf6c85fd7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
