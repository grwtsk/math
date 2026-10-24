# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b84d905058bb002e09224a78613428f68b0e270154d7e8c49de6a69c666120e1",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--bf0cdec2581e9d27756c1e8d",
  "source": {
    "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf0cdec2581e9d27756c1e8d96db29fdc299d8b6ed9b54a82e49ac46d2eec3f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b84d905058bb002e09224a78613428f68b0e270154d7e8c49de6a69c666120e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp (F : StrictlyUnitaryLaxFunctor B C)
    (G : StrictlyUnitaryLaxFunctor C D) :
    StrictlyUnitaryLaxFunctor B D where
  __ := LaxFunctor.comp F.toLaxFunctor G.toLaxFunctor
  map_id _ := by simp [StrictlyUnitaryLaxFunctor.map_id]
  mapId_eq_eqToHom _ := by
    simp [StrictlyUnitaryLaxFunctor.mapId_eq_eqToHom,
      PrelaxFunctor.map₂_eqToHom]

section
attribute [local ext] StrictlyUnitaryLaxFunctor

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Composition of `StrictlyUnitaryLaxFunctor` is strictly right unitary -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccf71c18312734a2b59a368bdb65fe402e24948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
