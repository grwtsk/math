# LoopGeneratingSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9c42d847de62d8be6fa7cb09b404504fd06905aeaf06483e68e81d7a5816062",
  "kind": "abbrev",
  "lexical_name": "LoopGeneratingSet",
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
  "slug": "loopgeneratingset--f8a232774e3eb3836ed17f1f",
  "source": {
    "blob": "3e58b161ee9cd5366e969acbb877cd651df8857a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 22,
    "path": "GRWTSK/Algebra/GroupTheory/Holonomy/Variantb4244c01ab58f9d512ab2d8b175d8b0686db73d2d81ac7cd45dfda508beb5de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8a232774e3eb3836ed17f1fab562e39f5d4d4dda9a640d533bd674e026d3a8f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Holonomy/Variantb4244c01ab58f9d512ab2d8b175d8b0686db73d2d81ac7cd45dfda508beb5de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9c42d847de62d8be6fa7cb09b404504fd06905aeaf06483e68e81d7a5816062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] :=
  Mathematics.Federation.LoopGeneratingSet Loop Generator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Holonomy/Variantb4244c01ab58f9d512ab2d8b175d8b0686db73d2d81ac7cd45dfda508beb5de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Holonomy/Variantb4244c01ab58f9d512ab2d8b175d8b0686db73d2d81ac7cd45dfda508beb5de7.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e58b161ee9cd5366e969acbb877cd651df8857a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
