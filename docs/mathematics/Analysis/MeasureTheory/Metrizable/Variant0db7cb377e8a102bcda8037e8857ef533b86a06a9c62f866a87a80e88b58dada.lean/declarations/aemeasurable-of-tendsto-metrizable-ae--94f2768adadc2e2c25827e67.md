# aemeasurable_of_tendsto_metrizable_ae

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
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6c0ee59-2c53-02f0-51d3-3b1395821eab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1acc6f56-88b5-a066-b86e-049c7b40e736",
  "kind": "theorem",
  "lexical_name": "aemeasurable_of_tendsto_metrizable_ae",
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
  "slug": "aemeasurable-of-tendsto-metrizable-ae--94f2768adadc2e2c25827e67",
  "source": {
    "blob": "ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 92,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f2768adadc2e2c25827e67ae18324113e7977c34c680b4ca25abfadb30209b",
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

Occurrence: `result:1acc6f56-88b5-a066-b86e-049c7b40e736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_of_tendsto_metrizable_ae {ι} {μ : Measure α} {f : ι → α → β} {g : α → β}
    (u : Filter ι) [hu : NeBot u] [IsCountablyGenerated u] (hf : ∀ n, AEMeasurable (f n) μ)
    (h_tendsto : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) u (𝓝 (g x))) : AEMeasurable g μ := by
  rcases u.exists_seq_tendsto with ⟨v, hv⟩
  have h'f : ∀ n, AEMeasurable (f (v n)) μ := fun n => hf (v n)
  set p : α → (ℕ → β) → Prop := fun x f' => Tendsto (fun n => f' n) atTop (𝓝 (g x))
  have hp : ∀ᵐ x ∂μ, p x fun n => f (v n) x := by
    filter_upwards [h_tendsto]with x hx using hx.comp hv
  set aeSeqLim := fun x => ite (x ∈ aeSeqSet h'f p) (g x) (⟨f (v 0) x⟩ : Nonempty β).some
  refine'
    ⟨aeSeqLim,
      measurable_of_tendsto_metrizable' atTop (aeSeq.measurable h'f p)
        (tendsto_pi_nhds.mpr fun x => _),
      _⟩
  · simp_rw [aeSeq]
    split_ifs with hx
    · simp_rw [aeSeq.mk_eq_fun_of_mem_aeSeqSet h'f hx]
      exact @aeSeq.fun_prop_of_mem_aeSeqSet _ α β _ _ _ _ _ h'f x hx
    · exact tendsto_const_nhds
  · exact
      (ite_ae_eq_of_measure_compl_zero g (fun x => (⟨f (v 0) x⟩ : Nonempty β).some) (aeSeqSet h'f p)
          (aeSeq.measure_compl_aeSeqSet_eq_zero h'f hp)).symm
#align ae_measurable_of_tendsto_metrizable_ae aemeasurable_of_tendsto_metrizable_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
