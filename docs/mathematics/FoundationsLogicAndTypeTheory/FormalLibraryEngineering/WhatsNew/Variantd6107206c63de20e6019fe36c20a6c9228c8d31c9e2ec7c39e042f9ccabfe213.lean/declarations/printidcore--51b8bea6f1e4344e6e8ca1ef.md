# printIdCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c0ca685096aca0fd5d0b64d15f4665b4422ad1af7419ecc2abad4da1ba5eeea",
  "kind": "def",
  "lexical_name": "printIdCore",
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
  "slug": "printidcore--51b8bea6f1e4344e6e8ca1ef",
  "source": {
    "blob": "3532393e3fcb235f57c968259a08117049721b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51b8bea6f1e4344e6e8ca1ef594286b882257061abe6548c1ff277c31cde9ff6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c0ca685096aca0fd5d0b64d15f4665b4422ad1af7419ecc2abad4da1ba5eeea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printIdCore (id : Name) : ConstantInfo → CoreM MessageData
  | ConstantInfo.axiomInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "axiom" id us t u
  | ConstantInfo.defnInfo { levelParams := us, type := t, value := v, safety := s, .. } =>
    printDefLike "def" id us t v s
  | ConstantInfo.thmInfo { levelParams := us, type := t, value := v, .. } =>
    printDefLike "theorem" id us t v
  | ConstantInfo.opaqueInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constant" id us t u
  | ConstantInfo.quotInfo { levelParams := us, type := t, .. } =>
    mkHeader' "Quotient primitive" id us t false
  | ConstantInfo.ctorInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constructor" id us t u
  | ConstantInfo.recInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "recursor" id us t u
  | ConstantInfo.inductInfo
      { levelParams := us, numParams, numIndices, type := t, ctors, isUnsafe := u, .. } =>
    printInduct id us numParams numIndices t ctors u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3532393e3fcb235f57c968259a08117049721b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
