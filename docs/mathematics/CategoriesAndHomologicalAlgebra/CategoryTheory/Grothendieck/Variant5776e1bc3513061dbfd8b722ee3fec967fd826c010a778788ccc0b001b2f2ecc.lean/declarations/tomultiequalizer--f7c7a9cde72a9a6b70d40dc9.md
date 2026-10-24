# toMultiequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f54f99ebbb14520ef0dc505bc823e110d81b8acc76e8683f6427a46511832d4b",
  "kind": "abbrev",
  "lexical_name": "toMultiequalizer",
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
  "slug": "tomultiequalizer--f7c7a9cde72a9a6b70d40dc9",
  "source": {
    "blob": "48ed1c11d30557c503b1fb72b85824a04b711214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 708,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant5776e1bc3513061dbfd8b722ee3fec967fd826c010a778788ccc0b001b2f2ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7c7a9cde72a9a6b70d40dc953aea830cc14c895cd7109629fed4194cd4bd503",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant5776e1bc3513061dbfd8b722ee3fec967fd826c010a778788ccc0b001b2f2ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f54f99ebbb14520ef0dc505bc823e110d81b8acc76e8683f6427a46511832d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev toMultiequalizer {D : Type u₁} [Category.{v₁} D] (S : J.Cover X)
    (P : Cᵒᵖ ⥤ D) [Limits.HasMultiequalizer (S.index P)] :
    P.obj (Opposite.op X) ⟶ Limits.multiequalizer (S.index P) :=
  Limits.Multiequalizer.lift _ _ (fun I => P.map I.f.op)
    (by
      intro I
      dsimp only [index, Relation.fst, Relation.snd]
      simp only [← P.map_comp, ← op_comp, I.w])
#align category_theory.grothendieck_topology.cover.to_multiequalizer CategoryTheory.GrothendieckTopology.Cover.toMultiequalizer

end Cover

/-- Pull back a cover along a morphism. -/
@[simps obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant5776e1bc3513061dbfd8b722ee3fec967fd826c010a778788ccc0b001b2f2ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant5776e1bc3513061dbfd8b722ee3fec967fd826c010a778788ccc0b001b2f2ecc.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ed1c11d30557c503b1fb72b85824a04b711214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
