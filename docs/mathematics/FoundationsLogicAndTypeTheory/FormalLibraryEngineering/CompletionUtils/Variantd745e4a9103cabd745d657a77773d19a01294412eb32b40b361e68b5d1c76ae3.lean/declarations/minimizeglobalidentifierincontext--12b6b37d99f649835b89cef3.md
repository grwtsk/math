# minimizeGlobalIdentifierInContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02f17bfdbfc3f333b883aadf04d2717c30dd56d74fff591acaeed466e0e3d05a",
  "kind": "def",
  "lexical_name": "minimizeGlobalIdentifierInContext",
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
  "slug": "minimizeglobalidentifierincontext--12b6b37d99f649835b89cef3",
  "source": {
    "blob": "035b1c50590651b65ed7a94b1e0c8e62596f5ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b6b37d99f649835b89cef33a88d79b5c179e0bdb3bc9fa937ec165f381ac37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02f17bfdbfc3f333b883aadf04d2717c30dd56d74fff591acaeed466e0e3d05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def minimizeGlobalIdentifierInContext (currNamespace : Name) (openDecls : List OpenDecl) (id : Name)
    : Name := Id.run do
  let mut minimized := shortenInCurrentNamespace id currNamespace
  for openDecl in openDecls do
    let candidate? := match openDecl with
      | .simple ns except =>
        let candidate := shortenInOpenNamespace id ns
        if ! except.contains candidate then
          some candidate
        else
          none
      | .explicit alias declName =>
        if declName == id then
          some alias
        else
          none
    if let some candidate := candidate? then
      if candidate.getNumParts < minimized.getNumParts then
        minimized := candidate
  return minimized
where
  shortenInCurrentNamespace (id : Name) (currentNamespace : Name) : Name :=
    if currentNamespace matches .anonymous then
      id
    else
      let maybeShortened := shortenInOpenNamespace id currentNamespace
      if maybeShortened != id then
        maybeShortened
      else
        shortenInCurrentNamespace id currentNamespace.getPrefix
  shortenInOpenNamespace (id : Name) (openNamespace : Name) : Name :=
    if openNamespace == id then
      id
    else
      id.replacePrefix openNamespace .anonymous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035b1c50590651b65ed7a94b1e0c8e62596f5ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
