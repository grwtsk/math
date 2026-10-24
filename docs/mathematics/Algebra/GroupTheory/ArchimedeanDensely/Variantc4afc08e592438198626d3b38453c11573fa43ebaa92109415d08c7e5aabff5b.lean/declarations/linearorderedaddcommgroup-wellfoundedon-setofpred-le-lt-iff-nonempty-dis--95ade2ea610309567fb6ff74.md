# LinearOrderedAddCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e747f2b9-e30c-8e67-b875-912e5b4c5eea",
  "kind": "lemma",
  "lexical_name": "LinearOrderedAddCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete",
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
  "slug": "linearorderedaddcommgroup-wellfoundedon-setofpred-le-lt-iff-nonempty-dis--95ade2ea610309567fb6ff74",
  "source": {
    "blob": "ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 341,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ade2ea610309567fb6ff7442f341b944073bff3e39893f034d42a9f43e2b89",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e747f2b9-e30c-8e67-b875-912e5b4c5eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedAddCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete
    {G : Type*} [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G] [Nontrivial G] {g : G} :
    Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Nonempty (G ≃+o ℤ) := by
  suffices Set.WellFoundedOn {x : G | 0 ≤ x} (· < ·) ↔ Nonempty (G ≃+o ℤ) by
    rw [← this]
    refine ⟨fun h ↦ (h.mapsTo (· + g) ?_).mono' ?_, fun h ↦ (h.mapsTo (· - g) ?_).mono' ?_⟩ <;>
    · try intro
      simp [Function.onFun]
  constructor
  · intro h
    change @WellFounded {x : G | 0 ≤ x} (· < ·) at h
    rw [WellFounded.wellFounded_iff_has_min] at h
    by_cases! H : ∀ (x : G) {y}, 0 < y → ∃ n : ℕ, x ≤ n • y -- Archimedean
    · replace H : Archimedean G := ⟨H⟩
      rw [LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered]
      intro hd
      obtain ⟨y, hy⟩ := exists_ne (0 : G)
      wlog! hy' : 0 < y generalizing y
      · refine this (-y) ?_ ?_
        · simp [hy]
        · simp [lt_of_le_of_ne hy' hy]
      obtain ⟨⟨z, hz⟩, hz', hz''⟩ := h ({x | ⟨0, le_rfl⟩ < x}) ⟨⟨y, hy'.le⟩, hy'⟩
      obtain ⟨w, hw, hw'⟩ := exists_between hz'
      exact hz'' ⟨w, hw.le⟩ hw hw'
    · exfalso
      obtain ⟨x, y, hy0, H⟩ := H
      obtain ⟨_, ⟨n, rfl⟩, hz⟩ :=
        h (Set.range (fun n : ℕ ↦ ⟨x - n • y, sub_nonneg.mpr (H _).le⟩)) (range_nonempty _)
      refine hz ⟨x - (n + 1) • y, sub_nonneg.mpr (H _).le⟩ ⟨_, rfl⟩ ?_
      simp [add_smul, hy0]
  · rintro ⟨f⟩
    have : LocallyFiniteOrder G := LocallyFiniteOrder.ofOrderIsoClass f
    exact BddBelow.wellFoundedOn_lt ⟨0, by simp [mem_lowerBounds]⟩

@[deprecated (since := "2026-07-09")]
alias LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete :=
  LinearOrderedAddCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
