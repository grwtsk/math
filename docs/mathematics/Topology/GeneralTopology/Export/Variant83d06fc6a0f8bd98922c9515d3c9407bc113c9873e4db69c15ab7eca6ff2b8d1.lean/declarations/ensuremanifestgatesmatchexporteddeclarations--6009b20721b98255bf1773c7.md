# ensureManifestGatesMatchExportedDeclarations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a260893a9b08e6374ef623201590d93ed3e39065dba21503b7924ebab4f9c899",
  "kind": "def",
  "lexical_name": "ensureManifestGatesMatchExportedDeclarations",
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
  "slug": "ensuremanifestgatesmatchexporteddeclarations--6009b20721b98255bf1773c7",
  "source": {
    "blob": "1187dd774103e20c9487da1b53e679c6ebc5ac94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 700,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6009b20721b98255bf1773c72b98e0ff8ab60798904d94bd726390a9cd0390e0",
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

Occurrence: `declaration:a260893a9b08e6374ef623201590d93ed3e39065dba21503b7924ebab4f9c899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureManifestGatesMatchExportedDeclarations (env : Environment) : IO Unit := do
  let failures := manifestGateSelfCheckFailures env
  unless failures.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-cone manifest contains unmatched gate patterns: " ++
        String.intercalate ", " failures
  let authorityLeaks := theoremObligationAuthorityLeakFailures
  unless authorityLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-obligation manifest contains certificate/dashboard accessors: " ++
        String.intercalate ", " authorityLeaks
  let descriptorLeaks := theoremFacingDescriptorSectionFailures env
  unless descriptorLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-facing declarations mention descriptor-level prismatic sections: " ++
        String.intercalate ", " descriptorLeaks
  let implementationPatternLeaks :=
    mathematicalTheoremFacingImplementationPatternFailures env
  unless implementationPatternLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export mathematical theorem-facing cone contains implementation-only names: " ++
        String.intercalate ", " implementationPatternLeaks
  let whitelistFailures := mathematicalTheoremFacingWhitelistFailures env
  unless whitelistFailures.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export mathematical theorem-facing whitelist contains invalid entries: " ++
        String.intercalate ", " whitelistFailures

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1187dd774103e20c9487da1b53e679c6ebc5ac94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
