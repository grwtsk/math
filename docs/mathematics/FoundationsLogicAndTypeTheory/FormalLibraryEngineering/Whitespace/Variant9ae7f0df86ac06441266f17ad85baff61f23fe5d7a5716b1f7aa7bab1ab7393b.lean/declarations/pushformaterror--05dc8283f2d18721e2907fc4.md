# pushFormatError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea29890da48a52a984a0d7a35947fad2d28790b3f891662af716c8efb788a3fc",
  "kind": "def",
  "lexical_name": "pushFormatError",
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
  "slug": "pushformaterror--05dc8283f2d18721e2907fc4",
  "source": {
    "blob": "492e334f9a0538d0fe23cbe6216057ad6abd18a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05dc8283f2d18721e2907fc46e367e638a5fdccfbb91298b259c97fc9e585d1c",
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

Occurrence: `declaration:ea29890da48a52a984a0d7a35947fad2d28790b3f891662af716c8efb788a3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushFormatError (fs : Array FormatError) (f : FormatError) : Array FormatError :=
  -- If there are no errors already, we simply add the new one.
  if fs.isEmpty then fs.push f else
  let back := fs.back!
  -- If the latest error is of a different kind than the new one, we simply add the new one.
  if back.msg != f.msg || back.srcNat - back.length != f.srcNat then fs.push f else
  -- Otherwise, we are adding a further error of the same kind and we therefore merge the two.
  fs.pop.push {back with length := back.length + f.length, srcStartPos := f.srcEndPos}

/--
Scan the two input strings `L` and `M`, assuming `M` is the pretty-printed version of `L`.
This almost means that `L` and `M` only differ in whitespace.

While scanning the two strings, accumulate any discrepancies --- with some heuristics to avoid
flagging some line-breaking changes.
(The pretty-printer does not always produce desirably formatted code.)
-/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant9ae7f0df86ac06441266f17ad85baff61f23fe5d7a5716b1f7aa7bab1ab7393b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492e334f9a0538d0fe23cbe6216057ad6abd18a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
