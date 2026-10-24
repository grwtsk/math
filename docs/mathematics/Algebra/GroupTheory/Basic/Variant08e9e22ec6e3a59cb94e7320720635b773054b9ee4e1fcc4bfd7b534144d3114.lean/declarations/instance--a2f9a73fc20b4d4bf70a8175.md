# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40494892940dd23db9be2243e801361778e494067780ba9c646ad1b877f9f3b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a2f9a73fc20b4d4bf70a8175",
  "source": {
    "blob": "e671d065f5aea09ca6c9b41fdc3478bf631c5358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 422,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2f9a73fc20b4d4bf70a8175d1b6a13df4b186c4cd9b8e34fe0b5293f8e98792",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e40494892940dd23db9be2243e801361778e494067780ba9c646ad1b877f9f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Coe CommMonCat.{u} MonCat.{u} where coe := (forget₂ CommMonCat MonCat).obj

/-- Universe lift functor for commutative monoids. -/
@[to_additive (attr := simps)
  /-- Universe lift functor for additive commutative monoids. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e671d065f5aea09ca6c9b41fdc3478bf631c5358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
