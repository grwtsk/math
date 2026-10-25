# mkErrorAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a86372afaeea7015ae2a87a6c832dbdef4c810a225de94a25776ce0a4f15164e",
  "kind": "def",
  "lexical_name": "mkErrorAt",
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
  "slug": "mkerrorat--688652c71af574861e52cdff",
  "source": {
    "blob": "2deef2d231abf7c0fddd4d3cc2a2eb70d7034704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:688652c71af574861e52cdfff72d7a4bde88b1490d267d573415c4f9f7ad5e12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a86372afaeea7015ae2a87a6c832dbdef4c810a225de94a25776ce0a4f15164e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkErrorAt (s : ParserState) (msg : String) (pos : String.Pos.Raw) (initStackSz? : Option Nat := none) : ParserState :=
  s.mkErrorsAt [msg] pos initStackSz?

/--
  Reports given 'expected' messages at range of top stack element (assumed to be a single token).
  Replaces the element with `missing` and resets position to the token position.
  `iniPos` can be specified to avoid this position lookup but still must be identical to the token position. -/
-- We use `0` as a cheap default to save an allocation; we're unlikely to do enough backtracking at that
-- position to be significant.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2deef2d231abf7c0fddd4d3cc2a2eb70d7034704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
