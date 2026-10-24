# aemeasurable_of_tendsto'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e34c7a18-a7a9-49bb-334b-c739593426cb",
  "kind": "lemma",
  "lexical_name": "aemeasurable_of_tendsto'",
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
  "slug": "aemeasurable-of-tendsto--cba0a9b7e568aabd24b29c9d",
  "source": {
    "blob": "8a25633b4775782565ba768b78967f5aa0ab171d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 298,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba0a9b7e568aabd24b29c9d15189c23fb0054c53b09bb7eaec895e49faa34ad",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34c7a18-a7a9-49bb-334b-c739593426cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aemeasurable_of_tendsto' {ι : Type*} {f : ι → α → ℝ≥0∞} {g : α → ℝ≥0∞}
    {μ : Measure α} (u : Filter ι) [NeBot u] [IsCountablyGenerated u]
    (hf : ∀ i, AEMeasurable (f i) μ) (hlim : ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) u (𝓝 (g a))) :
    AEMeasurable g μ := by
  rcases u.exists_seq_tendsto with ⟨v, hv⟩
  have h'f : ∀ n, AEMeasurable (f (v n)) μ := fun n ↦ hf (v n)
  set p : α → (ℕ → ℝ≥0∞) → Prop := fun x f' ↦ Tendsto f' atTop (𝓝 (g x))
  have hp : ∀ᵐ x ∂μ, p x fun n ↦ f (v n) x := by
    filter_upwards [hlim] with x hx using hx.comp hv
  classical
  set aeSeqLim := fun x ↦ ite (x ∈ aeSeqSet h'f p) (g x) (⟨f (v 0) x⟩ : Nonempty ℝ≥0∞).some
  refine ⟨aeSeqLim, measurable_of_tendsto' atTop (aeSeq.measurable h'f p)
    (tendsto_pi_nhds.mpr fun x ↦ ?_), ?_⟩
  · unfold aeSeqLim
    simp_rw [aeSeq]
    split_ifs with hx
    · simp_rw [aeSeq.mk_eq_fun_of_mem_aeSeqSet h'f hx]
      exact aeSeq.fun_prop_of_mem_aeSeqSet h'f hx
    · exact tendsto_const_nhds
  · exact (ite_ae_eq_of_measure_compl_zero g (fun x ↦ (⟨f (v 0) x⟩ : Nonempty ℝ≥0∞).some)
      (aeSeqSet h'f p) (aeSeq.measure_compl_aeSeqSet_eq_zero h'f hp)).symm

/-- A limit of a.e.-measurable `ℝ≥0∞` valued functions is a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a25633b4775782565ba768b78967f5aa0ab171d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
