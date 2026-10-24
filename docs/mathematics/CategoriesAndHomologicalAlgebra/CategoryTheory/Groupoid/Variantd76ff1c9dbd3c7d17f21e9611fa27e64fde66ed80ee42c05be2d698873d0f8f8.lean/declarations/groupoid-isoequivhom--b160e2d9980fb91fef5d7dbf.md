# Groupoid.isoEquivHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70f5515f854634c4f6a6a84583ab3008688bf125e5a85bba6d78a56f19ccbbfa",
  "kind": "def",
  "lexical_name": "Groupoid.isoEquivHom",
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
  "slug": "groupoid-isoequivhom--b160e2d9980fb91fef5d7dbf",
  "source": {
    "blob": "49d19f155db785680352b29acb70eea99c6a9e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b160e2d9980fb91fef5d7dbfc47c6ce0141f0ad24e49350d9a1d1075a1fa8ec6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70f5515f854634c4f6a6a84583ab3008688bf125e5a85bba6d78a56f19ccbbfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Groupoid.isoEquivHom : (X ≅ Y) ≃ (X ⟶ Y) where
  toFun := Iso.hom
  invFun f := ⟨f, Groupoid.inv f, (by simp), (by simp)⟩
  left_inv _ := Iso.ext rfl
  right_inv _ := rfl

variable (C)

/-- The functor from a groupoid `C` to its opposite sending every morphism to its inverse. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d19f155db785680352b29acb70eea99c6a9e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
