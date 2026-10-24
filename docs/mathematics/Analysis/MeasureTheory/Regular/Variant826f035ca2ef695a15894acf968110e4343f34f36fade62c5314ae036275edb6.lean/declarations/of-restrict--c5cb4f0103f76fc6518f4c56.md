# of_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6297f5a690753bac3f92d4fa2f0d852cef27f01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a4aee18-cf77-63fd-b76c-9150baf5e879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f59ce4c-7a1d-fe39-2a62-ad346e348210",
  "kind": "lemma",
  "lexical_name": "of_restrict",
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
  "slug": "of-restrict--c5cb4f0103f76fc6518f4c56",
  "source": {
    "blob": "a6297f5a690753bac3f92d4fa2f0d852cef27f01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 393,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5cb4f0103f76fc6518f4c569c0572dcd55abbbf5770e12bd081d8e642db570c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f59ce4c-7a1d-fe39-2a62-ad346e348210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_restrict [OpensMeasurableSpace α] {μ : Measure α} {s : ℕ → Set α}
    (h : ∀ n, OuterRegular (μ.restrict (s n))) (h' : ∀ n, IsOpen (s n)) (h'' : univ ⊆ ⋃ n, s n) :
    OuterRegular μ := by
  refine ⟨fun A hA r hr => ?_⟩
  have HA : μ A < ∞ := lt_of_lt_of_le hr le_top
  have hm : ∀ n, MeasurableSet (s n) := fun n => (h' n).measurableSet
  -- Note that `A = ⋃ n, A ∩ disjointed s n`. We replace `A` with this sequence.
  obtain ⟨A, hAm, hAs, hAd, rfl⟩ :
    ∃ A' : ℕ → Set α,
      (∀ n, MeasurableSet (A' n)) ∧
        (∀ n, A' n ⊆ s n) ∧ Pairwise (Disjoint on A') ∧ A = ⋃ n, A' n := by
    refine
      ⟨fun n => A ∩ disjointed s n, fun n => hA.inter (MeasurableSet.disjointed hm _), fun n =>
        inter_subset_right.trans (disjointed_subset _ _),
        (disjoint_disjointed s).mono fun k l hkl => hkl.mono inf_le_right inf_le_right, ?_⟩
    rw [← inter_iUnion, iUnion_disjointed, univ_subset_iff.mp h'', inter_univ]
  rcases ENNReal.exists_pos_sum_of_countable' (tsub_pos_iff_lt.2 hr).ne' ℕ with ⟨δ, δ0, hδε⟩
  rw [lt_tsub_iff_right, add_comm] at hδε
  have : ∀ n, ∃ U ⊇ A n, IsOpen U ∧ μ U < μ (A n) + δ n := by
    intro n
    have H₁ : ∀ t, μ.restrict (s n) t = μ (t ∩ s n) := fun t => restrict_apply' (hm n)
    have Ht : μ.restrict (s n) (A n) ≠ ∞ := by
      rw [H₁]
      exact ((measure_mono (inter_subset_left.trans (subset_iUnion A n))).trans_lt HA).ne
    rcases (A n).exists_isOpen_lt_add Ht (δ0 n).ne' with ⟨U, hAU, hUo, hU⟩
    rw [H₁, H₁, inter_eq_self_of_subset_left (hAs _)] at hU
    exact ⟨U ∩ s n, subset_inter hAU (hAs _), hUo.inter (h' n), hU⟩
  choose U hAU hUo hU using this
  refine ⟨⋃ n, U n, iUnion_mono hAU, isOpen_iUnion hUo, ?_⟩
  calc
    μ (⋃ n, U n) ≤ ∑' n, μ (U n) := measure_iUnion_le _
    _ ≤ ∑' n, (μ (A n) + δ n) := ENNReal.tsum_le_tsum fun n => (hU n).le
    _ = ∑' n, μ (A n) + ∑' n, δ n := ENNReal.tsum_add
    _ = μ (⋃ n, A n) + ∑' n, δ n := (congr_arg₂ (· + ·) (measure_iUnion hAd hAm).symm rfl)
    _ < r := hδε

/-- See also `IsCompact.measure_closure` for a version
that assumes the `σ`-algebra to be the Borel `σ`-algebra but makes no assumptions on `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant826f035ca2ef695a15894acf968110e4343f34f36fade62c5314ae036275edb6.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6297f5a690753bac3f92d4fa2f0d852cef27f01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
