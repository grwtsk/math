# Cone.toStructuredArrowIsoToStructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb759bcb6c723a6c4000fdd74fa57344ab95a3cbd52723b3c3a9071e858a795",
  "kind": "def",
  "lexical_name": "Cone.toStructuredArrowIsoToStructuredArrow",
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
  "slug": "cone-tostructuredarrowisotostructuredarrow--dcf43979a8adc0ced90d274a",
  "source": {
    "blob": "0c7d66b1003e1d2bfc9236b7177e76cc0f023c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante3e18a5a325f1ab47cb40e0a84db40322eba03015d053e8f34820af6e5225295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcf43979a8adc0ced90d274a82622068a95c349c15d06c854b3f404ad9de2204",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante3e18a5a325f1ab47cb40e0a84db40322eba03015d053e8f34820af6e5225295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb759bcb6c723a6c4000fdd74fa57344ab95a3cbd52723b3c3a9071e858a795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cone.toStructuredArrowIsoToStructuredArrow {F : J ⥤ C} (c : Cone F) :
    c.toStructuredArrow ≅ (𝟭 J).toStructuredArrow c.pt F c.π.app (by simp) :=
  Iso.refl _

set_option backward.defeqAttrib.useBackward true in
/-- `Functor.toStructuredArrow` can be expressed in terms of `Cone.toStructuredArrow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante3e18a5a325f1ab47cb40e0a84db40322eba03015d053e8f34820af6e5225295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante3e18a5a325f1ab47cb40e0a84db40322eba03015d053e8f34820af6e5225295.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7d66b1003e1d2bfc9236b7177e76cc0f023c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
