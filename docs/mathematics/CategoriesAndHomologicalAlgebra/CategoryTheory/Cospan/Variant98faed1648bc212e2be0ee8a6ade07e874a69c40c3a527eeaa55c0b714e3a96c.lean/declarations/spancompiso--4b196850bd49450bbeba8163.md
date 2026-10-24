# spanCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:428f8e28cc6eac0ac25ad186df4e910e3d468a1c3503984d03de5088a0fdc509",
  "kind": "def",
  "lexical_name": "spanCompIso",
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
  "slug": "spancompiso--4b196850bd49450bbeba8163",
  "source": {
    "blob": "c2bb5a2b61c78dbaf095b98158d38f9e8fd4123c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant98faed1648bc212e2be0ee8a6ade07e874a69c40c3a527eeaa55c0b714e3a96c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b196850bd49450bbeba816352410f5954e0ff1d4251b40af75c5f754d76349e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant98faed1648bc212e2be0ee8a6ade07e874a69c40c3a527eeaa55c0b714e3a96c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:428f8e28cc6eac0ac25ad186df4e910e3d468a1c3503984d03de5088a0fdc509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanCompIso (F : C ⥤ D) {X Y Z : C} (f : X ⟶ Y) (g : X ⟶ Z) :
    span f g ⋙ F ≅ span (F.map f) (F.map g) :=
  NatIso.ofComponents (by rintro (⟨⟩ | ⟨⟨⟩⟩) <;> exact Iso.refl _)
    (by rintro (⟨⟩ | ⟨⟨⟩⟩) (⟨⟩ | ⟨⟨⟩⟩) f <;> cases f <;> simp)

section

variable (F : C ⥤ D) {X Y Z : C} (f : X ⟶ Y) (g : X ⟶ Z)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant98faed1648bc212e2be0ee8a6ade07e874a69c40c3a527eeaa55c0b714e3a96c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant98faed1648bc212e2be0ee8a6ade07e874a69c40c3a527eeaa55c0b714e3a96c.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bb5a2b61c78dbaf095b98158d38f9e8fd4123c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
