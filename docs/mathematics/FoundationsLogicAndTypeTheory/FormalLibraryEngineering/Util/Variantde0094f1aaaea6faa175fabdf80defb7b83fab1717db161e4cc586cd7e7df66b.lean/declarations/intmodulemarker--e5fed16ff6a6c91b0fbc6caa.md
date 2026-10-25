# ____intModuleMarker____

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13858d2dcfb08dae91479703ebd8390663992436e274adffccf303f2a99161d4",
  "kind": "def",
  "lexical_name": "____intModuleMarker____",
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
  "slug": "intmodulemarker--e5fed16ff6a6c91b0fbc6caa",
  "source": {
    "blob": "79fd9aaf557905a5fd8e107f700af922b74f0af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantde0094f1aaaea6faa175fabdf80defb7b83fab1717db161e4cc586cd7e7df66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5fed16ff6a6c91b0fbc6caa48df513093dd4ab91292bd1a8015ef836cf3de16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantde0094f1aaaea6faa175fabdf80defb7b83fab1717db161e4cc586cd7e7df66b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13858d2dcfb08dae91479703ebd8390663992436e274adffccf303f2a99161d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ____intModuleMarker____ : Bool := true

/--
Return auxiliary expression used as "virtual" parent when
internalizing auxiliary expressions created by `toIntModuleExpr`.
The function `toIntModuleExpr` converts a `CommRing` polynomial into
a `IntModule` expression. We don't want this auxiliary expression to be
internalized by the `CommRing` module since it uses a nonstandard encoding
with `@HSMul.hSMul Int α α`, a virtual `One.one` constant, etc.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantde0094f1aaaea6faa175fabdf80defb7b83fab1717db161e4cc586cd7e7df66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantde0094f1aaaea6faa175fabdf80defb7b83fab1717db161e4cc586cd7e7df66b.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fd9aaf557905a5fd8e107f700af922b74f0af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
