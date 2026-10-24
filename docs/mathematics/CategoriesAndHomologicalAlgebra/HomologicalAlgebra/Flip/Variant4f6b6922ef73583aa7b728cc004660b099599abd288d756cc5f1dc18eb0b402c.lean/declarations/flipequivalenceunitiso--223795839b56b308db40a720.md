# flipEquivalenceUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:399d1b1ae1ee9c8fc2c26d0920b1ec4ad22d529abbd358c7819df3b7843ca566",
  "kind": "def",
  "lexical_name": "flipEquivalenceUnitIso",
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
  "slug": "flipequivalenceunitiso--223795839b56b308db40a720",
  "source": {
    "blob": "b82aa952fa338fb6bb10019f26d175c2ac751fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Flip/Variant4f6b6922ef73583aa7b728cc004660b099599abd288d756cc5f1dc18eb0b402c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:223795839b56b308db40a72095c5419d38118a33463e7fdab1d820623ddca143",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Flip/Variant4f6b6922ef73583aa7b728cc004660b099599abd288d756cc5f1dc18eb0b402c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:399d1b1ae1ee9c8fc2c26d0920b1ec4ad22d529abbd358c7819df3b7843ca566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flipEquivalenceUnitIso :
    𝟭 (HomologicalComplex (HomologicalComplex V c) c') ≅ flip V c c' ⋙ flip V c' c :=
  NatIso.ofComponents
    (fun C =>
      { hom :=
          { f := fun i => { f := fun j => 𝟙 ((C.X i).X j) }
            comm' := fun i j _ => by
              ext
              dsimp
              simp only [Category.id_comp, Category.comp_id] }
        inv :=
          { f := fun i => { f := fun j => 𝟙 ((C.X i).X j) }
            comm' := fun i j _ => by
              ext
              dsimp
              simp only [Category.id_comp, Category.comp_id] } })
    fun {X Y} f => by
      ext
      dsimp
      simp only [Category.id_comp, Category.comp_id]
#align homological_complex.flip_equivalence_unit_iso HomologicalComplex.flipEquivalenceUnitIso

/-- Auxiliary definition for `HomologicalComplex.flipEquivalence`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Flip/Variant4f6b6922ef73583aa7b728cc004660b099599abd288d756cc5f1dc18eb0b402c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Flip/Variant4f6b6922ef73583aa7b728cc004660b099599abd288d756cc5f1dc18eb0b402c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82aa952fa338fb6bb10019f26d175c2ac751fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
