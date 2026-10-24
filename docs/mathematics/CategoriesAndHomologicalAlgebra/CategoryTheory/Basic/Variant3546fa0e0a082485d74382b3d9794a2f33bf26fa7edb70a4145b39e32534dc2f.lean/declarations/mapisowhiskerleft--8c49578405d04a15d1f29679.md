# mapIsoWhiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:245abaf74c234fccd56da2ce7be31e8d30dc3dbc5e5d9bc762cf7c17d2c8c747",
  "kind": "def",
  "lexical_name": "mapIsoWhiskerLeft",
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
  "slug": "mapisowhiskerleft--8c49578405d04a15d1f29679",
  "source": {
    "blob": "1601309c99f49a2f8129829034c814d10e935aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 519,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c49578405d04a15d1f29679254cacdb64fe75c56873e4d7ff97117e66fa644e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:245abaf74c234fccd56da2ce7be31e8d30dc3dbc5e5d9bc762cf7c17d2c8c747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIsoWhiskerLeft (H : C ⥤ E) {Fᵣ : D ⥤ E'} {Gᵣ : D ⥤ E'} (α : Fᵣ ≅ Gᵣ) :
    mapPair H Fᵣ ≅ mapPair H Gᵣ :=
  mkNatIso
    (mapPairLeft H Fᵣ ≪≫ isoWhiskerRight (Iso.refl H) (inclLeft _ _) ≪≫ (mapPairLeft H Gᵣ).symm)
    (mapPairRight H Fᵣ ≪≫ isoWhiskerRight α (inclRight E E') ≪≫ (mapPairRight H Gᵣ).symm)

/-- A natural isomorphism `Fᵣ ≅ Gᵣ` induces a natural isomorphism
  `mapPair Fₗ H ≅ mapPair Gₗ H` for every `H : C ⥤ E`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1601309c99f49a2f8129829034c814d10e935aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
