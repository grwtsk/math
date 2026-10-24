# invertiblePD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b6ae398fe126c58db840539c641f6de571cb789264863a814f94b3e148acb46",
  "kind": "instance",
  "lexical_name": "invertiblePD",
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
  "slug": "invertiblepd--c47df8d63215998d5d1e99a1",
  "source": {
    "blob": "c57ef96e6e03aff24cc5c8a300e4441b5f68e1b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 292,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c47df8d63215998d5d1e99a1178f4b5cc8795f0c9d5e7c8380f9abc5f9a4e720",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b6ae398fe126c58db840539c641f6de571cb789264863a814f94b3e148acb46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance invertiblePD [Fintype l] [Invertible (2 : R)] : Invertible (PD l R) :=
  invertibleOfRightInverse _ _ (pd_inv l R)

/-- An equivalence between two possible definitions of the classical Lie algebra of type D. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57ef96e6e03aff24cc5c8a300e4441b5f68e1b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
