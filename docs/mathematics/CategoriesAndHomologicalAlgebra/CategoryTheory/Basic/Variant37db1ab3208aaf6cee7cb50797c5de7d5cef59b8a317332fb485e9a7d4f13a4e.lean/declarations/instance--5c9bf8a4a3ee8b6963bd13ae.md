# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8deb9d213aca8297e276fb9026a45a225b00da53f8a1d2cc4013e9fda4c71bf6",
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
  "slug": "instance--5c9bf8a4a3ee8b6963bd13ae",
  "source": {
    "blob": "1b1d17c51df853d6f7bebdbad8cd3ff0cd4a42c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9bf8a4a3ee8b6963bd13ae7b90fe2e0264bfc988b1a3514a59aba50dc52d58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8deb9d213aca8297e276fb9026a45a225b00da53f8a1d2cc4013e9fda4c71bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CoeSort (BialgCat.{v} R) (Type v) :=
  ⟨(·.carrier)⟩

variable (R) in
/-- The object in the category of `R`-bialgebras associated to an `R`-bialgebra. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b1d17c51df853d6f7bebdbad8cd3ff0cd4a42c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
