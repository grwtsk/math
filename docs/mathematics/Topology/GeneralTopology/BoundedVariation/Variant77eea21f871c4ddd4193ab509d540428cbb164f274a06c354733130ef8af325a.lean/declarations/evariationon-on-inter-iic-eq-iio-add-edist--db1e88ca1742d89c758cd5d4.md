# eVariationOn_on_inter_Iic_eq_Iio_add_edist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7096cfb5-c3a4-063a-929a-4d7a3027f808",
  "kind": "theorem",
  "lexical_name": "eVariationOn_on_inter_Iic_eq_Iio_add_edist",
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
  "slug": "evariationon-on-inter-iic-eq-iio-add-edist--db1e88ca1742d89c758cd5d4",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 609,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db1e88ca1742d89c758cd5d48196c7a2f2f0d7e4ecae0fe91b99acc5e59dca4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7096cfb5-c3a4-063a-929a-4d7a3027f808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eVariationOn_on_inter_Iic_eq_Iio_add_edist
    [TopologicalSpace α] [OrderTopology α] {f : α → M} {s : Set α} {a : α} {l : M}
    (h : (𝓝[s ∩ Iio a] a).NeBot) (ha : a ∈ s)
    (h'f : Tendsto f (𝓝[s ∩ Iio a] a) (𝓝 l)) :
    eVariationOn f (s ∩ Iic a) = eVariationOn f (s ∩ Iio a) + edist (f a) l := by
  refine le_antisymm ?_ ?_
  · rw [eVariationOn_eq_strictMonoOn]
    apply iSup_le
    rintro ⟨n, u, u_mono, u_mem⟩
    have : u n ≤ a := (u_mem n (by simp)).2
    rcases this.eq_or_lt with hn | hn; swap
    · exact (sum_le_of_monotoneOn_Iic u_mono.monotoneOn (by grind [StrictMonoOn])).trans le_self_add
    cases n with
    | zero => simp
    | succ n =>
      have : Tendsto (fun y ↦ eVariationOn f (s ∩ Iio a) + edist (f a) (f y)) (𝓝[s ∩ Iio a] a)
          (𝓝 (eVariationOn f (s ∩ Iio a) + edist (f a) l)) :=
        (Tendsto.edist tendsto_const_nhds h'f).const_add _
      apply ge_of_tendsto this
      have : s ∩ Ioo (u n) a ∈ 𝓝[s ∩ Iio a] a :=
        inter_mem_nhdsWithin_inter self_mem_nhdsWithin (Ioo_mem_nhdsLT (by grind [StrictMonoOn]))
      filter_upwards [this] with y hy
      let v i := if i ≤ n then u i else if i = n + 1 then y else a
      have A : ∑ i ∈ Finset.range (n + 1), edist (f (u (i + 1))) (f (u i))
          ≤ ∑ i ∈ Finset.range (n + 2), edist (f (v (i + 1))) (f (v i)) := by
        simp only [Finset.sum_range_succ, add_assoc]
        gcongr with i h
        · grind
        · grw [add_comm (edist _ _), ← edist_triangle]
          grind
      have B : ∑ i ∈ Finset.range (n + 2), edist (f (v (i + 1))) (f (v i)) ≤
            eVariationOn f (s ∩ Iio a) + edist (f a) (f y) := by
        rw [Finset.sum_range_succ]
        gcongr
        · apply sum_le_of_monotoneOn_Iic <;> grind [MonotoneOn, StrictMonoOn]
        · grind
      exact A.trans B
  · obtain ⟨b, hb⟩ : (s ∩ Iio a).Nonempty := by contrapose! h; simp [h]
    have : Nonempty ((n : ℕ) × { u // StrictMonoOn u (Iic n) ∧ ∀ i ∈ Iic n, u i ∈ s ∩ Iio a }) :=
      ⟨0, ⟨fun i ↦ b, by grind [StrictMonoOn]⟩⟩
    rw [eVariationOn_eq_strictMonoOn, ENNReal.iSup_add]
    apply iSup_le
    rintro ⟨n, u, u_mono, u_mem⟩
    have : Tendsto (fun y ↦ ∑ i ∈ Finset.range n,
        edist (f (u (i + 1))) (f (u i)) + edist (f a) (f y)) (𝓝[s ∩ Iio a] a)
        (𝓝 (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i)) + edist (f a) l)) :=
      (Tendsto.edist tendsto_const_nhds h'f).const_add _
    apply le_of_tendsto this
    have : s ∩ Ioo (u n) a ∈ 𝓝[s ∩ Iio a] a :=
      inter_mem_nhdsWithin_inter self_mem_nhdsWithin (Ioo_mem_nhdsLT (by grind [StrictMonoOn]))
    filter_upwards [this, self_mem_nhdsWithin] with y hy h'y
    let v i := if i ≤ n then u i else if i = n + 1 then y else a
    have A : ∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i)) + edist (f a) (f y)
        ≤ ∑ i ∈ Finset.range (n + 2), edist (f (v (i + 1))) (f (v i)) := by
      simp only [Finset.sum_range_succ, add_assoc]
      gcongr with i h
      · grind
      · exact le_add_left (by grind)
    have B : ∑ i ∈ Finset.range (n + 2), edist (f (v (i + 1))) (f (v i)) ≤
        eVariationOn f (s ∩ Iic a) :=
      sum_le_of_monotoneOn_Iic (by grind [MonotoneOn, StrictMonoOn]) (by grind)
    exact A.trans B

/-- The variation of a function on `Ici a` is the sum of the variation on `Ioi a` and the
contribution of `a`, i.e., the distance between the right limit and the value at `a`.
We give a version relative to a set `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
