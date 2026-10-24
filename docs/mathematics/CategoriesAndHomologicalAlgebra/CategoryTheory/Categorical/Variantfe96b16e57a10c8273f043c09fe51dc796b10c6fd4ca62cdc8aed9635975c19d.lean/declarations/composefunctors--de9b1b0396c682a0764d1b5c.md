# composeFunctors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1e838ac3ef8720a0cdc69be6ddeec8a58fcdebc29b20297c7e11a15e01991cd",
  "kind": "def",
  "lexical_name": "composeFunctors",
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
  "slug": "composefunctors--de9b1b0396c682a0764d1b5c",
  "source": {
    "blob": "565449703703ec99c7f4158dcc3a0ad8a0278a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de9b1b0396c682a0764d1b5c5f074055fe2b311afa989c1cfcc2889b8b670ea1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1e838ac3ef8720a0cdc69be6ddeec8a58fcdebc29b20297c7e11a15e01991cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def composeFunctors
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    {E : CategoryLike.{wObj, wHom}}
    (F : FunctorLike C D)
    (G : FunctorLike D E) :
    FunctorLike C E where
  obj := fun X => G.obj (F.obj X)
  map := fun f => G.map (F.map f)
  map_id := by
    intro X
    calc
      G.map (F.map (C.id X)) =
          G.map (D.id (F.obj X)) := congrArg G.map (F.map_id X)
      _ = E.id (G.obj (F.obj X)) := G.map_id (F.obj X)
  map_comp := by
    intro X Y Z f g
    calc
      G.map (F.map (C.comp f g)) =
          G.map (D.comp (F.map f) (F.map g)) :=
            congrArg G.map (F.map_comp f g)
      _ = E.comp (G.map (F.map f)) (G.map (F.map g)) :=
            G.map_comp (F.map f) (F.map g)

/-- A natural isomorphism between two core-only functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565449703703ec99c7f4158dcc3a0ad8a0278a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
