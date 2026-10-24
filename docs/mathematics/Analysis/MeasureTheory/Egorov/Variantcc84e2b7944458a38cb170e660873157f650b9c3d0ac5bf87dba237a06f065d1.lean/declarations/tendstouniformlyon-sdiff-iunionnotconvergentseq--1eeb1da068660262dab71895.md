# tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cfce191c2daec0ea6807a3df2233b70375c562f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7169dcb-a031-8d9f-3fca-cb845ecbfdbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bce1a41b-da91-3a65-7a31-27f83932d3f5",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq",
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
  "slug": "tendstouniformlyon-sdiff-iunionnotconvergentseq--1eeb1da068660262dab71895",
  "source": {
    "blob": "6cfce191c2daec0ea6807a3df2233b70375c562f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 156,
    "path": "GRWTSK/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eeb1da068660262dab7189566c67466f17182b4a33393ebf74d1f35d77b52f0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce1a41b-da91-3a65-7a31-27f83932d3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq (hε : 0 < ε)
    (hf : ∀ n, Measurable (fun a ↦ edist (f n a) (g a))) (hsm : MeasurableSet s)
    (hs : μ s ≠ ∞) (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) :
    TendstoUniformlyOn f g atTop (s \ Egorov.iUnionNotConvergentSeq hε hf hsm hs hfg) := by
  rw [EMetric.tendstoUniformlyOn_iff]
  intro δ hδ
  obtain ⟨N, hN⟩ := exists_inv_nat_lt hδ.ne'
  rw [eventually_atTop]
  refine ⟨Egorov.notConvergentSeqLTIndex (ε.half_pos hε.ne') hf hsm hs hfg N, fun n hn x hx ↦ ?_⟩
  apply hN.trans_le'
  have : edist (f n x) (g x) ≤ (N : ℝ≥0∞)⁻¹ :=
    not_lt.mp fun h ↦ hx.2 <| Set.mem_iUnion.2 ⟨N, hx.1, mem_notConvergentSeq_iff.2 ⟨n, hn, h⟩⟩
  simpa [edist_comm]

@[deprecated (since := "2026-06-03")]
alias tendstoUniformlyOn_diff_iUnionNotConvergentSeq :=
  tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq

end Egorov

variable [SemilatticeSup ι] [Nonempty ι] [Countable ι]
  {f : ι → α → β} {g : α → β} {s : Set α} {ε : ℝ≥0∞}

/-- **Egorov's theorem**: If `f : ι → α → β` is a sequence of functions that
converges to `g : α → β` almost everywhere on a measurable set `s` of finite measure,
and the distance between `f n a` and `g a` is measurable for all `n`,
then for all `ε > 0`, there exists a subset `t ⊆ s` such that `μ t ≤ ε` and `f` converges to `g`
uniformly on `s \ t`. We require the index type `ι` to be countable, and usually `ι = ℕ`.

In other words, a sequence of almost everywhere convergent functions converges uniformly except on
an arbitrarily small set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cfce191c2daec0ea6807a3df2233b70375c562f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
