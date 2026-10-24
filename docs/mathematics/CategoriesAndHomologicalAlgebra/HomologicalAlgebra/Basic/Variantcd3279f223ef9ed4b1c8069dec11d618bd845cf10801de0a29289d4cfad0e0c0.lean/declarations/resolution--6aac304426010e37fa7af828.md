# resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74beb65f7b742300a49d5a7295d638717bf7d0e2592ac91a9b2d42814c57d952",
  "kind": "abbrev",
  "lexical_name": "resolution",
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
  "slug": "resolution--6aac304426010e37fa7af828",
  "source": {
    "blob": "d4cd913b7b0f976cbebbb46a427942ea8d10e7d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aac304426010e37fa7af8287bff2c78540e84df993f767a4bd3579fff16bcdb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74beb65f7b742300a49d5a7295d638717bf7d0e2592ac91a9b2d42814c57d952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev resolution (X : TopRep k G) : CochainComplex (TopRep k G) ℕ :=
  CochainComplex.of (resolutionX X) (d X) (d_comp_d X)

/-- The shifted object in resolution by `1` degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4cd913b7b0f976cbebbb46a427942ea8d10e7d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
