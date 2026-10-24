# shadow_compression_subset_compression_shadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60b3f9ce-a8f9-d625-840e-bfc399ade38e",
  "kind": "theorem",
  "lexical_name": "shadow_compression_subset_compression_shadow",
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
  "slug": "shadow-compression-subset-compression-shadow--7d683c6e8469482840a141a6",
  "source": {
    "blob": "c3b3f942832c5af0b482a4d586d0c636758285ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variant0a4eb3b437d35c596386dcb863e2d062bd042dd4ede62764bc37d782e1ccb456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d683c6e8469482840a141a6d9235b5e803b9ddd528aa4a10468b23300d2835b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variant0a4eb3b437d35c596386dcb863e2d062bd042dd4ede62764bc37d782e1ccb456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60b3f9ce-a8f9-d625-840e-bfc399ade38e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shadow_compression_subset_compression_shadow (u v : Finset α)
    (huv : ∀ x ∈ u, ∃ y ∈ v, IsCompressed (u.erase x) (v.erase y) 𝒜) :
    ∂ (𝓒 u v 𝒜) ⊆ 𝓒 u v (∂ 𝒜) := by
  set 𝒜' := 𝓒 u v 𝒜
  suffices H : ∀ s ∈ ∂ 𝒜',
      s ∉ ∂ 𝒜 → u ⊆ s ∧ Disjoint v s ∧ (s ∪ v) \ u ∈ ∂ 𝒜 ∧ (s ∪ v) \ u ∉ ∂ 𝒜' by
    rintro s hs'
    rw [mem_compression]
    by_cases hs : s ∈ 𝒜.shadow
    swap
    · obtain ⟨hus, hvs, h, _⟩ := H _ hs' hs
      exact Or.inr ⟨hs, _, h, compress_of_disjoint_of_le' hvs hus⟩
    refine Or.inl ⟨hs, ?_⟩
    rw [compress]
    split_ifs with huvs
    swap
    · exact hs
    rw [mem_shadow_iff] at hs'
    obtain ⟨t, Ht, a, hat, rfl⟩ := hs'
    have hav : a ∉ v := notMem_mono huvs.2 (notMem_erase a t)
    have hvt : v ≤ t := huvs.2.trans (erase_subset _ t)
    have ht : t ∈ 𝒜 := mem_of_mem_compression Ht hvt (aux huv)
    by_cases hau : a ∈ u
    · obtain ⟨b, hbv, Hcomp⟩ := huv a hau
      refine mem_shadow_iff_insert_mem.2 ⟨b, notMem_sdiff_of_mem_right hbv, ?_⟩
      rw [← Hcomp.eq] at ht
      have hsb :=
        sup_sdiff_mem_of_mem_compression ht ((erase_subset _ _).trans hvt)
          (disjoint_erase_comm.2 huvs.1)
      rwa [sup_eq_union, sdiff_erase (mem_union_left _ <| hvt hbv), union_erase_of_mem hat, ←
        erase_union_of_mem hau] at hsb
    · refine mem_shadow_iff.2
        ⟨(t ⊔ u) \ v,
          sup_sdiff_mem_of_mem_compression Ht hvt <| disjoint_of_erase_right hau huvs.1, a, ?_, ?_⟩
      · rw [sup_eq_union, mem_sdiff, mem_union]
        exact ⟨Or.inl hat, hav⟩
      · simp [← erase_sdiff_comm, erase_union_distrib, erase_eq_of_notMem hau]
  intro s hs𝒜' hs𝒜
  -- This is going to be useful a couple of times so let's name it.
  have m : ∀ y, y ∉ s → insert y s ∉ 𝒜 := fun y h a => hs𝒜 (mem_shadow_iff_insert_mem.2 ⟨y, h, a⟩)
  obtain ⟨x, _, _⟩ := mem_shadow_iff_insert_mem.1 hs𝒜'
  have hus : u ⊆ insert x s := le_of_mem_compression_of_notMem ‹_ ∈ 𝒜'› (m _ ‹x ∉ s›)
  have hvs : Disjoint v (insert x s) := disjoint_of_mem_compression_of_notMem ‹_› (m _ ‹x ∉ s›)
  have : (insert x s ∪ v) \ u ∈ 𝒜 := sup_sdiff_mem_of_mem_compression_of_notMem ‹_› (m _ ‹x ∉ s›)
  have hsv : Disjoint s v := hvs.symm.mono_left (subset_insert _ _)
  have hvu : Disjoint v u := disjoint_of_subset_right hus hvs
  have hxv : x ∉ v := disjoint_right.1 hvs (mem_insert_self _ _)
  have : v \ u = v := ‹Disjoint v u›.sdiff_eq_left
  -- The first key part is that `x ∉ u`
  have : x ∉ u := by
    intro hxu
    obtain ⟨y, hyv, hxy⟩ := huv x hxu
    -- If `x ∈ u`, we can get `y ∈ v` so that `𝒜` is `(u.erase x, v.erase y)`-compressed
    apply m y (disjoint_right.1 hsv hyv)
    -- and we will use this `y` to contradict `m`, so we would like to show `insert y s ∈ 𝒜`.
    -- We do this by showing the below
    have : ((insert x s ∪ v) \ u ∪ erase u x) \ erase v y ∈ 𝒜 := by
      refine
        sup_sdiff_mem_of_mem_compression (by rwa [hxy.eq]) ?_
          (disjoint_of_subset_left (erase_subset _ _) disjoint_sdiff)
      rw [union_sdiff_distrib, ‹v \ u = v›]
      exact (erase_subset _ _).trans subset_union_right
    -- and then arguing that it's the same
    convert! this using 1
    rw [sdiff_union_erase_cancel (hus.trans subset_union_left) ‹x ∈ u›, erase_union_distrib,
      erase_insert ‹x ∉ s›, erase_eq_of_notMem ‹x ∉ v›, sdiff_erase (mem_union_right _ hyv),
      union_sdiff_cancel_right hsv]
  -- Now that this is done, it's immediate that `u ⊆ s`
  have hus : u ⊆ s := by rwa [← erase_eq_of_notMem ‹x ∉ u›, ← subset_insert_iff]
  -- and we already had that `v` and `s` are disjoint,
  -- so it only remains to get `(s ∪ v) \ u ∈ ∂ 𝒜 \ ∂ 𝒜'`
  simp_rw [mem_shadow_iff_insert_mem]
  refine ⟨hus, hsv.symm, ⟨x, ?_, ?_⟩, ?_⟩
  -- `(s ∪ v) \ u ∈ ∂ 𝒜` is pretty direct:
  · exact notMem_sdiff_of_notMem_left (notMem_union.2 ⟨‹x ∉ s›, ‹x ∉ v›⟩)
  · rwa [← insert_sdiff_of_notMem _ ‹x ∉ u›, ← insert_union]
  -- For (s ∪ v) \ u ∉ ∂ 𝒜', we split up based on w ∈ u
  rintro ⟨w, hwB, hw𝒜'⟩
  have : v ⊆ insert w ((s ∪ v) \ u) :=
    (subset_sdiff.2 ⟨subset_union_right, hvu⟩).trans (subset_insert _ _)
  by_cases hwu : w ∈ u
  -- If `w ∈ u`, we find `z ∈ v`, and contradict `m` again
  · obtain ⟨z, hz, hxy⟩ := huv w hwu
    apply m z (disjoint_right.1 hsv hz)
    have : insert w ((s ∪ v) \ u) ∈ 𝒜 := mem_of_mem_compression hw𝒜' ‹_› (aux huv)
    have : (insert w ((s ∪ v) \ u) ∪ erase u w) \ erase v z ∈ 𝒜 := by
      refine sup_sdiff_mem_of_mem_compression (by rwa [hxy.eq]) ((erase_subset _ _).trans ‹_›) ?_
      rw [← sdiff_erase (mem_union_left _ <| hus hwu)]
      exact disjoint_sdiff
    convert! this using 1
    rw [insert_union_comm, insert_erase ‹w ∈ u›,
      sdiff_union_of_subset (hus.trans subset_union_left),
      sdiff_erase (mem_union_right _ ‹z ∈ v›), union_sdiff_cancel_right hsv]
  -- If `w ∉ u`, we contradict `m` again
  rw [mem_sdiff, ← Classical.not_imp, Classical.not_not] at hwB
  apply m w (hwu ∘ hwB ∘ mem_union_left _)
  have : (insert w ((s ∪ v) \ u) ∪ u) \ v ∈ 𝒜 :=
    sup_sdiff_mem_of_mem_compression ‹insert w ((s ∪ v) \ u) ∈ 𝒜'› ‹_›
      (disjoint_insert_right.2 ⟨‹_›, disjoint_sdiff⟩)
  convert! this using 1
  rw [insert_union, sdiff_union_of_subset (hus.trans subset_union_left),
    insert_sdiff_of_notMem _ (hwu ∘ hwB ∘ mem_union_right _), union_sdiff_cancel_right hsv]

/-- UV-compression reduces the size of the shadow of `𝒜` if, for all `x ∈ u` there is `y ∈ v`
such that `𝒜` is `(u.erase x, v.erase y)`-compressed. This is the key UV-compression fact needed for
Kruskal-Katona. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variant0a4eb3b437d35c596386dcb863e2d062bd042dd4ede62764bc37d782e1ccb456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variant0a4eb3b437d35c596386dcb863e2d062bd042dd4ede62764bc37d782e1ccb456.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b3f942832c5af0b482a4d586d0c636758285ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
