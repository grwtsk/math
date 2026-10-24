# exists_idempotent_of_compact_t2_of_continuous_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:455070f4-bb4e-72a5-74d8-a94c2ff5f287",
  "kind": "theorem",
  "lexical_name": "exists_idempotent_of_compact_t2_of_continuous_mul_left",
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
  "slug": "exists-idempotent-of-compact-t2-of-continuous-mul-left--702da175a321876f9837a617",
  "source": {
    "blob": "48aa8b19f2860661b97cad5ec2d2e43d77e9997f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702da175a321876f9837a6176634b822987903e5cd0b6a6f76b6be15aa42f7f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:455070f4-bb4e-72a5-74d8-a94c2ff5f287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_idempotent_of_compact_t2_of_continuous_mul_left {M} [Nonempty M] [Semigroup M]
    [TopologicalSpace M] [CompactSpace M] [T2Space M]
    (continuous_mul_left : ∀ r : M, Continuous (· * r)) : ∃ m : M, m * m = m := by
  /- We apply Zorn's lemma to the poset of nonempty closed subsemigroups of `M`.
     It will turn out that any minimal element is `{m}` for an idempotent `m : M`. -/
  let S : Set (Set M) :=
    { N | IsClosed N ∧ N.Nonempty ∧ ∀ (m) (_ : m ∈ N) (m') (_ : m' ∈ N), m * m' ∈ N }
  rsuffices ⟨N, hN⟩ : ∃ N', Minimal (· ∈ S) N'
  · obtain ⟨N_closed, ⟨m, hm⟩, N_mul⟩ := hN.prop
    use m
    /- We now have an element `m : M` of a minimal subsemigroup `N`, and want to show `m + m = m`.
    We first show that every element of `N` is of the form `m' + m`. -/
    have scaling_eq_self : (· * m) '' N = N := by
      apply hN.eq_of_subset
      · refine ⟨(continuous_mul_left m).isClosedMap _ N_closed, ⟨_, ⟨m, hm, rfl⟩⟩, ?_⟩
        rintro _ ⟨m'', hm'', rfl⟩ _ ⟨m', hm', rfl⟩
        exact ⟨m'' * m * m', N_mul _ (N_mul _ hm'' _ hm) _ hm', mul_assoc _ _ _⟩
      · rintro _ ⟨m', hm', rfl⟩
        exact N_mul _ hm' _ hm
    /- In particular, this means that `m' * m = m` for some `m'`. We now use minimality again
       to show that this holds for all `m' ∈ N`. -/
    have absorbing_eq_self : N ∩ { m' | m' * m = m } = N := by
      apply hN.eq_of_subset
      · refine ⟨N_closed.inter ((T1Space.t1 m).preimage (continuous_mul_left m)), ?_, ?_⟩
        · rwa [← scaling_eq_self] at hm
        · rintro m'' ⟨mem'', eq'' : _ = m⟩ m' ⟨mem', eq' : _ = m⟩
          refine ⟨N_mul _ mem'' _ mem', ?_⟩
          rw [Set.mem_setOf_eq, mul_assoc, eq', eq'']
      apply Set.inter_subset_left
    rw [← absorbing_eq_self] at hm
    exact hm.2
  refine zorn_superset _ fun c hcs hc => ?_
  refine
    ⟨⋂₀ c, ⟨isClosed_sInter fun t ht => (hcs ht).1, ?_, fun m hm m' hm' => ?_⟩, fun s hs =>
      Set.sInter_subset_of_mem hs⟩
  · obtain rfl | hcnemp := c.eq_empty_or_nonempty
    · rw [Set.sInter_empty]
      apply Set.univ_nonempty
    convert
      @IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed _ _ _ hcnemp.coe_sort
        ((↑) : c → Set M) ?_ ?_ ?_ ?_
    · exact Set.sInter_eq_iInter
    · refine DirectedOn.directed_val (IsChain.directedOn hc.symm)
    exacts [fun i => (hcs i.prop).2.1, fun i => (hcs i.prop).1.isCompact, fun i => (hcs i.prop).1]
  · rw [Set.mem_sInter]
    exact fun t ht => (hcs ht).2.2 m (Set.mem_sInter.mp hm t ht) m' (Set.mem_sInter.mp hm' t ht)

/-- A version of `exists_idempotent_of_compact_t2_of_continuous_mul_left` where the idempotent lies
in some specified nonempty compact subsemigroup. -/
@[to_additive exists_idempotent_in_compact_add_subsemigroup
      "A version of
      `exists_idempotent_of_compact_t2_of_continuous_add_left` where the idempotent lies in
      some specified nonempty compact additive subsemigroup."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48aa8b19f2860661b97cad5ec2d2e43d77e9997f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
