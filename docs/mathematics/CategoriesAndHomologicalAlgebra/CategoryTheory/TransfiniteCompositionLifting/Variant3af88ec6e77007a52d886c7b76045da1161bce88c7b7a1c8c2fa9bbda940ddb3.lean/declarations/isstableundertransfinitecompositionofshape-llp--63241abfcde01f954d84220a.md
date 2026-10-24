# isStableUnderTransfiniteCompositionOfShape_llp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f79484060f08ed361c4a1dae7ac67ac85086bb60243c7c8461f9a4c19d39158",
  "kind": "instance",
  "lexical_name": "isStableUnderTransfiniteCompositionOfShape_llp",
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
  "slug": "isstableundertransfinitecompositionofshape-llp--63241abfcde01f954d84220a",
  "source": {
    "blob": "ab3a793cdef7f4a08594380fd58878ced27a6e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63241abfcde01f954d84220a31cb4299d35b0942735ad4b9b3789de001da0d5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f79484060f08ed361c4a1dae7ac67ac85086bb60243c7c8461f9a4c19d39158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStableUnderTransfiniteCompositionOfShape_llp :
    W.llp.IsStableUnderTransfiniteCompositionOfShape J := by
  rw [isStableUnderTransfiniteCompositionOfShape_iff]
  rintro X Y f ⟨h⟩
  have : W.llp (h.incl.app ⊥) := fun _ _ p hp ↦
    HasLiftingProperty.transfiniteComposition.hasLiftingProperty_ι_app_bot
      (hc := h.isColimit) (fun j hj ↦ h.map_mem j hj _ hp)
  exact (MorphismProperty.arrow_mk_iso_iff _
    (Arrow.isoMk h.isoBot.symm (Iso.refl _))).2 this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3a793cdef7f4a08594380fd58878ced27a6e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
