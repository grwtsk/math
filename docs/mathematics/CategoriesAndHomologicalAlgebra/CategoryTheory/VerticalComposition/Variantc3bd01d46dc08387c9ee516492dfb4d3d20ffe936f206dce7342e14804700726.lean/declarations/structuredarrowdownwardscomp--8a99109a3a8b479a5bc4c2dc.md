# structuredArrowDownwardsComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:304ef1b5e616e6cf5e6dcefc9168da205b0c324396a48b4c272054bc839fa00a",
  "kind": "def",
  "lexical_name": "structuredArrowDownwardsComp",
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
  "slug": "structuredarrowdownwardscomp--8a99109a3a8b479a5bc4c2dc",
  "source": {
    "blob": "6766c3a34cde2cf7d0be82de92e53978855a3821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a99109a3a8b479a5bc4c2dcc1a0e63f859b78d4a3b621df34953b0834dd9663",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:304ef1b5e616e6cf5e6dcefc9168da205b0c324396a48b4c272054bc839fa00a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def structuredArrowDownwardsComp (Y₁ : D₁) :
    w.structuredArrowDownwards Y₁ ⋙ w'.structuredArrowDownwards (R₁.obj Y₁) ≅
      (w ≫ᵥ w').structuredArrowDownwards Y₁ :=
  NatIso.ofComponents (fun _ => StructuredArrow.isoMk (Iso.refl _))

/-- The vertical composition of 2-squares. (Variant where we allow the replacement of
the vertical compositions by isomorphic functors.) -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6766c3a34cde2cf7d0be82de92e53978855a3821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
