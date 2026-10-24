# measurable_of_tendsto_metrizable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b03e4199-dbed-740f-a873-1ee7f0327012",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e448456-1067-ac26-17e4-2d11c2c71172",
  "kind": "theorem",
  "lexical_name": "measurable_of_tendsto_metrizable'",
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
  "slug": "measurable-of-tendsto-metrizable--4245c098394a9b7c6a2b3bae",
  "source": {
    "blob": "ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 66,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4245c098394a9b7c6a2b3bae1ff522ba6d34b3c219138a6192bccfb03fb1c776",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e448456-1067-ac26-17e4-2d11c2c71172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_tendsto_metrizable' {ι} {f : ι → α → β} {g : α → β} (u : Filter ι) [NeBot u]
    [IsCountablyGenerated u] (hf : ∀ i, Measurable (f i)) (lim : Tendsto f u (𝓝 g)) :
    Measurable g := by
  letI : PseudoMetricSpace β := pseudoMetrizableSpacePseudoMetric β
  apply measurable_of_is_closed'
  intro s h1s h2s h3s
  have : Measurable fun x => infNndist (g x) s := by
    suffices : Tendsto (fun i x => infNndist (f i x) s) u (𝓝 fun x => infNndist (g x) s)
    exact measurable_of_tendsto_nnreal' u (fun i => (hf i).infNndist) this
    rw [tendsto_pi_nhds] at lim ⊢
    intro x
    exact ((continuous_infNndist_pt s).tendsto (g x)).comp (lim x)
  have h4s : g ⁻¹' s = (fun x => infNndist (g x) s) ⁻¹' {0} := by
    ext x
    simp [h1s, ← h1s.mem_iff_infDist_zero h2s, ← NNReal.coe_eq_zero]
  rw [h4s]
  exact this (measurableSet_singleton 0)
#align measurable_of_tendsto_metrizable' measurable_of_tendsto_metrizable'

/-- A sequential limit of measurable functions valued in a (pseudo) metrizable space is
measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
