# readBinFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84953054481c4b8010f38b1b127ef40834f2e48293b67bbb3cd4d17193976253",
  "kind": "def",
  "lexical_name": "readBinFile",
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
  "slug": "readbinfile--256857da745f45aa18ba55d2",
  "source": {
    "blob": "6d2ee82102a22d30b73b8dbb945bec7209217636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:256857da745f45aa18ba55d2780911a3073f64fbaa13bc3e354329b594ed2478",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84953054481c4b8010f38b1b127ef40834f2e48293b67bbb3cd4d17193976253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1219–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def readBinFile (fname : FilePath) : IO ByteArray := do
  -- Requires metadata so defined after metadata
  let mdata ← fname.metadata
  let size := mdata.byteSize.toUSize
  let handle ← IO.FS.Handle.mk fname .read
  let buf ←
    if size > 0 then
      handle.read mdata.byteSize.toUSize
    else
      pure <| ByteArray.emptyWithCapacity 0
  handle.readBinToEndInto buf

/--
Reads the entire contents of the UTF-8-encoded file at the given path as a `String`.

An exception is thrown if the contents of the file are not valid UTF-8. This is in addition to
exceptions that may always be thrown as a result of failing to read files.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean#L1219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2ee82102a22d30b73b8dbb945bec7209217636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
