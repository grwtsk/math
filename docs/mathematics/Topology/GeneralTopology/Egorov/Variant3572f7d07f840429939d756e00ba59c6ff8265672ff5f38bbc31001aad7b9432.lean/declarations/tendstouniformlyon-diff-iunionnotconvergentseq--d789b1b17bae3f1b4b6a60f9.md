# tendstoUniformlyOn_diff_iUnionNotConvergentSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e608ffca-f112-ab50-0963-b303520366e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dded358d-d9cc-5b7b-e977-5e0aa2b7891d",
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
  "slug": "tendstouniformlyon-diff-iunionnotconvergentseq--d789b1b17bae3f1b4b6a60f9",
  "source": {
    "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d789b1b17bae3f1b4b6a60f99cd952ee3fd29b37aaf201c430f6526422a4bdee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dded358d-d9cc-5b7b-e977-5e0aa2b7891d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–182.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a08eabc4bc74de47b6094d018671bdb722ea4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
