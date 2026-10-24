# fintypeNodupList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:878ea9a125a853c303ca314313d4860734820e6ea46994ecd07919e6f6d81276",
  "kind": "instance",
  "lexical_name": "fintypeNodupList",
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
  "slug": "fintypenoduplist--1e10fbddad667bae74457eda",
  "source": {
    "blob": "696e45321bbf7b91f81ee484d46c59db865e74db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e10fbddad667bae74457eda31dab6022b97b5e727829a9069022011b1a46a87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:878ea9a125a853c303ca314313d4860734820e6ea46994ecd07919e6f6d81276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeNodupList [Fintype α] : Fintype { l : List α // l.Nodup } := by
  refine Fintype.ofFinset ?_ ?_
  · let univSubsets := ((Finset.univ : Finset α).powerset.1 : (Multiset (Finset α)))
    let allPerms := Multiset.bind univSubsets (fun s => (Multiset.lists s.1))
    refine ⟨allPerms, Multiset.nodup_bind.mpr ?_⟩
    simp only [Multiset.lists_nodup_finset, implies_true, true_and]
    unfold Multiset.Pairwise
    use ((Finset.univ : Finset α).powerset.toList : (List (Finset α)))
    constructor
    · simp only [Finset.coe_toList]
      rfl
    · convert Finset.nodup_toList (Finset.univ.powerset : Finset (Finset α))
      ext l
      unfold Nodup
      refine Pairwise.iff ?_
      intro m n
      simp only [_root_.Disjoint]
      rw [← m.coe_toList, ← n.coe_toList, Multiset.lists_coe, Multiset.lists_coe]
      have := Multiset.coe_disjoint m.toList.permutations n.toList.permutations
      rw  [_root_.Disjoint] at this
      rw [this]
      simp only [Multiset.coe_disjoint, ne_eq]
      rw [List.disjoint_iff_ne]
      constructor
      · intro h
        by_contra hc
        rw [hc] at h
        contrapose! h
        use n.toList
        simp
      · intro h
        simp only [mem_permutations]
        intro a ha b hb
        by_contra hab
        absurd h
        rw [hab] at ha
        exact perm_toList.mp <| Perm.trans (id (Perm.symm ha)) hb
  · intro l
    simp only [Finset.mem_mk, Multiset.mem_bind, Finset.mem_val, Finset.mem_powerset,
      Finset.subset_univ, Multiset.mem_lists_iff, Multiset.quot_mk_to_coe, true_and]
    constructor
    · intro h
      rcases h with ⟨f, hf⟩
      convert  Set.mem_def.mpr f.nodup
      rw [hf]
      rfl
    · intro h
      exact CanLift.prf _ h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `696e45321bbf7b91f81ee484d46c59db865e74db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
