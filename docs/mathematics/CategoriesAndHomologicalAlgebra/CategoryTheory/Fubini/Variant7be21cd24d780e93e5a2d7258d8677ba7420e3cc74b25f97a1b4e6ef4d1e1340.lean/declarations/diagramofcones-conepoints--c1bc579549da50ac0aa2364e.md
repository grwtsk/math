# DiagramOfCones.conePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:512ea8fc029154e4ed78c1ba45ca84879f1508d4a343dbcc456090455d6b6d5b",
  "kind": "def",
  "lexical_name": "DiagramOfCones.conePoints",
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
  "slug": "diagramofcones-conepoints--c1bc579549da50ac0aa2364e",
  "source": {
    "blob": "8a203a49b24faf9425fbf273d9fdfa91eabd41fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1bc579549da50ac0aa2364e00f63b1c4a25690c29175f819b9b5f8299bed9c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:512ea8fc029154e4ed78c1ba45ca84879f1508d4a343dbcc456090455d6b6d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiagramOfCones.conePoints (D : DiagramOfCones F) : J ⥤ C where
  obj j := (D.obj j).pt
  map f := (D.map f).Hom
  map_id j := D.id j
  map_comp f g := D.comp f g
#align category_theory.limits.diagram_of_cones.cone_points CategoryTheory.Limits.DiagramOfCones.conePoints

/-- Given a diagram `D` of limit cones over the `F.obj j`, and a cone over `uncurry.obj F`,
we can construct a cone over the diagram consisting of the cone points from `D`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a203a49b24faf9425fbf273d9fdfa91eabd41fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
