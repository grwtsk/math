# coneOfConeCurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63472a40c91558a5a45d8490beef3f617e444b46b77dfc1ea134094f835413cf",
  "kind": "def",
  "lexical_name": "coneOfConeCurry",
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
  "slug": "coneofconecurry--b462c13e9a74029ed26078d5",
  "source": {
    "blob": "8e6dd1d0bf7daab0fcd24d4d6272b18511e20042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b462c13e9a74029ed26078d57442133ff80acce5d7b4e0a59954aea24977a7a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63472a40c91558a5a45d8490beef3f617e444b46b77dfc1ea134094f835413cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOfConeCurry {D : DiagramOfCones (curry.obj G)} (Q : ∀ j, IsLimit (D.obj j))
    (c : Cone G) : Cone D.conePoints where
  pt := c.pt
  π :=
    { app j := (Q j).lift
        { pt := c.pt
          π := { app k := c.π.app (j, k) } }
      naturality {_ j'} _ := (Q j').hom_ext (by simp) }

set_option backward.defeqAttrib.useBackward true in
open scoped CategoryTheory.Prod in
/-- Given a diagram `D` of colimit cocones over the `F.obj j`, and a cocone over `uncurry.obj F`,
we can construct a cocone over the diagram consisting of the cocone points from `D`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6dd1d0bf7daab0fcd24d4d6272b18511e20042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
