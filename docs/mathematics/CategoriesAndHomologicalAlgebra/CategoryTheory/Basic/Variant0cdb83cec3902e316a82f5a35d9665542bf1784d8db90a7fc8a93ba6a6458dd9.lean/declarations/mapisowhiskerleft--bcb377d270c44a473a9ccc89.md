# mapIsoWhiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f35fcd6beb46f1bd826d3a1a5f619dd81a681d4bf7f305a30d386e849fe0944d",
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
  "slug": "mapisowhiskerleft--bcb377d270c44a473a9ccc89",
  "source": {
    "blob": "43bfefb5c5db7214f92dd7c7288b377e008735ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 565,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcb377d270c44a473a9ccc89c74a0dcbc50511fe6f41ca2b32a2d34a2e2d4b55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f35fcd6beb46f1bd826d3a1a5f619dd81a681d4bf7f305a30d386e849fe0944d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIsoWhiskerLeft (H : C ⥤ E) {Fᵣ : D ⥤ E'} {Gᵣ : D ⥤ E'} (α : Fᵣ ≅ Gᵣ) :
    mapPair H Fᵣ ≅ mapPair H Gᵣ :=
  mkNatIso
    (mapPairLeft H Fᵣ ≪≫ isoWhiskerRight (Iso.refl H) (inclLeft _ _) ≪≫ (mapPairLeft H Gᵣ).symm)
    (mapPairRight H Fᵣ ≪≫ isoWhiskerRight α (inclRight E E') ≪≫ (mapPairRight H Gᵣ).symm)

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- A natural isomorphism `Fᵣ ≅ Gᵣ` induces a natural isomorphism
  `mapPair Fₗ H ≅ mapPair Gₗ H` for every `H : C ⥤ E`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bfefb5c5db7214f92dd7c7288b377e008735ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
