# colimitLimitToLimitColimitCone_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c744084c0a0f1656236ea95186d200a7f621e7daf1a630080db318f5a7765894",
  "kind": "instance",
  "lexical_name": "colimitLimitToLimitColimitCone_iso",
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
  "slug": "colimitlimittolimitcolimitcone-iso--46c501654140067c2705b4f6",
  "source": {
    "blob": "6999b6bb54591de0e4c44f2e5f38709cf8691bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46c501654140067c2705b4f669df9af2324b14f0ed77c283763222ce248d2836",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c744084c0a0f1656236ea95186d200a7f621e7daf1a630080db318f5a7765894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance colimitLimitToLimitColimitCone_iso (F : J ⥤ K ⥤ Type v) :
    IsIso (colimitLimitToLimitColimitCone F) := by
  have : IsIso (colimitLimitToLimitColimitCone F).hom := by
    suffices IsIso (colimitLimitToLimitColimit (uncurry.obj F) ≫
        lim.map (whiskerRight (currying.unitIso.app F).inv colim)) by
      apply IsIso.comp_isIso
    infer_instance
  apply Cones.cone_iso_of_hom_iso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant5b5a9dbbadacda7cee6212ead07a83be6a9fa0e1ed9f33f088e6aa8cbe97a314.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6999b6bb54591de0e4c44f2e5f38709cf8691bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
