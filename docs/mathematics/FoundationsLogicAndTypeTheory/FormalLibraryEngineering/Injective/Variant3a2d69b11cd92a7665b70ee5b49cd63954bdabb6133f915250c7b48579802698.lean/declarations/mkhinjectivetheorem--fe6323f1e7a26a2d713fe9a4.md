# mkHInjectiveTheorem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e250e7195ab44e9d358d8ee0a9e5c1a2a5b9e313a610b1e49298ce9af6f08fe3",
  "kind": "def",
  "lexical_name": "mkHInjectiveTheorem?",
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
  "slug": "mkhinjectivetheorem--fe6323f1e7a26a2d713fe9a4",
  "source": {
    "blob": "987cba36eb760d71ed21511bd294cf9bd188845b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe6323f1e7a26a2d713fe9a4bd26c347a5af76f6d6a310948331f0aee24dd649",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e250e7195ab44e9d358d8ee0a9e5c1a2a5b9e313a610b1e49298ce9af6f08fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkHInjectiveTheorem? (thmName : Name) (ctorVal : ConstructorVal) : MetaM (Option TheoremVal) := do
  let some typeInfo ← mkHInjType? ctorVal | return none
  let some value ← mkHInjectiveTheoremValue? ctorVal typeInfo | return none
  return some { name := thmName, value, levelParams := ctorVal.levelParams, type := typeInfo.thmType }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987cba36eb760d71ed21511bd294cf9bd188845b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
