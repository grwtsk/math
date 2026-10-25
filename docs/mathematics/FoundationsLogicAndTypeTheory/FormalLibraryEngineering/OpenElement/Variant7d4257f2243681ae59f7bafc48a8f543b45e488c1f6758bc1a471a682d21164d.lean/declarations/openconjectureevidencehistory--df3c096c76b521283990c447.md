# OpenConjectureEvidenceHistory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60383058db854da98391b8dc412478b8d7822407c58940b0ef5c43cd51044bf3",
  "kind": "inductive",
  "lexical_name": "OpenConjectureEvidenceHistory",
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
  "slug": "openconjectureevidencehistory--df3c096c76b521283990c447",
  "source": {
    "blob": "e1df9133d2d69d180116f1c5e58cd31aab2d1307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenElement/Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df3c096c76b521283990c447bdcf6012a2c4659271edbaedc7c31affca68e1fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenElement/Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60383058db854da98391b8dc412478b8d7822407c58940b0ef5c43cd51044bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OpenConjectureEvidenceHistory
    {statement : Prop}
    {seed : OpenConjectureElement statement}
    {environment : FrozenKernelEnvironment}
    (envelope : ExtractedOpenConjectureEnvelope seed environment) :
    ObjectAddress → Type
  | genesis (eventChainRoot : ObjectAddress) :
      OpenConjectureEvidenceHistory envelope eventChainRoot
  | append
      {previousHead : ObjectAddress}
      (previous :
        OpenConjectureEvidenceHistory envelope previousHead)
      (evidence : OpenConjectureEvidence envelope)
      (predecessor_bound :
        evidence.predecessorEvent = some previousHead) :
      OpenConjectureEvidenceHistory envelope evidence.eventAddress

/--
Proof creates a distinct theorem element linked to the immutable seed.  It
does not rewrite or retrospectively call the seed “unproved.”
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenElement/Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenElement/Variant7d4257f2243681ae59f7bafc48a8f543b45e488c1f6758bc1a471a682d21164d.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1df9133d2d69d180116f1c5e58cd31aab2d1307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
