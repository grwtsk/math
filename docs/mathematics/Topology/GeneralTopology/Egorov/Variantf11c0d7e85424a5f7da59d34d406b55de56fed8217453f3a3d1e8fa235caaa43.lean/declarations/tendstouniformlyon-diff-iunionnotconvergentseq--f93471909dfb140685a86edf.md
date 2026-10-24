# tendstoUniformlyOn_diff_iUnionNotConvergentSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de2f117c-c31d-00f6-4514-02d632932da2",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_diff_iUnionNotConvergentSeq",
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
  "slug": "tendstouniformlyon-diff-iunionnotconvergentseq--f93471909dfb140685a86edf",
  "source": {
    "blob": "ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f93471909dfb140685a86edfee8579558965aa9737cea79fa35177598a0c57c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2f117c-c31d-00f6-4514-02d632932da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_diff_iUnionNotConvergentSeq (hε : 0 < ε)
    (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g) (hsm : MeasurableSet s)
    (hs : μ s ≠ ∞) (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) :
    TendstoUniformlyOn f g atTop (s \ Egorov.iUnionNotConvergentSeq hε hf hg hsm hs hfg) := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro δ hδ
  obtain ⟨N, hN⟩ := exists_nat_one_div_lt hδ
  rw [eventually_atTop]
  refine ⟨Egorov.notConvergentSeqLTIndex (half_pos hε) hf hg hsm hs hfg N, fun n hn x hx => ?_⟩
  simp only [Set.mem_diff, Egorov.iUnionNotConvergentSeq, not_exists, Set.mem_iUnion,
    Set.mem_inter_iff, not_and, exists_and_left] at hx
  obtain ⟨hxs, hx⟩ := hx
  specialize hx hxs N
  rw [Egorov.mem_notConvergentSeq_iff] at hx
  push_neg at hx
  rw [dist_comm]
  exact lt_of_le_of_lt (hx n hn) hN

end Egorov

variable [SemilatticeSup ι] [Nonempty ι] [Countable ι]
  {f : ι → α → β} {g : α → β} {s : Set α}

/-- **Egorov's theorem**: If `f : ι → α → β` is a sequence of strongly measurable functions that
converges to `g : α → β` almost everywhere on a measurable set `s` of finite measure,
then for all `ε > 0`, there exists a subset `t ⊆ s` such that `μ t ≤ ε` and `f` converges to `g`
uniformly on `s \ t`. We require the index type `ι` to be countable, and usually `ι = ℕ`.

In other words, a sequence of almost everywhere convergent functions converges uniformly except on
an arbitrarily small set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
