# countable_setOf_covby_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:008f44e7-4c33-1247-fef6-5a1eac6468f4",
  "kind": "theorem",
  "lexical_name": "countable_setOf_covby_right",
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
  "slug": "countable-setof-covby-right--f8fe477b0e9ba2aaea517e53",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1409,
    "line": 1367,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8fe477b0e9ba2aaea517e53f6fee4b619eb200fcd5fe49ecb64d382917f6be7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008f44e7-4c33-1247-fef6-5a1eac6468f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1367–1409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_setOf_covby_right [SecondCountableTopology α] :
    Set.Countable { x : α | ∃ y, x ⋖ y } := by
  nontriviality α
  let s := { x : α | ∃ y, x ⋖ y }
  have : ∀ x ∈ s, ∃ y, x ⋖ y := fun x => id
  choose! y hy using this
  have Hy : ∀ x z, x ∈ s → z < y x → z ≤ x := fun x z hx => (hy x hx).le_of_lt
  suffices H : ∀ a : Set α, IsOpen a → Set.Countable { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a }
  · have : s ⊆ ⋃ a ∈ countableBasis α, { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a } := fun x hx => by
      rcases (isBasis_countableBasis α).exists_mem_of_ne (hy x hx).ne with ⟨a, ab, xa, ya⟩
      exact mem_iUnion₂.2 ⟨a, ab, hx, xa, ya⟩
    refine Set.Countable.mono this ?_
    refine' Countable.biUnion (countable_countableBasis α) fun a ha => H _ _
    exact isOpen_of_mem_countableBasis ha
  intro a ha
  suffices H : Set.Countable { x | (x ∈ s ∧ x ∈ a ∧ y x ∉ a) ∧ ¬IsBot x }
  · exact H.of_diff (subsingleton_isBot α).countable
  simp only [and_assoc]
  let t := { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a ∧ ¬IsBot x }
  have : ∀ x ∈ t, ∃ z < x, Ioc z x ⊆ a := by
    intro x hx
    apply exists_Ioc_subset_of_mem_nhds (ha.mem_nhds hx.2.1)
    simpa only [IsBot, not_forall, not_le] using hx.right.right.right
  choose! z hz h'z using this
  have : PairwiseDisjoint t fun x => Ioc (z x) x := fun x xt x' x't hxx' => by
    rcases hxx'.lt_or_lt with (h' | h')
    · refine' disjoint_left.2 fun u ux ux' => xt.2.2.1 _
      refine' h'z x' x't ⟨ux'.1.trans_le (ux.2.trans (hy x xt.1).le), _⟩
      by_contra' H
      exact lt_irrefl _ ((Hy _ _ xt.1 H).trans_lt h')
    · refine' disjoint_left.2 fun u ux ux' => x't.2.2.1 _
      refine' h'z x xt ⟨ux.1.trans_le (ux'.2.trans (hy x' x't.1).le), _⟩
      by_contra' H
      exact lt_irrefl _ ((Hy _ _ x't.1 H).trans_lt h')
  refine' this.countable_of_isOpen (fun x hx => _) fun x hx => ⟨x, hz x hx, le_rfl⟩
  suffices H : Ioc (z x) x = Ioo (z x) (y x)
  · rw [H]
    exact isOpen_Ioo
  exact Subset.antisymm (Ioc_subset_Ioo_right (hy x hx.1).lt) fun u hu => ⟨hu.1, Hy _ _ hx.1 hu.2⟩

/-- The set of points which are isolated on the right is countable when the space is
second-countable. -/
@[deprecated countable_setOf_covby_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L1367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
