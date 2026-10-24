# eVariationOn_le_of_mapClusterPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e0ad8c9-913b-8ed3-52a2-0a15b9e99d20",
  "kind": "lemma",
  "lexical_name": "eVariationOn_le_of_mapClusterPt",
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
  "slug": "evariationon-le-of-mapclusterpt--936412868257b1bd3eb8ac2b",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1084,
    "line": 1035,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:936412868257b1bd3eb8ac2b3f9db335714a1132599d27257d12b57051439e1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e0ad8c9-913b-8ed3-52a2-0a15b9e99d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1035–1084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma eVariationOn_le_of_mapClusterPt
    [TopologicalSpace α] [OrderTopology α] {f g : α → M}
    {s : Set α} (hg : ∀ x ∈ s, MapClusterPt (g x) (𝓝[s] x) f) :
    eVariationOn g s ≤ eVariationOn f s := by
  rw [eVariationOn_eq_strictMonoOn]
  apply iSup_le
  rintro ⟨n, u, u_mono, u_mem⟩
  simp only
  have : Nonempty α := ⟨u 0⟩
  apply le_of_forall_lt (fun c hc ↦ ?_)
  have : ∀ᶠ (b : ℕ → M) in 𝓝 (fun i ↦ g (u i)),
      c < ∑ i ∈ Finset.range n, edist (b (i + 1)) (b i) := by
    have : Continuous (fun (v : ℕ → M) ↦ ∑ i ∈ Finset.range n, edist (v (i + 1)) (v i)) := by
      fun_prop
    exact (tendsto_order.1 (this.continuousAt (x := fun i ↦ g (u i))).tendsto).1 c hc
  rw [nhds_pi] at this
  obtain ⟨I, I_fin, t, t_mem, ht⟩ : ∃ (I : Set ℕ), I.Finite ∧ ∃ t, (∀ (i : ℕ), t i ∈ 𝓝 (g (u i))) ∧
      I.pi t ⊆ {b : ℕ → M | c < ∑ i ∈ Finset.range n, edist (b (i + 1)) (b i)} := mem_pi.1 this
  have : ∀ᶠ b in 𝓝 u, ∀ i ∈ ((Finset.Iic n) ×ˢ (Finset.Iic n)).filter
      (fun i ↦ i.1 < i.2), b i.1 < b i.2 := by
    rw [Filter.eventually_all_finset]
    intro i hi
    apply IsOpen.mem_nhds ?_ (by grind [StrictMonoOn])
    exact isOpen_lt (by fun_prop) (by fun_prop)
  rw [nhds_pi] at this
  obtain ⟨J, J_fin, k, k_mem, hk⟩ : ∃ (J : Set ℕ), J.Finite ∧ ∃ k, (∀ (i : ℕ), k i ∈ 𝓝 (u i)) ∧
    J.pi k ⊆ _ := mem_pi.1 this
  have A i (hi : i ∈ Iic n) : ∃ x, (f x ∈ t i ∧ x ∈ k i) ∧ x ∈ s :=
    ((((mapClusterPt_iff_frequently.1 (hg (u i) (u_mem i hi)) (t i) (t_mem i))).and_eventually
      (mem_nhdsWithin_of_mem_nhds (k_mem i))).and_eventually self_mem_nhdsWithin).exists
  choose! v hv h'v using A
  have : c < ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) := by
    let f' i := if i ∈ Iic n then f (v i) else g (u i)
    have : ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) =
        ∑ i ∈ Finset.range n, edist (f' (i + 1)) (f' i) :=
      Finset.sum_congr rfl (fun i hi ↦ by grind)
    rw [this]
    suffices H : f' ∈ I.pi t from ht H
    have A i : g (u i) ∈ t i := mem_of_mem_nhds (t_mem i)
    grind
  apply this.trans_le
  have v_mono : StrictMonoOn v (Iic n) := by
    let w i := if i ∈ Iic n then v i else u i
    suffices w ∈ J.pi k by
      simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_Iic, and_imp, Prod.forall] at hk
      grind [StrictMonoOn]
    have A i : u i ∈ k i := mem_of_mem_nhds (k_mem i)
    grind
  exact sum_le_of_monotoneOn_Iic v_mono.monotoneOn (by grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L1035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
