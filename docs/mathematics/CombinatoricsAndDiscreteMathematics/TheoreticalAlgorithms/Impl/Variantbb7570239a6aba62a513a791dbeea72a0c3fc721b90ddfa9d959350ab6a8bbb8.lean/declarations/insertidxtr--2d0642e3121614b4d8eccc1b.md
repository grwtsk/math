# insertIdxTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2482745fe5c72753d384bb37c05a0bc2e28c99c822d53fc33ff97fbb2a39b6eb",
  "kind": "def",
  "lexical_name": "insertIdxTR",
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
  "slug": "insertidxtr--2d0642e3121614b4d8eccc1b",
  "source": {
    "blob": "45a614232e9f6e8dd3bb837139440fd61fdcdb60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 405,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d0642e3121614b4d8eccc1bc3fb69c2c3529ad978aa6822d19398c3bcce9601",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2482745fe5c72753d384bb37c05a0bc2e28c99c822d53fc33ff97fbb2a39b6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def insertIdxTR (l : List α) (n : Nat) (a : α) : List α := go n l #[] where
  /-- Auxiliary for `insertIdxTR`: `insertIdxTR.go a n l acc = acc.toList ++ insertIdx n a l`. -/
  go : Nat → List α → Array α → List α
  | 0, l, acc => acc.toListAppend (a :: l)
  | _, [], acc => acc.toList
  | n+1, a :: l, acc => go n l (acc.push a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a614232e9f6e8dd3bb837139440fd61fdcdb60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
