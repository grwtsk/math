# TStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e408e55c7354e0428348ec10d6616c0f6432f20de6ee5392e8f6b86bfd38608",
  "kind": "structure",
  "lexical_name": "TStructure",
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
  "slug": "tstructure--ea584fe87c6fc53f1082a24b",
  "source": {
    "blob": "e03d365ad1e05af55cfc3eb5197a06becea4a996",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea584fe87c6fc53f1082a24b2ec78b2a5e373928d614adf5e1474f996d21375f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e408e55c7354e0428348ec10d6616c0f6432f20de6ee5392e8f6b86bfd38608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TStructure where
  /-- the predicate of objects that are `≤ n` for `n : ℤ`. -/
  le (n : ℤ) : ObjectProperty C
  /-- the predicate of objects that are `≥ n` for `n : ℤ`. -/
  ge (n : ℤ) : ObjectProperty C
  le_isClosedUnderIsomorphisms (n : ℤ) : (le n).IsClosedUnderIsomorphisms := by infer_instance
  ge_isClosedUnderIsomorphisms (n : ℤ) : (ge n).IsClosedUnderIsomorphisms := by infer_instance
  le_shift (n a n' : ℤ) (h : a + n' = n) (X : C) (hX : le n X) : le n' (X⟦a⟧)
  ge_shift (n a n' : ℤ) (h : a + n' = n) (X : C) (hX : ge n X) : ge n' (X⟦a⟧)
  zero' ⦃X Y : C⦄ (f : X ⟶ Y) (hX : le 0 X) (hY : ge 1 Y) : f = 0
  le_zero_le : le 0 ≤ le 1
  ge_one_le : ge 1 ≤ ge 0
  exists_triangle_zero_one (A : C) : ∃ (X Y : C) (_ : le 0 X) (_ : ge 1 Y)
    (f : X ⟶ A) (g : A ⟶ Y) (h : Y ⟶ X⟦(1 : ℤ)⟧), Triangle.mk f g h ∈ distTriang C

namespace TStructure

attribute [instance] le_isClosedUnderIsomorphisms ge_isClosedUnderIsomorphisms

variable {C}
variable (t : TStructure C)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc756dec8e15f75f2604f9c42d169c0394f7db3a8d78047a8486f17d3937bef3a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03d365ad1e05af55cfc3eb5197a06becea4a996` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
