# measure_toMeasurable_inter_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:637510f8-213e-4f79-898d-a228c09ccbd5",
  "kind": "theorem",
  "lexical_name": "measure_toMeasurable_inter_of_cover",
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
  "slug": "measure-tomeasurable-inter-of-cover--3908e455492b8a05ce595cbc",
  "source": {
    "blob": "853877bcadd246cff80f7cda3a45128b777b6388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 357,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3908e455492b8a05ce595cbc1330a202286a3b6013addcd34dd7b84a7673f17a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637510f8-213e-4f79-898d-a228c09ccbd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_toMeasurable_inter_of_cover {s : Set α} (hs : MeasurableSet s) {t : Set α}
    {v : ℕ → Set α} (hv : t ⊆ ⋃ n, v n) (h'v : ∀ n, μ (t ∩ v n) ≠ ∞) :
    μ (toMeasurable μ t ∩ s) = μ (t ∩ s) := by
  -- we show that there is a measurable superset of `t` satisfying the conclusion for any
  -- measurable set `s`. It is built on each member of a spanning family using `toMeasurable`
  -- (which is well behaved for finite measure sets thanks to `measure_toMeasurable_inter`), and
  -- the desired property passes to the union.
  have A : ∃ t', t' ⊇ t ∧ MeasurableSet t' ∧ ∀ u, MeasurableSet u → μ (t' ∩ u) = μ (t ∩ u) := by
    let w n := toMeasurable μ (t ∩ v n)
    have hw : ∀ n, μ (w n) < ∞ := by
      intro n
      simp_rw [w, measure_toMeasurable]
      exact (h'v n).lt_top
    set t' := ⋃ n, toMeasurable μ (t ∩ disjointed w n) with ht'
    have tt' : t ⊆ t' :=
      calc
        t ⊆ ⋃ n, t ∩ disjointed w n := by
          rw [← inter_iUnion, iUnion_disjointed, inter_iUnion]
          intro x hx
          rcases mem_iUnion.1 (hv hx) with ⟨n, hn⟩
          refine mem_iUnion.2 ⟨n, ?_⟩
          have : x ∈ t ∩ v n := ⟨hx, hn⟩
          exact ⟨hx, subset_toMeasurable μ _ this⟩
        _ ⊆ ⋃ n, toMeasurable μ (t ∩ disjointed w n) :=
          iUnion_mono fun n => subset_toMeasurable _ _
    refine ⟨t', tt', MeasurableSet.iUnion fun n => measurableSet_toMeasurable μ _, fun u hu => ?_⟩
    apply le_antisymm _ (by gcongr)
    calc
      μ (t' ∩ u) ≤ ∑' n, μ (toMeasurable μ (t ∩ disjointed w n) ∩ u) := by
        rw [ht', iUnion_inter]
        exact measure_iUnion_le _
      _ = ∑' n, μ (t ∩ disjointed w n ∩ u) := by
        congr 1
        ext1 n
        apply measure_toMeasurable_inter hu
        apply ne_of_lt
        calc
          μ (t ∩ disjointed w n) ≤ μ (t ∩ w n) := by
            gcongr
            exact disjointed_le w n
          _ ≤ μ (w n) := measure_mono inter_subset_right
          _ < ∞ := hw n
      _ = ∑' n, μ.restrict (t ∩ u) (disjointed w n) := by
        congr 1
        ext1 n
        rw [restrict_apply, inter_comm t _, inter_assoc]
        refine MeasurableSet.disjointed (fun n => ?_) n
        exact measurableSet_toMeasurable _ _
      _ = μ.restrict (t ∩ u) (⋃ n, disjointed w n) := by
        rw [measure_iUnion]
        · exact disjoint_disjointed _
        · intro i
          refine MeasurableSet.disjointed (fun n => ?_) i
          exact measurableSet_toMeasurable _ _
      _ ≤ μ.restrict (t ∩ u) univ := measure_mono (subset_univ _)
      _ = μ (t ∩ u) := by rw [restrict_apply MeasurableSet.univ, univ_inter]
  -- thanks to the definition of `toMeasurable`, the previous property will also be shared
  -- by `toMeasurable μ t`, which is enough to conclude the proof.
  rw [toMeasurable]
  split_ifs with ht
  · apply measure_congr
    exact ae_eq_set_inter ht.choose_spec.2.2 (ae_eq_refl _)
  · exact A.choose_spec.2.2 s hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853877bcadd246cff80f7cda3a45128b777b6388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
