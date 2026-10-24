# exists_continuous_one_zero_of_isCompact_of_isGδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4556863d-3465-70fa-a2a7-6fad3a97eb0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82ab2bc0-82d7-529e-5919-afd26780da31",
  "kind": "theorem",
  "lexical_name": "exists_continuous_one_zero_of_isCompact_of_isGδ",
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
  "slug": "exists-continuous-one-zero-of-iscompact-of-isg--67923154bc10103cd97855a8",
  "source": {
    "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 432,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67923154bc10103cd97855a8f3adf9e5850793ccbe6b23769736c9867d5647ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ab2bc0-82d7-529e-5919-afd26780da31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_one_zero_of_isCompact_of_isGδ [RegularSpace X] [LocallyCompactSpace X]
    {s t : Set X} (hs : IsCompact s) (h's : IsGδ s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : C(X, ℝ), s = f ⁻¹' {1} ∧ EqOn f 0 t ∧ HasCompactSupport f
      ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
  rcases h's.eq_iInter_nat with ⟨U, U_open, hU⟩
  obtain ⟨m, m_comp, -, sm, mt⟩ : ∃ m, IsCompact m ∧ IsClosed m ∧ s ⊆ interior m ∧ m ⊆ tᶜ :=
    exists_compact_closed_between hs ht.isOpen_compl hd.symm.subset_compl_left
  have A n : ∃ f : C(X, ℝ), EqOn f 1 s ∧ EqOn f 0 (U n ∩ interior m)ᶜ ∧ HasCompactSupport f
      ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
    apply exists_continuous_one_zero_of_isCompact hs
      ((U_open n).inter isOpen_interior).isClosed_compl
    rw [disjoint_compl_right_iff_subset]
    exact subset_inter ((hU.subset.trans (iInter_subset U n))) sm
  choose f fs fm _hf f_range using A
  obtain ⟨u, u_pos, u_sum, hu⟩ : ∃ (u : ℕ → ℝ), (∀ i, 0 < u i) ∧ Summable u ∧ ∑' i, u i = 1 :=
    ⟨fun n ↦ 1/2/2^n, fun n ↦ by positivity, summable_geometric_two' 1, tsum_geometric_two' 1⟩
  let g : X → ℝ := fun x ↦ ∑' n, u n * f n x
  have hgmc : EqOn g 0 mᶜ := by
    intro x hx
    have B n : f n x = 0 := by
      have : mᶜ ⊆ (U n ∩ interior m)ᶜ := by
        simpa using inter_subset_right.trans interior_subset
      exact fm n (this hx)
    simp [g, B]
  have I n x : u n * f n x ≤ u n := mul_le_of_le_one_right (u_pos n).le (f_range n x).2
  have S x : Summable (fun n ↦ u n * f n x) := Summable.of_nonneg_of_le
      (fun n ↦ mul_nonneg (u_pos n).le (f_range n x).1) (fun n ↦ I n x) u_sum
  refine ⟨⟨g, ?_⟩, ?_, hgmc.mono (subset_compl_comm.mp mt), ?_, fun x ↦ ⟨?_, ?_⟩⟩
  · apply continuous_tsum (fun n ↦ continuous_const.mul (f n).continuous) u_sum (fun n x ↦ ?_)
    simpa [abs_of_nonneg, (u_pos n).le, (f_range n x).1] using I n x
  · apply Subset.antisymm (fun x hx ↦ by simp [g, fs _ hx, hu]) ?_
    apply compl_subset_compl.1
    intro x hx
    obtain ⟨n, hn⟩ : ∃ n, x ∉ U n := by simpa [hU] using hx
    have fnx : f n x = 0 := fm _ (by simp [hn])
    have : g x < 1 := by
      apply lt_of_lt_of_le ?_ hu.le
      exact (S x).tsum_lt_tsum (i := n) (fun i ↦ I i x) (by simp [fnx, u_pos n]) u_sum
    simpa using this.ne
  · exact HasCompactSupport.of_support_subset_isCompact m_comp
      (Function.support_subset_iff'.mpr hgmc)
  · exact tsum_nonneg (fun n ↦ mul_nonneg (u_pos n).le (f_range n x).1)
  · apply le_trans _ hu.le
    exact (S x).tsum_le_tsum (fun n ↦ I n x) u_sum

/-- A variation of Urysohn's lemma. In a `T2Space X`, for a closed set `t` and a relatively
compact open set `s` such that `t ⊆ s`, there is a continuous function `f` supported in `s`,
`f x = 1` on `t` and `0 ≤ f x ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9394cf07ff8f84c2c7a018b66c1dffe0a15fa444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
