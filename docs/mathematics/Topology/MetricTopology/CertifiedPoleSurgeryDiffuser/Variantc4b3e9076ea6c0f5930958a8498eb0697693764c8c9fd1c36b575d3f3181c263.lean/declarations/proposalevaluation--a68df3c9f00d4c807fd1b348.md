# ProposalEvaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b66568cb0086ae7315dc15ce63ed9595c4a6b0bb173e77806708cddbb03353",
  "kind": "inductive",
  "lexical_name": "ProposalEvaluation",
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
  "slug": "proposalevaluation--a68df3c9f00d4c807fd1b348",
  "source": {
    "blob": "38c5eb0874250f972ecccbde04b814f0f6154fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantc4b3e9076ea6c0f5930958a8498eb0697693764c8c9fd1c36b575d3f3181c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a68df3c9f00d4c807fd1b3483c33b8b14e8a584c85f9f9c1cc572727c56ed4a1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantc4b3e9076ea6c0f5930958a8498eb0697693764c8c9fd1c36b575d3f3181c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b66568cb0086ae7315dc15ce63ed9595c4a6b0bb173e77806708cddbb03353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProposalEvaluation
    (Accepted : Type u)
    (SurgeryCandidate : Type v)
  | submitted
      (request :
        SurgeryAuthoritySubmission Accepted SurgeryCandidate)
  | rejected (stage : ProposalRejectionStage)

/--
The complete governing object.  The component types remain independent so a
model proposal cannot be confused with a metric candidate, a surgery
candidate, or an accepted state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantc4b3e9076ea6c0f5930958a8498eb0697693764c8c9fd1c36b575d3f3181c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantc4b3e9076ea6c0f5930958a8498eb0697693764c8c9fd1c36b575d3f3181c263.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c5eb0874250f972ecccbde04b814f0f6154fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
