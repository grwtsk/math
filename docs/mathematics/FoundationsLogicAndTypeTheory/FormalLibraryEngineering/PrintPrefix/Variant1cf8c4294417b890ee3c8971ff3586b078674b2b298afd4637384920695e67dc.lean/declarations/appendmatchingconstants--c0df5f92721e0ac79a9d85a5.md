# appendMatchingConstants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f04119e2a7a18e94a003df078eb9c16b24588657767931aee479299d76e55385",
  "kind": "def",
  "lexical_name": "appendMatchingConstants",
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
  "slug": "appendmatchingconstants--c0df5f92721e0ac79a9d85a5",
  "source": {
    "blob": "524f18c23e36ac2f57e699d163ed5754d41f61cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0df5f92721e0ac79a9d85a59a5bd4446585144ffc51278a8ce9bb8d611b318b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f04119e2a7a18e94a003df078eb9c16b24588657767931aee479299d76e55385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def appendMatchingConstants (msg : String) (opts : PrintPrefixConfig) (pre : Name)
     : MetaM String := do
  let cinfos ← getMatchingConstants (matchName opts pre) opts.imported
  let cinfos := cinfos.qsort fun p q => lexNameLt (reverseName p.name) (reverseName q.name)
  let mut msg := msg
  let ppInfo cinfo :=
        if opts.showTypes then do
          pure s!"{cinfo.name} : {← Meta.ppExpr cinfo.type}\n"
        else
          pure s!"{cinfo.name}\n"
  for cinfo in cinfos do
    msg := msg ++ (← ppInfo cinfo)
  pure msg

/--
Implementation for #print prefix
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524f18c23e36ac2f57e699d163ed5754d41f61cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
