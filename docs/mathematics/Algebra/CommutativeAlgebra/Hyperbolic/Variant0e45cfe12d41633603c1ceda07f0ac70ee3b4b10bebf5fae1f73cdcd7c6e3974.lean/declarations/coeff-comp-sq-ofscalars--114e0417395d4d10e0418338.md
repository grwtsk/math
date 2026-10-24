# coeff_comp_sq_ofScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3733f0dd-5aee-789e-ab0b-e63eedb2f81a",
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
  "slug": "coeff-comp-sq-ofscalars--114e0417395d4d10e0418338",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 538,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114e0417395d4d10e041833868496a4d445dcb2f4b990589fc47b617a48f8613",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3733f0dd-5aee-789e-ab0b-e63eedb2f81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–592.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
