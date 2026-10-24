# ofStructuredArrowProjEquivalence.functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af10297e4eee5d40d55f925328e9c20e04965e5c7cb5c1a0976b508df1a6a8e5",
  "kind": "def",
  "lexical_name": "ofStructuredArrowProjEquivalence.functor",
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
  "slug": "ofstructuredarrowprojequivalence-functor--aecef31f488d541f0168f7de",
  "source": {
    "blob": "4824ac62ed60d335de8849c30f7b43ba7d83cb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aecef31f488d541f0168f7dec7e9b61f99f9f976f2973a9fe96b039e8e03501e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af10297e4eee5d40d55f925328e9c20e04965e5c7cb5c1a0976b508df1a6a8e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1220–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofStructuredArrowProjEquivalence.functor (F : D ⥤ T) (Y : T) (X : D) :
    StructuredArrow X (StructuredArrow.proj Y F) ⥤ StructuredArrow Y (Under.forget X ⋙ F) :=
  Functor.toStructuredArrow
    (Functor.toUnder (StructuredArrow.proj X _ ⋙ StructuredArrow.proj Y _) _
      (fun g => by exact g.hom) (fun m => by have := m.w; cat_disch)) _ _
    (fun f => f.right.hom) (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- The inverse functor of `ofStructuredArrowProjEquivalence.functor`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean#L1220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4824ac62ed60d335de8849c30f7b43ba7d83cb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
