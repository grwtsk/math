# expReduceKMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2c457beb3fe6fd58ed5967a927cd436187f439baa72cb3c4b9d8febaff5aa54",
  "kind": "def",
  "lexical_name": "expReduceKMeta",
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
  "slug": "expreducekmeta--2828d9c800815846fcb1c258",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2828d9c800815846fcb1c258dc8748babf3533e00d2b9f8abb22f75411e6bb28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2c457beb3fe6fd58ed5967a927cd436187f439baa72cb3c4b9d8febaff5aa54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expReduceKMeta (q : ℚ) : Nat :=
  Nat.log2 (ratCeilAbs q + 1)

/-- Heuristic exp depth estimate using argument reduction.
    We approximate the required depth based on |q/2^k|, where k = log2(ceil|q|+1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
