# updateConstantVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de43277d9ee7578d10afe42c4a089c90a90c3bb3b50679c021f4dbd645b42418",
  "kind": "def",
  "lexical_name": "updateConstantVal",
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
  "slug": "updateconstantval--bb9189ed50a38bc4d3d81756",
  "source": {
    "blob": "5d1ca9b45e8f9ed43489e237ae2bdaeb5c33e2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb9189ed50a38bc4d3d817569a9ee9cdc0884c38219f2bf3fdeb9fa65880baa3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de43277d9ee7578d10afe42c4a089c90a90c3bb3b50679c021f4dbd645b42418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateConstantVal : ConstantInfo → ConstantVal → ConstantInfo
  | defnInfo   info, v => defnInfo   {info with toConstantVal := v}
  | axiomInfo  info, v => axiomInfo  {info with toConstantVal := v}
  | thmInfo    info, v => thmInfo    {info with toConstantVal := v}
  | opaqueInfo info, v => opaqueInfo {info with toConstantVal := v}
  | quotInfo   info, v => quotInfo   {info with toConstantVal := v}
  | inductInfo info, v => inductInfo {info with toConstantVal := v}
  | ctorInfo   info, v => ctorInfo   {info with toConstantVal := v}
  | recInfo    info, v => recInfo    {info with toConstantVal := v}

/-- Update the name of a `ConstantInfo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1ca9b45e8f9ed43489e237ae2bdaeb5c33e2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
