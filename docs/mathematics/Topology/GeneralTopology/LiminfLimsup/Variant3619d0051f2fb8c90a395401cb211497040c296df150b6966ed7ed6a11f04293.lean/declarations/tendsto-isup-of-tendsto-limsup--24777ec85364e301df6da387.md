# tendsto_iSup_of_tendsto_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54d30b4-1dd4-91dc-a17c-879e476503a7",
  "kind": "lemma",
  "lexical_name": "tendsto_iSup_of_tendsto_limsup",
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
  "slug": "tendsto-isup-of-tendsto-limsup--24777ec85364e301df6da387",
  "source": {
    "blob": "5da351eb41598dd43a4bae3aa9e4342b4f16bf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 407,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24777ec85364e301df6da3871ed0889afb35a69f1f234222c968b5630868548f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54d30b4-1dd4-91dc-a17c-879e476503a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_iSup_of_tendsto_limsup {α β : Type*} [ConditionallyCompleteLattice α]
    [CompleteLinearOrder β] [TopologicalSpace β] [OrderTopology β]
    {u : ι → α → β} {c : β}
    (h_all : ∀ i, Tendsto (u i) atTop (𝓝 c))
    (h_limsup : Tendsto (fun r : α ↦ limsup (fun i ↦ u i r) cofinite) atTop (𝓝 c))
    (h_anti : ∀ i, Antitone (u i)) :
    Tendsto (fun r : α ↦ ⨆ i, u i r) atTop (𝓝 c) := by
  classical
  rcases isEmpty_or_nonempty ι with hι | ⟨⟨n0⟩⟩
  · simpa using! h_limsup
  refine tendsto_order.mpr ⟨fun b hb ↦ ?_, fun b hb ↦ ?_⟩
  · filter_upwards with r
    have : c ≤ u n0 r := (h_anti n0).le_of_tendsto (h_all n0) r
    exact hb.trans_le (this.trans (le_iSup_iff.mpr fun b a ↦ a n0))
  -- `⊢ ∀ᶠ (b_1 : α) in atTop, ⨆ i, u i b_1 < b` for `b > c`
  let b' := if h : (Set.Ioo c b).Nonempty then h.some else c
  have hb'b : b' < b := by
    simp only [b']
    split_ifs with h
    exacts [h.some_mem.2, hb]
  have : ∀ᶠ r in atTop, limsup (u · r) cofinite ≤ b' := by
    simp only [b']
    split_ifs with h
    · filter_upwards [(tendsto_order.1 h_limsup).2 _ h.some_mem.1] with r hr using hr.le
    · filter_upwards [(tendsto_order.1 h_limsup).2 b hb] with r hr
      contrapose! h
      exact ⟨limsup (u · r) cofinite, h, hr⟩
  obtain ⟨r, hr⟩ : ∃ r, ∀ s ≥ r, limsup (u · s) cofinite ≤ b' := by simpa using! this
  obtain ⟨b'', hb''b, hb''⟩ : ∃ b'' ∈ Set.Ico b' b, ∀ᶠ n in cofinite, u n r ≤ b'' := by
    rcases Set.eq_empty_or_nonempty (Set.Ioo b' b) with h | ⟨b'', hb'b'', hb''b⟩
    · refine ⟨b', ⟨le_rfl, hb'b⟩, ?_⟩
      have h_lt := eventually_lt_of_limsup_lt ((hr r le_rfl).trans_lt hb'b)
      filter_upwards [h_lt] with n hn
      contrapose! h
      exact ⟨u n r, h, hn⟩
    · refine ⟨b'', ⟨hb'b''.le, hb''b⟩ , ?_⟩
      have h_lt := eventually_lt_of_limsup_lt ((hr r le_rfl).trans_lt hb'b'')
      filter_upwards [h_lt] with n hn using hn.le
  have A (n) : ∃ r, ∀ s ≥ r, u n s ≤ b'' := by
    suffices ∀ᶠ r in atTop, u n r ≤ b' by
      simp only [eventually_atTop] at this
      rcases this with ⟨r, hr⟩
      exact ⟨r, fun s hs ↦ (hr s hs).trans hb''b.1⟩
    simp only [b']
    split_ifs with h
    · filter_upwards [(tendsto_order.1 (h_all n)).2 _ h.some_mem.1] with r hr
      exact hr.le
    · filter_upwards [(tendsto_order.1 (h_all n)).2 b hb] with r hr
      contrapose! h
      exact ⟨u n r, h, hr⟩
  choose rs hrs using A
  simp only [eventually_atTop]
  refine ⟨r ⊔ ⨆ n : {n | b'' < u n r}, rs n, fun v hv ↦ ?_⟩
  -- `⊢ ⨆ i, u i v < b`
  apply lt_of_le_of_lt (iSup_le fun n ↦ ?_) hb''b.2
  -- `⊢ u n v ≤ b''` for `v` such that `r ⊔ (⨆ n, rs n) ≤ v`
  by_cases hn : b'' < u n r
  · refine hrs n v ?_
    calc rs n
    _ = rs (⟨n, by simp [hn]⟩ : {n | b'' < u n r}) := rfl
    _ ≤ ⨆ n : {n | b'' < u n r}, rs n := by
      refine le_ciSup (f := fun (x : {n | b'' < u n r}) ↦ rs x) ?_
        (⟨n, by simp [hn]⟩ : {n | b'' < u n r})
      have : Finite {n | b'' < u n r} := by simpa using! hb''
      exact Finite.bddAbove_range _
    _ ≤ r ⊔ ⨆ n : {n | b'' < u n r}, rs n := le_sup_right
    _ ≤ v := hv
  · refine (h_anti n ?_).trans (not_lt.mp hn)
    calc r
    _ ≤ r ⊔ ⨆ n : {n | b'' < u n r}, rs n := le_sup_left
    _ ≤ v := hv

/-- Let `u : ℕ → α → β` be a sequence of antitone functions `α → β` indexed by `ℕ`. Suppose that for
all `n : ℕ`, `u n` tends to `c` at infinity, and that furthermore the limsup of `n ↦ u n r`
tends to the same `c` as `r` tends to infinity.
Then the supremum function `r ↦ ⨆ n, u n r` also tends to `c` at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da351eb41598dd43a4bae3aa9e4342b4f16bf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
