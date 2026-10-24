# opLaxMonoidalPi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f81d8d7cbfaf24b25958adc4cc918b127e3b781aa96b19a037c94cebadf9779",
  "kind": "instance",
  "lexical_name": "opLaxMonoidalPi'",
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
  "slug": "oplaxmonoidalpi--bc3173034c41495bb3d228ee",
  "source": {
    "blob": "fba3ddbe37cb970f7cf45cca40cdb152a4722dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc3173034c41495bb3d228eeb523e3ee60b6313e16d6919a59d3b8ff7815cd3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f81d8d7cbfaf24b25958adc4cc918b127e3b781aa96b19a037c94cebadf9779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance opLaxMonoidalPi' {D : Type*} [Category* D] [MonoidalCategory D]
    (F : ∀ i : I, D ⥤ C i)
    [∀ i, (F i).OplaxMonoidal] :
    (Functor.pi' F).OplaxMonoidal where
  η := fun i ↦ Functor.OplaxMonoidal.η (F i)
  δ X Y := fun i ↦ Functor.OplaxMonoidal.δ (F i) X Y
  oplax_left_unitality X := by ext; simp
  oplax_right_unitality X := by ext; simp

set_option backward.defeqAttrib.useBackward true in
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba3ddbe37cb970f7cf45cca40cdb152a4722dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
