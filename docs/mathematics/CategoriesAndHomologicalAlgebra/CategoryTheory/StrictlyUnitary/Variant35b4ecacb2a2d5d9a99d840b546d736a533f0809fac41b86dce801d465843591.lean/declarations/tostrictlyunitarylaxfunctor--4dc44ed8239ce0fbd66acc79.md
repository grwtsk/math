# toStrictlyUnitaryLaxFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb442710755478f964d234e321d7202137f6d8981d6662cb4875a020ad9ed42",
  "kind": "def",
  "lexical_name": "toStrictlyUnitaryLaxFunctor",
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
  "slug": "tostrictlyunitarylaxfunctor--4dc44ed8239ce0fbd66acc79",
  "source": {
    "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dc44ed8239ce0fbd66acc796b92493c6e0739c158382c0fb06aeec5da7c157c",
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

Occurrence: `declaration:7fb442710755478f964d234e321d7202137f6d8981d6662cb4875a020ad9ed42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStrictlyUnitaryLaxFunctor (F : StrictlyUnitaryPseudofunctor B C) :
    StrictlyUnitaryLaxFunctor B C where
  __ := F.toPseudofunctor.toLax
  map_id x := by simp [F.map_id]
  mapId_eq_eqToHom x := by simp [F.mapId_eq_eqToIso]

section

variable (F : StrictlyUnitaryPseudofunctor B C)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccf71c18312734a2b59a368bdb65fe402e24948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
