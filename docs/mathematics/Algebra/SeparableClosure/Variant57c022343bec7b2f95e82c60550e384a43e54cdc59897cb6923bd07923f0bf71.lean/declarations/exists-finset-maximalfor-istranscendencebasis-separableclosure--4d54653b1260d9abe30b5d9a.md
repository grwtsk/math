# exists_finset_maximalFor_isTranscendenceBasis_separableClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30b4841d-00af-3323-3efa-331c69392a09",
  "kind": "lemma",
  "lexical_name": "exists_finset_maximalFor_isTranscendenceBasis_separableClosure",
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
  "slug": "exists-finset-maximalfor-istranscendencebasis-separableclosure--4d54653b1260d9abe30b5d9a",
  "source": {
    "blob": "351e941c60e48753083c1058006625011120084a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 358,
    "path": "GRWTSK/Algebra/SeparableClosure/Variant57c022343bec7b2f95e82c60550e384a43e54cdc59897cb6923bd07923f0bf71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d54653b1260d9abe30b5d9a59694c8ce07bb3186411053254c429fb29f01017",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableClosure/Variant57c022343bec7b2f95e82c60550e384a43e54cdc59897cb6923bd07923f0bf71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30b4841d-00af-3323-3efa-331c69392a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finset_maximalFor_isTranscendenceBasis_separableClosure
    [Algebra.EssFiniteType F E] :
    ∃ s : Finset E, MaximalFor (fun t : Set E ↦ IsTranscendenceBasis F ((↑) : t → E))
      (fun t ↦ (separableClosure (adjoin F t) E).restrictScalars F) s := by
  let d (s : Finset E) := Field.finInsepDegree (adjoin F (s : Set E)) E
  have Hexists : {s : Finset E | IsTranscendenceBasis F ((↑) : s → E)}.Nonempty := by
    have ⟨s, hs⟩ := IntermediateField.fg_top F E
    have : Algebra.IsAlgebraic (Algebra.adjoin F (s : Set E)) E := by
      rw [← isAlgebraic_adjoin_iff_top, hs, Algebra.isAlgebraic_iff_isIntegral]
      refine Algebra.isIntegral_of_surjective topEquiv.surjective
    have ⟨t, hts, ht⟩ := exists_isTranscendenceBasis_subset (R := F) (s : Set E)
    lift t to Finset E using s.finite_toSet.subset hts
    exact ⟨t, ht⟩
  let s := d.argminOn _ Hexists
  have hs := d.argminOn_mem _ Hexists
  refine ⟨s, hs, fun t ht ↦ not_lt_iff_le_imp_ge.mp fun H ↦ ?_⟩
  have : t.Finite := by
    simp [Set.Finite, ← Cardinal.mk_lt_aleph0_iff, ht.cardinalMk_eq hs, Cardinal.natCast_lt_aleph0]
  lift t to Finset E using this
  have : Module.Finite (adjoin F (s : Set E)) E := by
    apply +allowSynthFailures Algebra.finite_of_essFiniteType_of_isAlgebraic
    · exact .of_comp F _ _
    · convert! hs.isAlgebraic_field <;> simp [s]
  have : Module.Finite ((separableClosure (adjoin F (s : Set E)) E).restrictScalars F) E :=
    inferInstanceAs <| Module.Finite (separableClosure (adjoin F (s : Set E)) E) E
  apply d.not_lt_argminOn {s | IsTranscendenceBasis (ι := s) F Subtype.val} ht
  apply finrank_lt_of_gt H

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableClosure/Variant57c022343bec7b2f95e82c60550e384a43e54cdc59897cb6923bd07923f0bf71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableClosure/Variant57c022343bec7b2f95e82c60550e384a43e54cdc59897cb6923bd07923f0bf71.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351e941c60e48753083c1058006625011120084a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
