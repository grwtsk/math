# costructuredArrowYonedaEquivalenceInverseπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b724dc64bac8631c9e98cf4cf470ee1c6090cd88d9e80b23e9062cfeeaf9ca3e",
  "kind": "def",
  "lexical_name": "costructuredArrowYonedaEquivalenceInverseπ",
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
  "slug": "costructuredarrowyonedaequivalenceinverse--72c894d9cd62e8451edb277e",
  "source": {
    "blob": "e1d63ce0e5afe0cae35bd7a5fff7bcd02b5bbeb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c894d9cd62e8451edb277e822cfe8c2eb985053a188bf7cd2121de1f13ed99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b724dc64bac8631c9e98cf4cf470ee1c6090cd88d9e80b23e9062cfeeaf9ca3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowYonedaEquivalenceInverseπ (F : Cᵒᵖ ⥤ Type v) :
    (costructuredArrowYonedaEquivalence F).inverse ⋙ (π F).leftOp ≅ CostructuredArrow.proj _ _ :=
  Iso.refl _

/-- The opposite of the category of elements of a presheaf of types
is equivalent to a category of costructured arrows for the Yoneda embedding functor. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1d63ce0e5afe0cae35bd7a5fff7bcd02b5bbeb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
