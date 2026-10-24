# pushout_inl_iso_of_left_factors_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e2d7aec266ac08ca08279444183d843d74c92fdfbcedfcdff25046816d0384",
  "kind": "instance",
  "lexical_name": "pushout_inl_iso_of_left_factors_epi",
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
  "slug": "pushout-inl-iso-of-left-factors-epi--e33d634553b4f4d44a9e0eb0",
  "source": {
    "blob": "60f2a146af1d933427fd97b77d15df394b7fae80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 358,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e33d634553b4f4d44a9e0eb0943d739261361e7cc2f53a862928a323b5bf9ca9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e2d7aec266ac08ca08279444183d843d74c92fdfbcedfcdff25046816d0384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pushout_inl_iso_of_left_factors_epi (f : X ⟶ Y) :
    IsIso (pushout.inl _ _ : _ ⟶ pushout (h ≫ f) h) := by
  convert (congrArg IsIso (show pushout.inl _ _ ≫ _ = _ from colimit.isoColimitCocone_ι_inv
    ⟨_, pushoutIsPushoutOfEpiComp f (𝟙 _) h⟩ WalkingSpan.left)).mp
        inferInstance
  · exact (Category.comp_id _).symm
  · exact (Category.comp_id _).symm

end

section

open WalkingSpan

variable (f : X ⟶ Y) [Epi f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f2a146af1d933427fd97b77d15df394b7fae80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
