# partialFunToPointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c857bf17c7b9ac80d527af7a0c1928dc15af7695f1b1e783cc1d516d899d3fdc",
  "kind": "def",
  "lexical_name": "partialFunToPointed",
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
  "slug": "partialfuntopointed--705eef15c192c1fa8de5e7f9",
  "source": {
    "blob": "c5d65f076306ab3bdf4f784d61d53f7f0df65522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:705eef15c192c1fa8de5e7f9aee6261f4de7e7eb9ff3c46ea1e6247ece0ce77e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c857bf17c7b9ac80d527af7a0c1928dc15af7695f1b1e783cc1d516d899d3fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def partialFunToPointed : PartialFun ⥤ Pointed := by
  classical
  exact
    { obj := fun X => ⟨Option X, none⟩
      map := fun f => ⟨Option.elim' none fun a => (f a).toOption, rfl⟩
      map_id := fun X => Pointed.Hom.ext <| funext fun o => Option.recOn o rfl fun a => (by
        dsimp [CategoryStruct.id]
        convert Part.some_toOption a)
      map_comp := fun f g => Pointed.Hom.ext <| funext fun o => Option.recOn o rfl fun a => by
        dsimp [CategoryStruct.comp]
        rw [Part.bind_toOption g (f a), Option.elim'_eq_elim] }

/-- The equivalence induced by `PartialFunToPointed` and `PointedToPartialFun`.
`Part.equivOption` made functorial. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d65f076306ab3bdf4f784d61d53f7f0df65522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
