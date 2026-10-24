# QuasicoherentData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89b6aa123ec82206161f89ce42ff29ae7239e2e966df1d58483e0eef076afbb1",
  "kind": "structure",
  "lexical_name": "QuasicoherentData",
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
  "slug": "quasicoherentdata--3ca4e4f4514e2f445b9dea22",
  "source": {
    "blob": "0b3f888739127354a1b1110cc78a3c19c14e208d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ca4e4f4514e2f445b9dea227c2e6699757660b4a8137d196c2cb73aa5fa0505",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89b6aa123ec82206161f89ce42ff29ae7239e2e966df1d58483e0eef076afbb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuasicoherentData (M : SheafOfModules.{u} R) where
  /-- the index type of the covering -/
  I : Type w
  /-- a family of objects which cover the terminal object -/
  X : I → C
  coversTop : J.CoversTop X
  /-- a presentation of the sheaf of modules `M.over (X i)` for any `i : I` -/
  presentation (i : I) : (M.over (X i)).Presentation

namespace QuasicoherentData

/-- Shrink the indexing type of `QuasicoherentData` into the universe of the site. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3f888739127354a1b1110cc78a3c19c14e208d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
