# LinearOrderedCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3047f32e-608e-7ab3-0daa-cb2d65decf3d",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete",
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
  "slug": "linearorderedcommgroup-wellfoundedon-setofpred-le-lt-iff-nonempty-discre--0355acd87cb8483be1f98383",
  "source": {
    "blob": "ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 391,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0355acd87cb8483be1f98383e71eafc8a2ad7a77818023c669d8edd8378f71b5",
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

Occurrence: `result:3047f32e-608e-7ab3-0daa-cb2d65decf3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete
    {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [Nontrivial G] {g : G} :
    Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Nonempty (G ≃*o Multiplicative ℤ) := by
  let e : G ≃o Additive G := OrderIso.refl G
  suffices Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Set.WellFoundedOn {x | e g ≤ x} (· < ·) by
    rw [this, LinearOrderedAddCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete,
      OrderAddMonoidIso.toMultiplicativeRight.nonempty_congr]
  refine ⟨fun h ↦ (h.mapsTo e.symm fun _ ↦ e.le_symm_apply.mpr).mono' ?_,
    fun h ↦ (h.mapsTo e fun _ ↦ ?_).mono' ?_⟩ <;>
  simp [Function.onFun]

@[deprecated (since := "2026-07-09")]
alias LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete :=
  LinearOrderedCommGroup.wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
