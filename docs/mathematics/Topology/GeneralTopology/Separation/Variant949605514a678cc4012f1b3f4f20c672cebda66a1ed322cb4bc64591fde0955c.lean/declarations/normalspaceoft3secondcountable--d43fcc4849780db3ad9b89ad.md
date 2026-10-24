# normalSpaceOfT3SecondCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42e1076c-ce2f-3809-639a-46ac9627b7ae",
  "kind": "theorem",
  "lexical_name": "normalSpaceOfT3SecondCountable",
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
  "slug": "normalspaceoft3secondcountable--d43fcc4849780db3ad9b89ad",
  "source": {
    "blob": "48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1861,
    "line": 1811,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43fcc4849780db3ad9b89ad7c78d907ceb316fe3b190f529978d67500156b3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42e1076c-ce2f-3809-639a-46ac9627b7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1811–1861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalSpaceOfT3SecondCountable [SecondCountableTopology α] [T3Space α] : NormalSpace α := by
  have key : ∀ {s t : Set α}, IsClosed t → Disjoint s t →
    ∃ U : Set (countableBasis α), (s ⊆ ⋃ u ∈ U, ↑u) ∧ (∀ u ∈ U, Disjoint (closure ↑u) t) ∧
      ∀ n : ℕ, IsClosed (⋃ (u ∈ U) (_ : Encodable.encode u ≤ n), closure (u : Set α)) := by
    intro s t hc hd
    rw [disjoint_left] at hd
    have : ∀ x ∈ s, ∃ U ∈ countableBasis α, x ∈ U ∧ Disjoint (closure U) t := by
      intro x hx
      rcases (isBasis_countableBasis α).exists_closure_subset (hc.compl_mem_nhds (hd hx))
        with ⟨u, hu, hxu, hut⟩
      exact ⟨u, hu, hxu, disjoint_left.2 hut⟩
    choose! U hu hxu hd using this
    set V : s → countableBasis α := MapsTo.restrict _ _ _ hu
    refine' ⟨range V, _, forall_range_iff.2 <| Subtype.forall.2 hd, fun n => _⟩
    · rw [biUnion_range]
      exact fun x hx => mem_iUnion.2 ⟨⟨x, hx⟩, hxu x hx⟩
    · simp only [← iSup_eq_iUnion, iSup_and']
      exact isClosed_biUnion (((finite_le_nat n).preimage_embedding (Encodable.encode' _)).subset <|
        inter_subset_right _ _) fun u _ => isClosed_closure
  refine' ⟨fun s t hs ht hd => _⟩
  rcases key ht hd with ⟨U, hsU, hUd, hUc⟩
  rcases key hs hd.symm with ⟨V, htV, hVd, hVc⟩
  refine ⟨⋃ u ∈ U, ↑u \ ⋃ (v ∈ V) (_ : Encodable.encode v ≤ Encodable.encode u), closure ↑v,
    ⋃ v ∈ V, ↑v \ ⋃ (u ∈ U) (_ : Encodable.encode u ≤ Encodable.encode v), closure ↑u,
    isOpen_biUnion fun u _ => (isOpen_of_mem_countableBasis u.2).sdiff (hVc _),
    isOpen_biUnion fun v _ => (isOpen_of_mem_countableBasis v.2).sdiff (hUc _),
    fun x hx => ?_, fun x hx => ?_, ?_⟩
  · rcases mem_iUnion₂.1 (hsU hx) with ⟨u, huU, hxu⟩
    refine' mem_biUnion huU ⟨hxu, _⟩
    simp only [mem_iUnion]
    rintro ⟨v, hvV, -, hxv⟩
    exact (hVd v hvV).le_bot ⟨hxv, hx⟩
  · rcases mem_iUnion₂.1 (htV hx) with ⟨v, hvV, hxv⟩
    refine' mem_biUnion hvV ⟨hxv, _⟩
    simp only [mem_iUnion]
    rintro ⟨u, huU, -, hxu⟩
    exact (hUd u huU).le_bot ⟨hxu, hx⟩
  · simp only [disjoint_left, mem_iUnion, mem_diff, not_exists, not_and, not_forall, not_not]
    rintro a ⟨u, huU, hau, haV⟩ v hvV hav
    cases' le_total (Encodable.encode u) (Encodable.encode v) with hle hle
    exacts [⟨u, huU, hle, subset_closure hau⟩, (haV _ hvV hle <| subset_closure hav).elim]
#align normal_space_of_t3_second_countable normalSpaceOfT3SecondCountable

end Normality

section CompletelyNormal

/-- A topological space `α` is a *completely normal Hausdorff space* if each subspace `s : Set α` is
a normal Hausdorff space. Equivalently, `α` is a `T₁` space and for any two sets `s`, `t` such that
`closure s` is disjoint with `t` and `s` is disjoint with `closure t`, there exist disjoint
neighbourhoods of `s` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean#L1811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
