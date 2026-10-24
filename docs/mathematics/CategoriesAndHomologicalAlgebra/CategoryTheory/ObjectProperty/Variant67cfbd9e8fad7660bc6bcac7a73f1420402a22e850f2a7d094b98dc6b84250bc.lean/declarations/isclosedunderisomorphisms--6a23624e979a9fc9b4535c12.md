# IsClosedUnderIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a8d90f6b38ec1b287e56c0eef9ba103cf8eefbe7b2db4d5438610d1909eb0d2",
  "kind": "class",
  "lexical_name": "IsClosedUnderIsomorphisms",
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
  "slug": "isclosedunderisomorphisms--6a23624e979a9fc9b4535c12",
  "source": {
    "blob": "5914c94ce4736ca8ad84e8ce1b972d8b8802549b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ObjectProperty/Variant67cfbd9e8fad7660bc6bcac7a73f1420402a22e850f2a7d094b98dc6b84250bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a23624e979a9fc9b4535c1292b6f4c7e5ceac1275a1a9b255284926950c9daa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ObjectProperty/Variant67cfbd9e8fad7660bc6bcac7a73f1420402a22e850f2a7d094b98dc6b84250bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a8d90f6b38ec1b287e56c0eef9ba103cf8eefbe7b2db4d5438610d1909eb0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsClosedUnderIsomorphisms : Prop where
  isClosedUnderIsomorphisms (X : B) : (P.prop X).IsClosedUnderIsomorphisms

attribute [instance] IsClosedUnderIsomorphisms.isClosedUnderIsomorphisms

section

variable [P.IsClosedUnderMapObj]

/-- Given a property `P` of objects for `F : Pseudofunctor B Cat` and a morphism `f : X ⟶ Y`
in `B`, this is the functor `P.Obj X ⥤ P.Obj Y` that is induced by `F.map f`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ObjectProperty/Variant67cfbd9e8fad7660bc6bcac7a73f1420402a22e850f2a7d094b98dc6b84250bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ObjectProperty/Variant67cfbd9e8fad7660bc6bcac7a73f1420402a22e850f2a7d094b98dc6b84250bc.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5914c94ce4736ca8ad84e8ce1b972d8b8802549b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
