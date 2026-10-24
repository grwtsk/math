# coeff_comp_sq_ofScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77f66a81-cb09-b78f-3736-5aa30ba89477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86134820-e7a6-441e-1f5a-10ff2f3e068d",
  "kind": "lemma",
  "lexical_name": "coeff_comp_sq_ofScalars",
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
  "slug": "coeff-comp-sq-ofscalars--32b158f55b8c4ba2e0c5b93d",
  "source": {
    "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 530,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b158f55b8c4ba2e0c5b93d362b17d7785b7325dda475dda4c39c2a8d01ea8d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86134820-e7a6-441e-1f5a-10ff2f3e068d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coeff_comp_sq_ofScalars (c : ℕ → ℝ) (n : ℕ) :
    ((FormalMultilinearSeries.ofScalars ℝ c).comp sqSeries).coeff n =
      if n % 2 = 0 then c (n / 2) else 0 := by
  simp only [FormalMultilinearSeries.coeff, FormalMultilinearSeries.comp,
    ContinuousMultilinearMap.sum_apply]
  by_cases hn : n % 2 = 0
  case neg =>
    rw [if_neg hn]
    apply Finset.sum_eq_zero
    intro comp _
    simp only [FormalMultilinearSeries.compAlongComposition_apply]
    rw [ofScalars_apply_prod, prod_sqSeries_applyComposition]
    have hodd : n % 2 = 1 := by omega
    have hne := odd_composition_has_non_two_block hodd comp
    have hne' : ¬∀ i, comp.blocksFun i = 2 := fun h => hne.elim fun i hi => hi (h i)
    rw [if_neg hne']
    ring
  case pos =>
    rw [if_pos hn]
    -- n is even, write n = 2 * k
    obtain ⟨k, hk⟩ : ∃ k, n = 2 * k := ⟨n / 2, by omega⟩
    subst hk
    -- The only non-zero term is twosComposition k
    have hsplit : ∀ comp : Composition (2 * k),
        (FormalMultilinearSeries.ofScalars ℝ c).compAlongComposition sqSeries comp
          (1 : Fin (2 * k) → ℝ) =
          if ∀ i, comp.blocksFun i = 2 then c k else 0 := by
      intro comp
      simp only [FormalMultilinearSeries.compAlongComposition_apply]
      rw [ofScalars_apply_prod, prod_sqSeries_applyComposition]
      by_cases hall : ∀ i, comp.blocksFun i = 2
      · rw [if_pos hall, if_pos hall]
        have hlength : comp.length = k := by
          have := blocks_all_two_implies comp hall
          omega
        simp [hlength]
      · rw [if_neg hall, if_neg hall]
        ring
    simp_rw [hsplit]
    -- Sum of (if condition then c k else 0) over all compositions
    -- Only the twosComposition k satisfies the condition
    have hall_twos : ∀ i, (twosComposition k).blocksFun i = 2 := twosComposition_blocksFun k
    rw [Finset.sum_eq_single (twosComposition k)]
    · rw [if_pos hall_twos]
      simp
    · intro comp _ hne
      by_cases hall : ∀ i, comp.blocksFun i = 2
      · exfalso
        exact hne (twosComposition_unique k comp hall)
      · rw [if_neg hall]
    · intro hnot
      exfalso
      exact hnot (Finset.mem_univ _)

-- The power series for x² at 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4340fe46dfba1e97488de14f88a8acf6b3d3cdcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
