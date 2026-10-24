# mapPairComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01aebefa60c4a7a45b3122b7ced5c25d95f505e7d73f4f14ef6938d19e76f167",
  "kind": "def",
  "lexical_name": "mapPairComp",
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
  "slug": "mappaircomp--2e151ee0b8b34db215bc71d7",
  "source": {
    "blob": "43bfefb5c5db7214f92dd7c7288b377e008735ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 432,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e151ee0b8b34db215bc71d7983a6b7e3cd422d2f701ace1897d8835d8cb4f3f",
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

Occurrence: `declaration:01aebefa60c4a7a45b3122b7ced5c25d95f505e7d73f4f14ef6938d19e76f167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPairComp (Fₗ : C ⥤ E) (Fᵣ : D ⥤ E') (Gₗ : E ⥤ J) (Gᵣ : E' ⥤ K) :
    mapPair (Fₗ ⋙ Gₗ) (Fᵣ ⋙ Gᵣ) ≅ mapPair Fₗ Fᵣ ⋙ mapPair Gₗ Gᵣ :=
  mkNatIso
    (mapPairLeft (Fₗ ⋙ Gₗ) (Fᵣ ⋙ Gᵣ) ≪≫
      Functor.associator Fₗ Gₗ (inclLeft J K) ≪≫
      (isoWhiskerLeft Fₗ (mapPairLeft Gₗ Gᵣ).symm) ≪≫
      (Functor.associator Fₗ (inclLeft E E') (mapPair Gₗ Gᵣ)).symm ≪≫
      isoWhiskerRight (mapPairLeft Fₗ Fᵣ).symm (mapPair Gₗ Gᵣ))
    (mapPairRight (Fₗ ⋙ Gₗ) (Fᵣ ⋙ Gᵣ) ≪≫
      Functor.associator Fᵣ Gᵣ (inclRight J K) ≪≫
      (isoWhiskerLeft Fᵣ (mapPairRight Gₗ Gᵣ).symm) ≪≫
      (Functor.associator Fᵣ (inclRight E E') (mapPair Gₗ Gᵣ)).symm ≪≫
      isoWhiskerRight (mapPairRight Fₗ Fᵣ).symm (mapPair Gₗ Gᵣ))

section mapPairComp

variable (Fₗ : C ⥤ E) (Fᵣ : D ⥤ E') (Gₗ : E ⥤ J) (Gᵣ : E' ⥤ K)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdb83cec3902e316a82f5a35d9665542bf1784d8db90a7fc8a93ba6a6458dd9.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bfefb5c5db7214f92dd7c7288b377e008735ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
