# measurable_limit_of_tendsto_metrizable_ae

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
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9a9679f-0e5b-33aa-c40e-eb09bc9fe9ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8d6f89e-13db-550d-be12-4f5d4452e843",
  "kind": "theorem",
  "lexical_name": "measurable_limit_of_tendsto_metrizable_ae",
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
  "slug": "measurable-limit-of-tendsto-metrizable-ae--3eeb29c1019e113373202bcf",
  "source": {
    "blob": "ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 146,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eeb29c1019e113373202bcfd968e9b68c068f8509ba09df6cc20d58ff51d975",
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

Occurrence: `result:b8d6f89e-13db-550d-be12-4f5d4452e843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_limit_of_tendsto_metrizable_ae {ι} [Countable ι] [Nonempty ι] {μ : Measure α}
    {f : ι → α → β} {L : Filter ι} [L.IsCountablyGenerated] (hf : ∀ n, AEMeasurable (f n) μ)
    (h_ae_tendsto : ∀ᵐ x ∂μ, ∃ l : β, Tendsto (fun n => f n x) L (𝓝 l)) :
    ∃ (f_lim : α → β) (hf_lim_meas : Measurable f_lim),
      ∀ᵐ x ∂μ, Tendsto (fun n => f n x) L (𝓝 (f_lim x)) := by
  inhabit ι
  rcases eq_or_neBot L with (rfl | hL)
  · exact ⟨(hf default).mk _, (hf default).measurable_mk, eventually_of_forall fun x => tendsto_bot⟩
  let p : α → (ι → β) → Prop := fun x f' => ∃ l : β, Tendsto (fun n => f' n) L (𝓝 l)
  have hp_mem : ∀ x ∈ aeSeqSet hf p, p x fun n => f n x := fun x hx =>
    aeSeq.fun_prop_of_mem_aeSeqSet hf hx
  have h_ae_eq : ∀ᵐ x ∂μ, ∀ n, aeSeq hf p n x = f n x := aeSeq.aeSeq_eq_fun_ae hf h_ae_tendsto
  set f_lim : α → β := fun x => dite (x ∈ aeSeqSet hf p) (fun h => (hp_mem x h).choose)
    fun _ => (⟨f default x⟩ : Nonempty β).some
  have hf_lim : ∀ x, Tendsto (fun n => aeSeq hf p n x) L (𝓝 (f_lim x)) := by
    intro x
    simp only [aeSeq]
    split_ifs with h
    · refine' (hp_mem x h).choose_spec.congr fun n => _
      exact (aeSeq.mk_eq_fun_of_mem_aeSeqSet hf h n).symm
    · exact tendsto_const_nhds
  have h_ae_tendsto_f_lim : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) L (𝓝 (f_lim x)) :=
    h_ae_eq.mono fun x hx => (hf_lim x).congr hx
  have h_f_lim_meas : Measurable f_lim :=
    measurable_of_tendsto_metrizable' L (aeSeq.measurable hf p)
      (tendsto_pi_nhds.mpr fun x => hf_lim x)
  exact ⟨f_lim, h_f_lim_meas, h_ae_tendsto_f_lim⟩
#align measurable_limit_of_tendsto_metrizable_ae measurable_limit_of_tendsto_metrizable_ae

end Limits

section TendstoIndicator

variable {α : Type _} [MeasurableSpace α] {A : Set α}
variable {ι : Type _} (L : Filter ι) [IsCountablyGenerated L] {As : ι → Set α}

/-- If the indicator functions of measurable sets `Aᵢ` converge to the indicator function of
a set `A` along a nontrivial countably generated filter, then `A` is also measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
