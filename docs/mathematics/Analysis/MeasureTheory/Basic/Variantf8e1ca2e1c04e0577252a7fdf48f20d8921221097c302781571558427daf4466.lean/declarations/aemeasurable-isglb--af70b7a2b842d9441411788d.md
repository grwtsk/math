# AEMeasurable.isGLB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:965c46a4-8395-0fe3-d976-e2a1a9af897e",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.isGLB",
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
  "slug": "aemeasurable-isglb--af70b7a2b842d9441411788d",
  "source": {
    "blob": "bf7761044a2eca410d520e2d468bbdb6aa480c7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1237,
    "line": 1211,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af70b7a2b842d9441411788d72334e532c1a544b904928979b418d66d8a7e21d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965c46a4-8395-0fe3-d976-e2a1a9af897e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.isGLB {ι} {μ : Measure δ} [Countable ι] {f : ι → δ → α} {g : δ → α}
    (hf : ∀ i, AEMeasurable (f i) μ) (hg : ∀ᵐ b ∂μ, IsGLB { a | ∃ i, f i b = a } (g b)) :
    AEMeasurable g μ := by
  nontriviality α
  haveI hα : Nonempty α := inferInstance
  cases' isEmpty_or_nonempty ι with hι hι
  · simp only [IsEmpty.exists_iff, setOf_false, isGLB_empty_iff] at hg
    exact aemeasurable_const' (hg.mono fun a ha => hg.mono fun b hb => (hb _).antisymm (ha _))
  let p : δ → (ι → α) → Prop := fun x f' => IsGLB { a | ∃ i, f' i = a } (g x)
  let g_seq := (aeSeqSet hf p).piecewise g fun _ => hα.some
  have hg_seq : ∀ b, IsGLB { a | ∃ i, aeSeq hf p i b = a } (g_seq b) := by
    intro b
    simp only [aeSeq, Set.piecewise]
    split_ifs with h
    · have h_set_eq : { a : α | ∃ i : ι, (hf i).mk (f i) b = a } =
        { a : α | ∃ i : ι, f i b = a } := by
        ext x
        simp_rw [Set.mem_setOf_eq, aeSeq.mk_eq_fun_of_mem_aeSeqSet hf h]
      rw [h_set_eq]
      exact aeSeq.fun_prop_of_mem_aeSeqSet hf h
    · exact IsLeast.isGLB ⟨(@exists_const (hα.some = hα.some) ι _).2 rfl, fun x ⟨i, hi⟩ => hi.le⟩
  refine' ⟨g_seq, Measurable.isGLB (aeSeq.measurable hf p) hg_seq, _⟩
  exact
    (ite_ae_eq_of_measure_compl_zero g (fun _ => hα.some) (aeSeqSet hf p)
        (aeSeq.measure_compl_aeSeqSet_eq_zero hf hg)).symm
#align ae_measurable.is_glb AEMeasurable.isGLB

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7761044a2eca410d520e2d468bbdb6aa480c7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
