# elabPrintPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9061de5db655b387b4bf74d1e0326e15802d44d2c93b4e223c1e624e8c40ad2e",
  "kind": "def",
  "lexical_name": "elabPrintPrefix",
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
  "slug": "elabprintprefix--e15b022b14835e780c4f64e8",
  "source": {
    "blob": "29fa51d8345e615b93bd4a24af5615265af318cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e15b022b14835e780c4f64e876c1928fd97576f726d9ccf0cd6c1efcab01a03b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9061de5db655b387b4bf74d1e0326e15802d44d2c93b4e223c1e624e8c40ad2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab printPrefix] def elabPrintPrefix : CommandElab
| `(#print prefix%$tk $[$cfg:config]? $name:ident) => do
  let nameId := name.getId
  liftTermElabM do
    let opts ← elabPrintPrefixConfig (mkOptionalNode cfg)
    let mut msg ← appendMatchingConstants "" opts nameId
    if msg.isEmpty then
      if let [name] ← resolveGlobalConst name then
        msg ← appendMatchingConstants msg opts name
    if !msg.isEmpty then
      logInfoAt tk msg
| _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fa51d8345e615b93bd4a24af5615265af318cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
