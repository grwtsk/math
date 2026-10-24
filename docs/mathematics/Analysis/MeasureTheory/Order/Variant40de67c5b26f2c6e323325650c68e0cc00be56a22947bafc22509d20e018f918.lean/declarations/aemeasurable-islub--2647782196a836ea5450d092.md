# AEMeasurable.isLUB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ba9aa8-44a0-464b-8d2e-1f3d18fe6684",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.isLUB",
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
  "slug": "aemeasurable-islub--2647782196a836ea5450d092",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 752,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2647782196a836ea5450d0924997565cfbef1b4896d13a77dc012bc692198053",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ba9aa8-44a0-464b-8d2e-1f3d18fe6684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.isLUB {ι} {μ : Measure δ} [Countable ι] {f : ι → δ → α} {g : δ → α}
    (hf : ∀ i, AEMeasurable (f i) μ) (hg : ∀ᵐ b ∂μ, IsLUB { a | ∃ i, f i b = a } (g b)) :
    AEMeasurable g μ := by
  classical
  nontriviality α
  have hα : Nonempty α := inferInstance
  rcases isEmpty_or_nonempty ι with hι | hι
  · simp only [IsEmpty.exists_iff, ofPred_false, isLUB_empty_iff] at hg
    exact aemeasurable_const' (hg.mono fun a ha => hg.mono fun b hb => (ha _).antisymm (hb _))
  let p : δ → (ι → α) → Prop := fun x f' => IsLUB { a | ∃ i, f' i = a } (g x)
  let g_seq := (aeSeqSet hf p).piecewise g fun _ => hα.some
  have hg_seq : ∀ b, IsLUB { a | ∃ i, aeSeq hf p i b = a } (g_seq b) := by
    intro b
    simp only [g_seq, aeSeq, Set.piecewise]
    split_ifs with h
    · have h_set_eq : { a : α | ∃ i : ι, (hf i).mk (f i) b = a } =
        { a : α | ∃ i : ι, f i b = a } := by
        ext x
        simp_rw [Set.mem_ofPred_eq, aeSeq.mk_eq_fun_of_mem_aeSeqSet hf h]
      rw [h_set_eq]
      exact aeSeq.fun_prop_of_mem_aeSeqSet hf h
    · exact IsGreatest.isLUB ⟨(@exists_const (hα.some = hα.some) ι _).2 rfl, fun x ⟨i, hi⟩ => hi.ge⟩
  refine ⟨g_seq, Measurable.isLUB (aeSeq.measurable hf p) hg_seq, ?_⟩
  exact
    (ite_ae_eq_of_measure_compl_zero g (fun _ => hα.some) (aeSeqSet hf p)
        (aeSeq.measure_compl_aeSeqSet_eq_zero hf hg)).symm

/-- If a function is the greatest lower bound of countably many measurable functions,
then it is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
