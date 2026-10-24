# exists_disjoint_subfamily_covering_enlargment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31ff0eb700101d92296f25a6ffdbbf33cb617375",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:512185ae-1b38-1b02-7bca-e30a0338d077",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4aa12953-44ac-f262-0b27-42a080b69f3a",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_subfamily_covering_enlargment",
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
  "slug": "exists-disjoint-subfamily-covering-enlargment--a46307d3842f926bcdd51756",
  "source": {
    "blob": "31ff0eb700101d92296f25a6ffdbbf33cb617375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46307d3842f926bcdd51756a23379708dbb646849ee7668f623c2a9a3c76517",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa12953-44ac-f262-0b27-42a080b69f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_subfamily_covering_enlargment (B : ι → Set α) (t : Set ι) (δ : ι → ℝ)
    (τ : ℝ) (hτ : 1 < τ) (δnonneg : ∀ a ∈ t, 0 ≤ δ a) (R : ℝ) (δle : ∀ a ∈ t, δ a ≤ R)
    (hne : ∀ a ∈ t, (B a).Nonempty) :
    ∃ (u : _) (_ : u ⊆ t),
      u.PairwiseDisjoint B ∧ ∀ a ∈ t, ∃ b ∈ u, (B a ∩ B b).Nonempty ∧ δ a ≤ τ * δ b := by
  /- The proof could be formulated as a transfinite induction. First pick an element of `t` with `δ`
  as large as possible (up to a factor of `τ`). Then among the remaining elements not intersecting
  the already chosen one, pick another element with large `δ`. Go on forever (transfinitely) until
  there is nothing left.

  Instead, we give a direct Zorn-based argument. Consider a maximal family `u` of disjoint sets
  with the following property: if an element `a` of `t` intersects some element `b` of `u`, then it
  intersects some `b' ∈ u` with `δ b' ≥ δ a / τ`. Such a maximal family exists by Zorn. If this
  family did not intersect some element `a ∈ t`, then take an element `a' ∈ t` which does not
  intersect any element of `u`, with `δ a'` almost as large as possible. One checks easily
  that `u ∪ {a'}` still has this property, contradicting the maximality. Therefore, `u`
  intersects all elements of `t`, and by definition it satisfies all the desired properties.
  -/
  let T : Set (Set ι) := { u | u ⊆ t ∧ u.PairwiseDisjoint B ∧
    ∀ a ∈ t, ∀ b ∈ u, (B a ∩ B b).Nonempty → ∃ c ∈ u, (B a ∩ B c).Nonempty ∧ δ a ≤ τ * δ c }
  -- By Zorn, choose a maximal family in the good set `T` of disjoint families.
  obtain ⟨u, uT, hu⟩ : ∃ u ∈ T, ∀ v ∈ T, u ⊆ v → v = u := by
    refine' zorn_subset _ fun U UT hU => _
    refine' ⟨⋃₀ U, _, fun s hs => subset_sUnion_of_mem hs⟩
    simp only [Set.sUnion_subset_iff, and_imp, exists_prop, forall_exists_index, mem_sUnion,
      Set.mem_setOf_eq]
    refine'
      ⟨fun u hu => (UT hu).1, (pairwiseDisjoint_sUnion hU.directedOn).2 fun u hu => (UT hu).2.1,
        fun a hat b u uU hbu hab => _⟩
    obtain ⟨c, cu, ac, hc⟩ : ∃ c, c ∈ u ∧ (B a ∩ B c).Nonempty ∧ δ a ≤ τ * δ c :=
      (UT uU).2.2 a hat b hbu hab
    exact ⟨c, ⟨u, uU, cu⟩, ac, hc⟩
  -- The only nontrivial bit is to check that every `a ∈ t` intersects an element `b ∈ u` with
  -- comparatively large `δ b`. Assume this is not the case, then we will contradict the maximality.
  refine' ⟨u, uT.1, uT.2.1, fun a hat => _⟩
  contrapose! hu
  have a_disj : ∀ c ∈ u, Disjoint (B a) (B c) := by
    intro c hc
    by_contra h
    rw [not_disjoint_iff_nonempty_inter] at h
    obtain ⟨d, du, ad, hd⟩ : ∃ d, d ∈ u ∧ (B a ∩ B d).Nonempty ∧ δ a ≤ τ * δ d :=
      uT.2.2 a hat c hc h
    exact lt_irrefl _ ((hu d du ad).trans_le hd)
  -- Let `A` be all the elements of `t` which do not intersect the family `u`. It is nonempty as it
  -- contains `a`. We will pick an element `a'` of `A` with `δ a'` almost as large as possible.
  let A := { a' | a' ∈ t ∧ ∀ c ∈ u, Disjoint (B a') (B c) }
  have Anonempty : A.Nonempty := ⟨a, hat, a_disj⟩
  let m := sSup (δ '' A)
  have bddA : BddAbove (δ '' A) := by
    refine' ⟨R, fun x xA => _⟩
    rcases (mem_image _ _ _).1 xA with ⟨a', ha', rfl⟩
    exact δle a' ha'.1
  obtain ⟨a', a'A, ha'⟩ : ∃ a' ∈ A, m / τ ≤ δ a' := by
    have : 0 ≤ m := (δnonneg a hat).trans (le_csSup bddA (mem_image_of_mem _ ⟨hat, a_disj⟩))
    rcases eq_or_lt_of_le this with (mzero | mpos)
    · refine' ⟨a, ⟨hat, a_disj⟩, _⟩
      simpa only [← mzero, zero_div] using δnonneg a hat
    · have I : m / τ < m := by
        rw [div_lt_iff (zero_lt_one.trans hτ)]
        conv_lhs => rw [← mul_one m]
        exact (mul_lt_mul_left mpos).2 hτ
      rcases exists_lt_of_lt_csSup (nonempty_image_iff.2 Anonempty) I with ⟨x, xA, hx⟩
      rcases (mem_image _ _ _).1 xA with ⟨a', ha', rfl⟩
      exact ⟨a', ha', hx.le⟩
  clear hat hu a_disj a
  have a'_ne_u : a' ∉ u := fun H => (hne _ a'A.1).ne_empty (disjoint_self.1 (a'A.2 _ H))
  -- we claim that `u ∪ {a'}` still belongs to `T`, contradicting the maximality of `u`.
  refine' ⟨insert a' u, ⟨_, _, _⟩, subset_insert _ _, (ne_insert_of_not_mem _ a'_ne_u).symm⟩
  · -- check that `u ∪ {a'}` is made of elements of `t`.
    rw [insert_subset_iff]
    exact ⟨a'A.1, uT.1⟩
  · -- Check that `u ∪ {a'}` is a disjoint family. This follows from the fact that `a'` does not
    -- intersect `u`.
    exact uT.2.1.insert fun b bu _ => a'A.2 b bu
  · -- check that every element `c` of `t` intersecting `u ∪ {a'}` intersects an element of this
    -- family with large `δ`.
    intro c ct b ba'u hcb
    -- if `c` already intersects an element of `u`, then it intersects an element of `u` with
    -- large `δ` by the assumption on `u`, and there is nothing left to do.
    by_cases H : ∃ d ∈ u, (B c ∩ B d).Nonempty
    · rcases H with ⟨d, du, hd⟩
      rcases uT.2.2 c ct d du hd with ⟨d', d'u, hd'⟩
      exact ⟨d', mem_insert_of_mem _ d'u, hd'⟩
    · -- Otherwise, `c` belongs to `A`. The element of `u ∪ {a'}` that it intersects has to be `a'`.
      -- Moreover, `δ c` is smaller than the maximum `m` of `δ` over `A`, which is `≤ δ a' / τ`
      -- thanks to the good choice of `a'`. This is the desired inequality.
      push_neg at H
      simp only [← not_disjoint_iff_nonempty_inter, Classical.not_not] at H
      rcases mem_insert_iff.1 ba'u with (rfl | H')
      · refine' ⟨b, mem_insert _ _, hcb, _⟩
        calc
          δ c ≤ m := le_csSup bddA (mem_image_of_mem _ ⟨ct, H⟩)
          _ = τ * (m / τ) := by
            field_simp [(zero_lt_one.trans hτ).ne']
            ring
          _ ≤ τ * δ b := mul_le_mul_of_nonneg_left ha' (zero_le_one.trans hτ.le)
      · rw [← not_disjoint_iff_nonempty_inter] at hcb
        exact (hcb (H _ H')).elim
#align vitali.exists_disjoint_subfamily_covering_enlargment Vitali.exists_disjoint_subfamily_covering_enlargment

/-- Vitali covering theorem, closed balls version: given a family `t` of closed balls, one can
extract a disjoint subfamily `u ⊆ t` so that all balls in `t` are covered by the 5-times
dilations of balls in `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ff0eb700101d92296f25a6ffdbbf33cb617375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
