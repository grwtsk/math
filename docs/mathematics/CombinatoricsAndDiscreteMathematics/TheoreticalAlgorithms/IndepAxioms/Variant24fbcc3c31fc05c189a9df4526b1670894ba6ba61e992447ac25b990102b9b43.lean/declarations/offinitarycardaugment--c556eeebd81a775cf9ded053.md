# ofFinitaryCardAugment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8656c455ed543232833d4babcd6f004af89cd75602bfd8555f2adcfd8e537a90",
  "kind": "def",
  "lexical_name": "ofFinitaryCardAugment",
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
  "slug": "offinitarycardaugment--c556eeebd81a775cf9ded053",
  "source": {
    "blob": "6709a937797d5763a647c6ef29537e0e3261628c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c556eeebd81a775cf9ded053ac1affda3160a7989a28d655de6d6b93640e10c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8656c455ed543232833d4babcd6f004af89cd75602bfd8555f2adcfd8e537a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps! E] protected def ofFinitaryCardAugment (E : Set α) (Indep : Set α → Prop)
    (indep_empty : Indep ∅)
    (indep_subset : ∀ ⦃I J⦄, Indep J → I ⊆ J → Indep I)
    (indep_aug : ∀ ⦃I J⦄, Indep I → I.Finite → Indep J → J.Finite → I.ncard < J.ncard →
      ∃ e ∈ J, e ∉ I ∧ Indep (insert e I))
    (indep_compact : ∀ I, (∀ J, J ⊆ I → J.Finite → Indep J) → Indep I)
    (subset_ground : ∀ I, Indep I → I ⊆ E) : IndepMatroid α :=
  IndepMatroid.ofFinitary
    (E := E)
    (Indep := Indep)
    (indep_empty := indep_empty)
    (indep_subset := indep_subset)
    (indep_compact := indep_compact)
    (indep_aug := by
      have htofin : ∀ I e, Indep I → ¬ Indep (insert e I) →
        ∃ I₀, I₀ ⊆ I ∧ I₀.Finite ∧ ¬ Indep (insert e I₀) := by
        by_contra h; push_neg at h
        obtain ⟨I, e, -, hIe, h⟩ := h
        refine hIe <| indep_compact _ fun J hJss hJfin ↦ ?_
        exact indep_subset (h (J \ {e}) (by rwa [diff_subset_iff]) hJfin.diff) (by simp)

      intro I B hI hImax hBmax
      obtain ⟨e, heI, hins⟩ := exists_insert_of_not_maximal indep_subset hI hImax
      by_cases heB : e ∈ B
      · exact ⟨e, ⟨heB, heI⟩, hins⟩
      by_contra hcon; push_neg at hcon

      have heBdep := hBmax.not_prop_of_ssuperset (ssubset_insert heB)

      -- There is a finite subset `B₀` of `B` so that `B₀ + e` is dependent
      obtain ⟨B₀, hB₀B, hB₀fin, hB₀e⟩ := htofin B e hBmax.1 heBdep
      have hB₀ := indep_subset hBmax.1 hB₀B

      -- `I` has a finite subset `I₀` that doesn't extend into `B₀`
      have hexI₀ : ∃ I₀, I₀ ⊆ I ∧ I₀.Finite ∧ ∀ x, x ∈ B₀ \ I₀ → ¬Indep (insert x I₀) := by
        have hch : ∀ (b : ↑(B₀ \ I)), ∃ Ib, Ib ⊆ I ∧ Ib.Finite ∧ ¬Indep (insert (b : α) Ib) := by
          rintro ⟨b, hb⟩; exact htofin I b hI (hcon b ⟨hB₀B hb.1, hb.2⟩)
        choose! f hf using hch
        have : Finite ↑(B₀ \ I) := hB₀fin.diff.to_subtype
        refine ⟨iUnion f ∪ (B₀ ∩ I),
          union_subset (iUnion_subset (fun i ↦ (hf i).1)) inter_subset_right,
          (finite_iUnion fun i ↦ (hf i).2.1).union (hB₀fin.subset inter_subset_left),
          fun x ⟨hxB₀, hxn⟩ hi ↦ ?_⟩
        have hxI : x ∉ I := fun hxI ↦ hxn <| Or.inr ⟨hxB₀, hxI⟩
        refine (hf ⟨x, ⟨hxB₀, hxI⟩⟩).2.2 (indep_subset hi <| insert_subset_insert ?_)
        apply subset_union_of_subset_left
        apply subset_iUnion

      obtain ⟨I₀, hI₀I, hI₀fin, hI₀⟩ := hexI₀

      set E₀ := insert e (I₀ ∪ B₀)
      have hE₀fin : E₀.Finite := (hI₀fin.union hB₀fin).insert e

      -- Extend `B₀` to a maximal independent subset of `I₀ ∪ B₀ + e`
      obtain ⟨J, ⟨hB₀J, hJ, hJss⟩, hJmax⟩ := Finite.exists_maximalFor (f := id)
        (s := {J | B₀ ⊆ J ∧ Indep J ∧ J ⊆ E₀})
        (hE₀fin.finite_subsets.subset (by simp))
        ⟨B₀, Subset.rfl, hB₀, subset_union_right.trans (subset_insert _ _)⟩

      have heI₀ : e ∉ I₀ := notMem_subset hI₀I heI
      have heI₀i : Indep (insert e I₀) := indep_subset hins (insert_subset_insert hI₀I)

      have heJ : e ∉ J := fun heJ ↦ hB₀e (indep_subset hJ <| insert_subset heJ hB₀J)

      have hJfin := hE₀fin.subset hJss

      -- We have `|I₀ + e| ≤ |J|`, since otherwise we could extend the maximal set `J`
      have hcard : (insert e I₀).ncard ≤ J.ncard := by
        refine not_lt.1 fun hlt ↦ ?_
        obtain ⟨f, hfI, hfJ, hfi⟩ := indep_aug hJ hJfin heI₀i (hI₀fin.insert e) hlt
        have hfE₀ : f ∈ E₀ := mem_of_mem_of_subset hfI (insert_subset_insert subset_union_left)
        exact hfJ <| insert_eq_self.1 <| le_imp_eq_iff_le_imp_le.2 (hJmax
          ⟨hB₀J.trans <| subset_insert _ _, hfi, insert_subset hfE₀ hJss⟩) (subset_insert _ _)

      -- But this means `|I₀| < |J|`, and extending `I₀` into `J` gives a contradiction
      rw [ncard_insert_of_notMem heI₀ hI₀fin, ← Nat.lt_iff_add_one_le] at hcard

      obtain ⟨f, hfJ, hfI₀, hfi⟩ := indep_aug (indep_subset hI hI₀I) hI₀fin hJ hJfin hcard
      exact hI₀ f ⟨Or.elim (hJss hfJ) (fun hfe ↦ (heJ <| hfe ▸ hfJ).elim) (by aesop), hfI₀⟩ hfi )
  (subset_ground := subset_ground)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6709a937797d5763a647c6ef29537e0e3261628c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
