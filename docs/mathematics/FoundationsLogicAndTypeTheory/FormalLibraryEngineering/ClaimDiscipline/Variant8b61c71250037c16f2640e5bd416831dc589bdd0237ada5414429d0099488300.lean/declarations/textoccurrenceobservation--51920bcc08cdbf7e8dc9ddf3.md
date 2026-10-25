# TextOccurrenceObservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f06a9cbae64ad23eed7b44fbd8a1e5e0bd4cfe0c2777e173ecd16c289ccd0f5",
  "kind": "structure",
  "lexical_name": "TextOccurrenceObservation",
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
  "slug": "textoccurrenceobservation--51920bcc08cdbf7e8dc9ddf3",
  "source": {
    "blob": "190a90fd09ba488d2630007d46b30d8d14373584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51920bcc08cdbf7e8dc9ddf32a31978b58f92362bd8b1cc277e8d8e49b10bfef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f06a9cbae64ad23eed7b44fbd8a1e5e0bd4cfe0c2777e173ecd16c289ccd0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TextOccurrenceObservation where
  id : RecordId
  source : RecordId
  span : String
  token : String
  parserProfile : String
  occurrenceEstablished : Prop
  termDeclarationStatus : IndependentStatus
  identityStatus : IndependentStatus
  denotationStatus : IndependentStatus
  scopeStatus : IndependentStatus
  authorityStatus : IndependentStatus
  admission : CandidateAdmissionStatus

namespace TextOccurrenceObservation

/-- Occurrence does not entail term declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `190a90fd09ba488d2630007d46b30d8d14373584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
