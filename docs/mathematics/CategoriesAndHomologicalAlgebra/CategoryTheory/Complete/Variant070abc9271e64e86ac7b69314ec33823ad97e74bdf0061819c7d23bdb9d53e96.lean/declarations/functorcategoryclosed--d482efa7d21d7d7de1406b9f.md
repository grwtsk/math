# functorCategoryClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5f0fce9de37225b285a56cd78d8ee9500e26e13b9b3720feb25d531c2580f8e",
  "kind": "def",
  "lexical_name": "functorCategoryClosed",
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
  "slug": "functorcategoryclosed--d482efa7d21d7d7de1406b9f",
  "source": {
    "blob": "41c13c797d0bead40107a16e1b5f69303ecb6f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d482efa7d21d7d7de1406b9f9b72d91c75c5b7c71827c34acb2974481b9f3bb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5f0fce9de37225b285a56cd78d8ee9500e26e13b9b3720feb25d531c2580f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorCategoryClosed (F : I ⥤ C) : Closed F :=
  have := (ihom.adjunction (incl I ⋙ F)).isLeftAdjoint
  have := isLeftAdjoint_square_lift_comonadic (tensorLeft F) ((whiskeringLeft _ _ C).obj (incl I))
    ((whiskeringLeft _ _ C).obj (incl I)) (tensorLeft (incl I ⋙ F)) (Iso.refl _)
  { rightAdj := (tensorLeft F).rightAdjoint
    adj := Adjunction.ofIsLeftAdjoint (tensorLeft F) }

/--
Assuming the existence of certain limits, functors into a monoidal closed category form a
monoidal closed category.

Note: this is defined completely abstractly, and does not have any good definitional properties.
See the TODO in the module docstring.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41c13c797d0bead40107a16e1b5f69303ecb6f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
