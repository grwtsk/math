# isoOfComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c5afd8afc1b4d6a4055446586e2abf8632c04715bec0fd5cbe3d80c5e0dc986",
  "kind": "def",
  "lexical_name": "isoOfComponents",
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
  "slug": "isoofcomponents--f65cb1f8d31f4417113773e1",
  "source": {
    "blob": "8cde92e55dd45a87c7877796ba19de8ea6540b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f65cb1f8d31f4417113773e1dca62e57213029ea717bc9142feed0fe50af0983",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c5afd8afc1b4d6a4055446586e2abf8632c04715bec0fd5cbe3d80c5e0dc986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def isoOfComponents {X Y : FormalCoproduct.{w} C} (e : X.I ≃ Y.I)
    (h : ∀ i, X.obj i ≅ Y.obj (e i)) : X ≅ Y where
  hom := { f := e, φ := fun i ↦ (h i).hom }
  inv := { f := e.symm, φ := fun i ↦ eqToHom (by simp) ≫ (h (e.symm i)).inv }
  hom_inv_id := by ext <;> aesop
  inv_hom_id := by ext <;> aesop

variable (C) in
/-- An object of the original category produces a formal coproduct on that object only, so indexed
by `PUnit`, the type with one element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cde92e55dd45a87c7877796ba19de8ea6540b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
