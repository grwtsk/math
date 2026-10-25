# processLeadingOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe8007d235f8e294ffd7e3bca78920b4c4187c85b88989e80fe54e1d19f9da48",
  "kind": "def",
  "lexical_name": "processLeadingOptions",
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
  "slug": "processleadingoptions--196f9b3d5f00092c29e3f223",
  "source": {
    "blob": "ddf3809e9bee501d3ffa2e9f471c7ee333e83404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cli/Variant4a37029727651f34dc11a5ad6ae9b84b7113bab97cb8f50a48309c5dbf89aa59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:196f9b3d5f00092c29e3f22307d8d5a9e8467d022a66b647dc9d4b7492b92211",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CLI/Variant4a37029727651f34dc11a5ad6ae9b84b7113bab97cb8f50a48309c5dbf89aa59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe8007d235f8e294ffd7e3bca78920b4c4187c85b88989e80fe54e1d19f9da48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def processLeadingOptions (handle : String → m PUnit) : m PUnit := do
  if let arg :: args ← getArgs then
    let len := arg.chars.length
    if len > 1 && String.Pos.Raw.get arg 0 == '-' then -- `-(.+)`
      setArgs args
      handle arg
      processLeadingOptions handle
    else if len == 0 then -- skip empty leading args
      setArgs args
      processLeadingOptions handle

/-- Process every option and collect the remaining arguments into an `Array`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CLI/Variant4a37029727651f34dc11a5ad6ae9b84b7113bab97cb8f50a48309c5dbf89aa59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cli/Variant4a37029727651f34dc11a5ad6ae9b84b7113bab97cb8f50a48309c5dbf89aa59.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf3809e9bee501d3ffa2e9f471c7ee333e83404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
