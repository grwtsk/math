# envExportJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc0b02f24a802d97921cff1679d48671441f684f5ea0064705da18d871d5de5",
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
  "slug": "envexportjson--e86b7823ed94e4979051713a",
  "source": {
    "blob": "1187dd774103e20c9487da1b53e679c6ebc5ac94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 728,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e86b7823ed94e4979051713a23f952796e410b68041a4abf00a67cb0c1241a9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc0b02f24a802d97921cff1679d48671441f684f5ea0064705da18d871d5de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–751.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1187dd774103e20c9487da1b53e679c6ebc5ac94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
