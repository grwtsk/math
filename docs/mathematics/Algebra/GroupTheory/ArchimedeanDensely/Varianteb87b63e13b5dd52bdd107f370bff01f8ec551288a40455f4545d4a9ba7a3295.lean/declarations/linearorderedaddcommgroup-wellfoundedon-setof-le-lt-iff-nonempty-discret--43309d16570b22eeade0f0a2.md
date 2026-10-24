# LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e20739-3680-97ad-c9e8-09e0d7c82d22",
  "kind": "lemma",
  "lexical_name": "LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete",
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
  "slug": "linearorderedaddcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discret--43309d16570b22eeade0f0a2",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 334,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43309d16570b22eeade0f0a21cf09207f6c9d80349b78e3798322daffc52ca52",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e20739-3680-97ad-c9e8-09e0d7c82d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete
    {G : Type*} [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G] [Nontrivial G] {g : G} :
    Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Nonempty (G ≃+o ℤ) := by
  suffices Set.WellFoundedOn {x : G | 0 ≤ x} (· < ·) ↔ Nonempty (G ≃+o ℤ) by
    rw [← this]
    refine ⟨fun h ↦ (h.mapsTo (· + g) ?_).mono' ?_, fun h ↦ (h.mapsTo (· - g) ?_).mono' ?_⟩ <;>
    · try intro
      simp [Function.onFun]
  constructor
  · intro h
    replace h : WellFounded (α := {x : G | 0 ≤ x}) (· < ·) := h
    rw [WellFounded.wellFounded_iff_has_min] at h
    by_cases H : ∀ (x : G) {y}, 0 < y → ∃ n : ℕ, x ≤ n • y -- Archimedean
    · replace H : Archimedean G := ⟨H⟩
      rw [LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered]
      intro hd
      obtain ⟨y, hy⟩ := exists_ne (0 : G)
      wlog hy' : 0 < y generalizing y
      · refine this (-y) ?_ ?_
        · simp [hy]
        · simp only [not_lt] at hy'
          simp [lt_of_le_of_ne hy' hy]
      obtain ⟨⟨z, hz⟩, hz', hz''⟩ := h ({x | ⟨0, le_rfl⟩ < x}) ⟨⟨y, hy'.le⟩, hy'⟩
      obtain ⟨w, hw, hw'⟩ := exists_between hz'
      exact hz'' ⟨w, hw.le⟩ hw hw'
    · push_neg at H
      exfalso
      obtain ⟨x, y, hy0, H⟩ := H
      obtain ⟨_, ⟨n, rfl⟩, hz⟩ :=
        h (Set.range (fun n : ℕ ↦ ⟨x - n • y, sub_nonneg.mpr (H _).le⟩)) (range_nonempty _)
      refine hz ⟨x - (n + 1) • y, sub_nonneg.mpr (H _).le⟩ ⟨_, rfl⟩ ?_
      simp [add_smul, hy0]
  · rintro ⟨f⟩
    have : LocallyFiniteOrder G := LocallyFiniteOrder.ofOrderIsoClass f
    exact BddBelow.wellFoundedOn_lt ⟨0, by simp [mem_lowerBounds]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
