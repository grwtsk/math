# mem_closure_iff_exists_finset_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:037bc7bd-2570-594a-1691-bf3e2e6c9690",
  "kind": "lemma",
  "lexical_name": "mem_closure_iff_exists_finset_subset",
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
  "slug": "mem-closure-iff-exists-finset-subset--f3fc8ac33b488479e4c471d3",
  "source": {
    "blob": "9f61855959b053bdce3df2b1086478536492d1ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3fc8ac33b488479e4c471d3fe108c5d7c386dd2e95794f08306d0c6d608cc2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:037bc7bd-2570-594a-1691-bf3e2e6c9690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_closure_iff_exists_finset_subset {s : Set M} :
    x ∈ closure s ↔
      ∃ (f : M → ℕ) (t : Finset M), ↑t ⊆ s ∧ f.support ⊆ t ∧ ∏ a ∈ t, a ^ f a = x where
  mp hx := by
    classical
    induction hx using closure_induction with
    | one => exact ⟨0, ∅, by simp⟩
    | mem x hx =>
      simp only [Finset.mem_coe] at hx
      exact ⟨Pi.single x 1, {x}, by simp [hx, Pi.single_apply]⟩
    | mul x y _ _ hx hy =>
    obtain ⟨f, t, hts, hf, rfl⟩ := hx
    obtain ⟨g, u, hus, hg, rfl⟩ := hy
    refine ⟨f + g, t ∪ u, mod_cast Set.union_subset hts hus,
      (Function.support_add _ _).trans <| mod_cast Set.union_subset_union hf hg, ?_⟩
    simp only [Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    congr 1 <;> symm
    · refine Finset.prod_subset Finset.subset_union_left ?_
      simp +contextual [Function.support_subset_iff'.1 hf]
    · refine Finset.prod_subset Finset.subset_union_right ?_
      simp +contextual [Function.support_subset_iff'.1 hg]
  mpr := by
    rintro ⟨n, t, hts, -, rfl⟩; exact prod_mem _ fun x hx ↦ pow_mem (subset_closure <| hts hx) _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f61855959b053bdce3df2b1086478536492d1ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
