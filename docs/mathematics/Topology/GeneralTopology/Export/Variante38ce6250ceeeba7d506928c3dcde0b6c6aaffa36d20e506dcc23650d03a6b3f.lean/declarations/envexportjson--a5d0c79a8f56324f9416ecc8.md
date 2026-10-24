# envExportJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c7996bd6ac1d4b1cfebc089fa09d0110a7f21ac5b2fe28ac600170aecbecf7c",
  "kind": "def",
  "lexical_name": "envExportJson",
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
  "slug": "envexportjson--a5d0c79a8f56324f9416ecc8",
  "source": {
    "blob": "16c28f1b9066d275124ace0b42c3db135d4a0f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 719,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5d0c79a8f56324f9416ecc8dc9b3bf838bc64598ab38b81775b69e061919e84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c7996bd6ac1d4b1cfebc089fa09d0110a7f21ac5b2fe28ac600170aecbecf7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def envExportJson (env : Environment) : String :=
  "{\n" ++
  "  \"schema\": \"surface.lean.env_export.v2\",\n" ++
  "  \"source\": {\"entryModule\": \"Surface\", \"trusted\": true},\n" ++
  "  \"theoremConeAuthorityManifest\": {\n" ++
  "    \"currentMajorGates\": " ++ currentMajorGateManifestJson ++ ",\n" ++
  "    \"currentMajorGateCategories\": " ++ categorizedMajorGateManifestJson ++ ",\n" ++
  "    \"mathematicalTheoremFacingWhitelist\": " ++
      jsonStringArray mathematicalTheoremFacingWhitelistNames ++ ",\n" ++
  "    \"forbiddenAuthorityPolicy\": " ++ jsonStringArray [
        "major theorem gates must not rely on Surface.Legacy dependencies",
        "major theorem gates must not rely on generated fixture authority",
        "major theorem gates must not be axiom/external declarations",
        "readiness dashboards and string labels are metadata, not theorem authority",
        "theorem-facing prismatic sheaf declarations must use actual dependent section data, not descriptor section records"
      ] ++ "\n" ++
  "  },\n" ++
  "  \"declarations\": " ++ surfaceDeclarationsJson env ++ "\n" ++
  "}\n"

end AST

end Surface

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c28f1b9066d275124ace0b42c3db135d4a0f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
