# _root_.GRWTSK.Analysis.MeasureTheory.AeUIocIff.Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.Monotone.measure_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b3023a6-2e4d-c3ab-9c3e-9db6962fcaed",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.AeUIocIff.Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.Monotone.measure_iInter",
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
  "slug": "root-grwtsk-analysis-measuretheory-aeuiociff-variantc955504c3afe89c1c052--1771bb4cb62036e338782434",
  "source": {
    "blob": "dca30b1d758d93654e41f7211c74274b90412ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 536,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1771bb4cb62036e338782434fdf029b09c874da12001201dca3a9cb68f8e7683",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b3023a6-2e4d-c3ab-9c3e-9db6962fcaed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.AeUIocIff.Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.Monotone.measure_iInter [Preorder ι] [IsDirected ι (· ≥ ·)]
    [(atBot : Filter ι).IsCountablyGenerated] {s : ι → Set α} (hs : Monotone s)
    (hsm : ∀ i, NullMeasurableSet (s i) μ) (hfin : ∃ i, μ (s i) ≠ ∞) :
    μ (⋂ i, s i) = ⨅ i, μ (s i) := by
  refine le_antisymm (le_iInf fun i ↦ measure_mono <| iInter_subset _ _) ?_
  have := hfin.nonempty
  rcases exists_seq_antitone_tendsto_atTop_atBot ι with ⟨x, hxm, hx⟩
  calc
    ⨅ i, μ (s i) ≤ ⨅ n, μ (s (x n)) := le_iInf_comp (μ ∘ s) x
    _ = μ (⋂ n, s (x n)) := by
      refine .symm <| (hs.comp_antitone hxm).directed_ge.measure_iInter (fun n ↦ hsm _) ?_
      rcases hfin with ⟨k, hk⟩
      rcases (hx.eventually_le_atBot k).exists with ⟨n, hn⟩
      exact ⟨n, ne_top_of_le_ne_top hk <| measure_mono <| hs hn⟩
    _ ≤ μ (⋂ i, s i) := by
      refine measure_mono <| iInter_mono' fun i ↦ ?_
      rcases (hx.eventually_le_atBot i).exists with ⟨n, hn⟩
      exact ⟨n, hs hn⟩

/-- **Continuity from above**:
the measure of the intersection of an antitone family of measurable sets
indexed by a type with countably generated `atTop` filter
is equal to the infimum of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dca30b1d758d93654e41f7211c74274b90412ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
