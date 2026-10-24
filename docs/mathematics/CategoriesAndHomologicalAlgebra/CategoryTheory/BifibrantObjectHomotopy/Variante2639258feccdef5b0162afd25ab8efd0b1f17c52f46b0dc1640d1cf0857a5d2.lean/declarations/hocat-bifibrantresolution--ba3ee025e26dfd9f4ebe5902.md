# HoCat.bifibrantResolution'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:150b67cea2144f3551ddcd538534fd315aeac183ba9d834d9b9bee61c2a4f676",
  "kind": "def",
  "lexical_name": "HoCat.bifibrantResolution'",
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
  "slug": "hocat-bifibrantresolution--ba3ee025e26dfd9f4ebe5902",
  "source": {
    "blob": "eca4faa69882f8ee95cdfdd4273c2392b95afee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba3ee025e26dfd9f4ebe59022dc23b1a5ec75edb62857dc4ae9739214cd2bc0f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:150b67cea2144f3551ddcd538534fd315aeac183ba9d834d9b9bee61c2a4f676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HoCat.bifibrantResolution' : CofibrantObject C ⥤ BifibrantObject.HoCat C where
  obj X := BifibrantObject.toHoCat.obj (bifibrantResolutionObj X)
  map f := BifibrantObject.toHoCat.map (bifibrantResolutionMap f)
  map_id X := bifibrantResolutionObj_hom_ext (by simp)
  map_comp {X₁ X₂ X₃} f g := bifibrantResolutionObj_hom_ext (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- The bifibrant resolution functor from the homotopy category of
cofibrant objects to the homotopy category of bifibrant objects. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca4faa69882f8ee95cdfdd4273c2392b95afee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
