# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ee75524733d5aee7ab798413c488654f8e77a1ea1c3f7860f86aa894b61eb2e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--55e0cd0467d87b3c5c39a75b",
  "source": {
    "blob": "54675ad8b7a54670e4c6509148c6dda621ee4b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55e0cd0467d87b3c5c39a75b8c67524c311ef9fa4502207e91209c53d22e4aad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ee75524733d5aee7ab798413c488654f8e77a1ea1c3f7860f86aa894b61eb2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [w.GuitartExact] (α : L ⟶ L') (β : R' ⟶ R)
    [IsIso α] [IsIso β] : (w.whiskerVertical α β).GuitartExact :=
  whiskerVertical w (asIso α) (asIso β).symm

end GuitartExact

end WhiskerVertical

section VerticalComposition

variable {H₁ : C₁ ⥤ D₁} {L₁ : C₁ ⥤ C₂} {R₁ : D₁ ⥤ D₂} {H₂ : C₂ ⥤ D₂}
  (w : TwoSquare H₁ L₁ R₁ H₂)
  {L₂ : C₂ ⥤ C₃} {R₂ : D₂ ⥤ D₃} {H₃ : C₃ ⥤ D₃}
  (w' : TwoSquare H₂ L₂ R₂ H₃)

/-- The canonical isomorphism between
`w.structuredArrowDownwards Y₁ ⋙ w'.structuredArrowDownwards (R₁.obj Y₁)` and
`(w ≫ᵥ w').structuredArrowDownwards Y₁.` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54675ad8b7a54670e4c6509148c6dda621ee4b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
