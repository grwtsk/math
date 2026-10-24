# coconeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e09837568b245cfd99a80e784f0275220c25dd76b10087663cf4a62c4863b7",
  "kind": "def",
  "lexical_name": "coconeLift",
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
  "slug": "coconelift--058fe1df83ca4effd381bcc1",
  "source": {
    "blob": "3115c4b253bc2bcbb0a9dda166da83f9835425bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:058fe1df83ca4effd381bcc1e130473c7ab9b00ba60765a421471a6816950afc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e09837568b245cfd99a80e784f0275220c25dd76b10087663cf4a62c4863b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coconeLift : Cocone K ⥤ Cocone (liftFromUnder.obj K) where
  obj t := {
    pt := t.pt.right
    ι.app
    | of a => (t.ι.app a).right
    | star => t.pt.hom
    ι.naturality
    | star, star, _
    | star, of b, _ => by aesop
    | of a, of b, f => by simp [← Comma.comp_right]
  }
  map {t₁ t₂} f := {
    hom := f.hom.right
    w
    | star => by cat_disch
    | of a => by simp [← Comma.comp_right]
  }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
/-- This is the inverse of the previous construction: a cocone of an extended functor
`liftFromUnder.obj K : WithInitial J ⥤ C` consists of an object of `C`, together
with morphisms. This same object is a cocone of the original functor `K : J ⥤ Under X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3115c4b253bc2bcbb0a9dda166da83f9835425bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
