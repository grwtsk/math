# mkFormatError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df24399f343d4b67aa49a6474cdf4ee3149e89c5c45886816dc3cbe0e2b1f056",
  "kind": "def",
  "lexical_name": "mkFormatError",
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
  "slug": "mkformaterror--1f2d30cd941790317c525e31",
  "source": {
    "blob": "492e334f9a0538d0fe23cbe6216057ad6abd18a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f2d30cd941790317c525e31e707a107b5b012125a460e7e6c5aa48bb59bf839",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df24399f343d4b67aa49a6474cdf4ee3149e89c5c45886816dc3cbe0e2b1f056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFormatError (ls ms : String) (msg : String) (length : Nat := 1) : FormatError where
  srcNat := ls.length
  srcEndPos := ls.rawEndPos
  fmtPos := ms.length
  msg := msg
  length := length
  srcStartPos := ls.rawEndPos

/--
Add a new `FormatError` `f` to the array `fs`, trying, as much as possible, to merge the new
`FormatError` with the last entry of `fs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492e334f9a0538d0fe23cbe6216057ad6abd18a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
