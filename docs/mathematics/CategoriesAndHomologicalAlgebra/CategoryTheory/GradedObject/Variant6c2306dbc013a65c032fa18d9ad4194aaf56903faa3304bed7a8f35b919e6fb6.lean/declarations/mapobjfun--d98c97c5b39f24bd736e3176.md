# mapObjFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb7a446332a90330ffe378caa9a26cc8dcbcc18d196325b5c3ba0635de9c38b",
  "kind": "abbrev",
  "lexical_name": "mapObjFun",
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
  "slug": "mapobjfun--d98c97c5b39f24bd736e3176",
  "source": {
    "blob": "9e683eed1e19d5c3e122c6befca999a4141f0051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d98c97c5b39f24bd736e3176bf69fa62e39071a496398185672d412318b88e29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb7a446332a90330ffe378caa9a26cc8dcbcc18d196325b5c3ba0635de9c38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev mapObjFun (j : J) (i : p ⁻¹' {j}) : C := X i

variable (j : J)

/-- Given `X : GradedObject I C` and `p : I → J`, `X.HasMap p` is the condition that
for all `j : J`, the coproduct of all `X i` such `p i = j` exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e683eed1e19d5c3e122c6befca999a4141f0051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
