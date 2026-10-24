# instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ef69664288e6e434d70807a61fe22537115de0b8357ad347e476443a0f02fe1",
  "kind": "instance",
  "lexical_name": "instAlgebra",
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
  "slug": "instalgebra--3c6fa7eadd5b7dbb46893e80",
  "source": {
    "blob": "6313e75f01ff9a65c277c42e3dbe6e46f415cda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 412,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c6fa7eadd5b7dbb46893e8092eee8b6da4512b334a14606e2540346f924eb0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ef69664288e6e434d70807a61fe22537115de0b8357ad347e476443a0f02fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebra : Algebra S (A 0) := inferInstanceAs <| Algebra S (subalgebra A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6313e75f01ff9a65c277c42e3dbe6e46f415cda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
