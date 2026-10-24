# germToPullbackStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:424d0bac7ab49ad06b7d19a8153c0da54921198743844f107a338cae7eb07fe2",
  "kind": "def",
  "lexical_name": "germToPullbackStalk",
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
  "slug": "germtopullbackstalk--505090b5716eb7cd49a2e92c",
  "source": {
    "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:505090b5716eb7cd49a2e92c6189b7a22cf2f677dba6dcadf8b3686e49164d6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:424d0bac7ab49ad06b7d19a8153c0da54921198743844f107a338cae7eb07fe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def germToPullbackStalk (f : X ⟶ Y) (F : Y.Presheaf C) (U : Opens X) (x : U) :
    (pullbackObj f F).obj (op U) ⟶ F.stalk ((f : X → Y) (x : X)) :=
  colimit.desc (Lan.diagram (Opens.map f).op F (op U))
    { pt := F.stalk ((f : X → Y) (x : X))
      ι :=
        { app := fun V => F.germ ⟨((f : X → Y) (x : X)), V.hom.unop.le x.2⟩
          naturality := fun _ _ i => by erw [Category.comp_id]; exact F.germ_res i.left.unop _ } }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.germ_to_pullback_stalk TopCat.Presheaf.germToPullbackStalk

/-- The morphism `(f⁻¹ℱ)ₓ ⟶ ℱ_{f(x)}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402610cb5d8820923fccc00f18e8043a9a2d9cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
