# measurable_uncurry_of_continuous_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2034,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b0cdce-287d-4900-1ace-9ca4312978f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01d5749f-00f0-5b1d-221c-5439b73375bd",
  "kind": "theorem",
  "lexical_name": "measurable_uncurry_of_continuous_of_measurable",
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
  "slug": "measurable-uncurry-of-continuous-of-measurable--edba02a1d4a426a9aaadf0a2",
  "source": {
    "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2065,
    "line": 2034,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edba02a1d4a426a9aaadf0a2806d54933c2fd785ae73f618cfab3aedc0990cbb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01d5749f-00f0-5b1d-221c-5439b73375bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2034–2065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_uncurry_of_continuous_of_measurable {α β ι : Type*} [TopologicalSpace ι]
    [MetrizableSpace ι] [MeasurableSpace ι] [SecondCountableTopology ι] [OpensMeasurableSpace ι]
    {mβ : MeasurableSpace β} [TopologicalSpace β] [PseudoMetrizableSpace β] [BorelSpace β]
    {m : MeasurableSpace α} {u : ι → α → β} (hu_cont : ∀ x, Continuous fun i => u i x)
    (h : ∀ i, Measurable (u i)) : Measurable (Function.uncurry u) := by
  obtain ⟨t_sf, ht_sf⟩ :
    ∃ t : ℕ → SimpleFunc ι ι, ∀ j x, Tendsto (fun n => u (t n j) x) atTop (𝓝 <| u j x) := by
    have h_str_meas : StronglyMeasurable (id : ι → ι) := stronglyMeasurable_id
    refine' ⟨h_str_meas.approx, fun j x => _⟩
    exact ((hu_cont x).tendsto j).comp (h_str_meas.tendsto_approx j)
  let U (n : ℕ) (p : ι × α) := u (t_sf n p.fst) p.snd
  have h_tendsto : Tendsto U atTop (𝓝 fun p => u p.fst p.snd) := by
    rw [tendsto_pi_nhds]
    exact fun p => ht_sf p.fst p.snd
  refine' measurable_of_tendsto_metrizable (fun n => _) h_tendsto
  have h_meas : Measurable fun p : (t_sf n).range × α => u (↑p.fst) p.snd := by
    have :
      (fun p : ↥(t_sf n).range × α => u (↑p.fst) p.snd) =
        (fun p : α × (t_sf n).range => u (↑p.snd) p.fst) ∘ Prod.swap :=
      rfl
    rw [this, @measurable_swap_iff α (↥(t_sf n).range) β m]
    exact measurable_from_prod_countable fun j => h j
  have :
    (fun p : ι × α => u (t_sf n p.fst) p.snd) =
      (fun p : ↥(t_sf n).range × α => u p.fst p.snd) ∘ fun p : ι × α =>
        (⟨t_sf n p.fst, SimpleFunc.mem_range_self _ _⟩, p.snd) :=
    rfl
  simp_rw [this]
  refine' h_meas.comp (Measurable.prod_mk _ measurable_snd)
  exact ((t_sf n).measurable.comp measurable_fst).subtype_mk
#align measure_theory.measurable_uncurry_of_continuous_of_measurable MeasureTheory.measurable_uncurry_of_continuous_of_measurable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean#L2034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9d1ea858d5904310c900dace99cf94dacc14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
