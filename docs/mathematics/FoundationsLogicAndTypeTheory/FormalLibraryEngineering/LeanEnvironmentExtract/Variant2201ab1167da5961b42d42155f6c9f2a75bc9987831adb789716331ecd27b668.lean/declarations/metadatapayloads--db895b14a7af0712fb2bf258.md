# metadataPayloads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ae5f46878d4831501f0a375308c9af4ef9483ad6320724464c2f6c9fc066dff",
  "kind": "def",
  "lexical_name": "metadataPayloads",
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
  "slug": "metadatapayloads--db895b14a7af0712fb2bf258",
  "source": {
    "blob": "70b80d5e44d2c3010f9c791a3f7ba813a10dfebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db895b14a7af0712fb2bf258725c835b50cdc63a77598c67d1ff9bb8009cfdfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ae5f46878d4831501f0a375308c9af4ef9483ad6320724464c2f6c9fc066dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def metadataPayloads : Expr → Array String
  | .app fn arg => metadataPayloads fn ++ metadataPayloads arg
  | .lam _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .forallE _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .letE _ type value body _ => metadataPayloads type ++ metadataPayloads value ++ metadataPayloads body
  | .mdata metadata body => #[reprStr metadata] ++ metadataPayloads body
  | .proj _ _ object => metadataPayloads object
  | _ => #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b80d5e44d2c3010f9c791a3f7ba813a10dfebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
