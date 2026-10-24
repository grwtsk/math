# isIso_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72d1654eb6acdafcfe0e4be2e5573f4bf6805a19c707c85e1e28d16b64b700e9",
  "kind": "instance",
  "lexical_name": "isIso_op",
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
  "slug": "isiso-op--5a0e8cafbe57c0c81536076f",
  "source": {
    "blob": "954c4fbb69bcad3f57ed15a1b4e93c290e71ed80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variante7dab3ef81f80d19e963ba9d98c70d3ac0ee61daf263b21e7626c684a8827bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a0e8cafbe57c0c81536076fc14a0f51edabf393d8ae9381f21addc26015ea4f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variante7dab3ef81f80d19e963ba9d98c70d3ac0ee61daf263b21e7626c684a8827bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72d1654eb6acdafcfe0e4be2e5573f4bf6805a19c707c85e1e28d16b64b700e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_op {X Y : C} (f : X ⟶ Y) [IsIso f] : IsIso f.op :=
  ⟨⟨(inv f).op, ⟨Quiver.Hom.unop_inj (by simp), Quiver.Hom.unop_inj (by simp)⟩⟩⟩

/-- If `f.op` is an isomorphism `f` must be too.
(This cannot be an instance as it would immediately loop!)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variante7dab3ef81f80d19e963ba9d98c70d3ac0ee61daf263b21e7626c684a8827bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variante7dab3ef81f80d19e963ba9d98c70d3ac0ee61daf263b21e7626c684a8827bff.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954c4fbb69bcad3f57ed15a1b4e93c290e71ed80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
