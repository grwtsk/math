# ModuleOutputDescrs.fromJson?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29b6322eb1aa106200912c3ddbad570d0cedc23d06c9a11fa5a8ac5758752054",
  "kind": "def",
  "lexical_name": "ModuleOutputDescrs.fromJson?",
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
  "slug": "moduleoutputdescrs-fromjson--6aec2f65c9bc8b8ba6775db7",
  "source": {
    "blob": "8f99edfb7be028b1c2b8f2c9a3bc4c00a5cfa60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aec2f65c9bc8b8ba6775db7332f631af9b8bf2be44974beb5674e0d06990322",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29b6322eb1aa106200912c3ddbad570d0cedc23d06c9a11fa5a8ac5758752054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def ModuleOutputDescrs.fromJson? (val : Json) : Except String ModuleOutputDescrs := do
  let obj ← JsonObject.fromJson? val
  let oleanHashes : Array ArtifactDescr ← obj.get "o"
  let some olean := oleanHashes[0]?
    | throw "expected a least one 'o' (.olean) hash"
  return {
    isModule := (← obj.get? "m").getD (oleanHashes.size > 1)
    olean := olean
    oleanServer? := oleanHashes[1]?
    oleanPrivate? := oleanHashes[2]?
    ilean := ← obj.get "i"
    irSig? := ← obj.get? "rs"
    ir? := ← obj.get? "r"
    c := ← obj.get "c"
    bc? := ← obj.get? "b"
    ltar? := ← obj.get? "l"
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f99edfb7be028b1c2b8f2c9a3bc4c00a5cfa60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
