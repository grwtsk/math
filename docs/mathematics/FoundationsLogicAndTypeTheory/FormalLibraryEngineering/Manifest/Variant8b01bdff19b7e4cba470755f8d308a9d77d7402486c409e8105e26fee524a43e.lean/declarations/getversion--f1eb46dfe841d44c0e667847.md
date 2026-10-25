# getVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06d79099271019538a1128954c46c141f9cc1b907d0c4a9666be6833066a2f27",
  "kind": "def",
  "lexical_name": "getVersion",
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
  "slug": "getversion--f1eb46dfe841d44c0e667847",
  "source": {
    "blob": "5649993de574097ef28da26f9ae164c92d6afd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1eb46dfe841d44c0e6678478245c5d6b5b54f0c8512159ae24b215ac7f97bf6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06d79099271019538a1128954c46c141f9cc1b907d0c4a9666be6833066a2f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getVersion (obj : JsonObject) : Except String SemVerCore := do
  let ver : Json ← obj.get "version" <|> obj.get "schemaVersion"
  let ver : SemVerCore ←
    match ver with
    | (n : Nat) => pure {minor := n}
    | (s : String) => StdVer.parse s
    | ver => throw s!"invalid version '{ver}'; \
      you may need to update your 'lean-toolchain'"
  if ver.major > 1 then
    throw s!"schema version '{ver}' is of a higher major version than this \
      Lake's '{Manifest.version}'; you may need to update your 'lean-toolchain'"
  else if ver < {minor := 5} then
    throw s!"incompatible manifest version '{ver}'"
  else
    return ver

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant8b01bdff19b7e4cba470755f8d308a9d77d7402486c409e8105e26fee524a43e.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5649993de574097ef28da26f9ae164c92d6afd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
