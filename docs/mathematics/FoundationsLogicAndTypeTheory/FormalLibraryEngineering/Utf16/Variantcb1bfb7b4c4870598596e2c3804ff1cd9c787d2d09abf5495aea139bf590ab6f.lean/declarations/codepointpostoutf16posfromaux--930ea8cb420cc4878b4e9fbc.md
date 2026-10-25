# codepointPosToUtf16PosFromAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:551b7d01a620d529de2f5ec8f36d9b0e5ff9c2cf363548fbbce1e3fd5a335059",
  "kind": "def",
  "lexical_name": "codepointPosToUtf16PosFromAux",
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
  "slug": "codepointpostoutf16posfromaux--930ea8cb420cc4878b4e9fbc",
  "source": {
    "blob": "4e1fbb6e04b7ee6a7c9e93e7aea11e2b74c55177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variantcb1bfb7b4c4870598596e2c3804ff1cd9c787d2d09abf5495aea139bf590ab6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:930ea8cb420cc4878b4e9fbc6acad03f0a81463ce2ee9395ba5ace30a8464867",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variantcb1bfb7b4c4870598596e2c3804ff1cd9c787d2d09abf5495aea139bf590ab6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:551b7d01a620d529de2f5ec8f36d9b0e5ff9c2cf363548fbbce1e3fd5a335059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def codepointPosToUtf16PosFromAux (s : String) : Nat → Pos.Raw → Nat → Nat
  | 0,    _,       utf16pos => utf16pos
  | cp+1, utf8pos, utf16pos => codepointPosToUtf16PosFromAux s cp (utf8pos.next s) (utf16pos + csize16 (utf8pos.get s))

/-- Computes the UTF-16 offset of the `n`-th Unicode codepoint
in the substring of `s` starting at UTF-8 offset `off`.
Yes, this is actually useful.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variantcb1bfb7b4c4870598596e2c3804ff1cd9c787d2d09abf5495aea139bf590ab6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variantcb1bfb7b4c4870598596e2c3804ff1cd9c787d2d09abf5495aea139bf590ab6f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1fbb6e04b7ee6a7c9e93e7aea11e2b74c55177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
