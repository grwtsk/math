# RevisionLedger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e2858dffa0adb6389b72121bdb360f9d92d02ef58571f46df674e0e71972000",
  "kind": "structure",
  "lexical_name": "RevisionLedger",
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
  "slug": "revisionledger--eaf91770ee614ad3c87ba2d7",
  "source": {
    "blob": "1f90223e0fed9002fe251d78f9c73f84044f2f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf91770ee614ad3c87ba2d76fcfed6348e8dc07417617fd88e5eb466f19c994",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence22718498a8106883d8613c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e2858dffa0adb6389b72121bdb360f9d92d02ef58571f46df674e0e71972000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RevisionLedger {Artifact : Type u} {Revision : Type v} {Claim : Type w}
    {Effect : Type x} {Grant : Type y} {Surface : Type z}
    (policy : ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface) where
  snapshot : SourceSnapshot Artifact Revision
  pending : Finset Claim
  verified : Finset Claim
  issued : Finset Claim
  archive : List (ArchivedClaim policy.statement)
  receipts : List (EffectReceipt (SourceSnapshot Artifact Revision) Effect Grant Surface)
  corrections : List (CorrectionRecord Artifact Revision Claim)

section Correction

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- The directly changed claims are computed from their complete declared reads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence22718498a8106883d8613c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f90223e0fed9002fe251d78f9c73f84044f2f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
