# AuditEvidenceClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c211781b3f56d6a4825d408400fd6a3a48a77746f9ebebab5a0b4bc1ee9cad85",
  "kind": "inductive",
  "lexical_name": "AuditEvidenceClass",
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
  "slug": "auditevidenceclass--f3e8d5543089276c8c918eb6",
  "source": {
    "blob": "9904f326ed80a0161a3baab82474fd9dffc98ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3e8d5543089276c8c918eb67e9f58e54fa4069e63aef56be3bb1732633d25ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c211781b3f56d6a4825d408400fd6a3a48a77746f9ebebab5a0b4bc1ee9cad85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AuditEvidenceClass
  | sourceSpan
  | codeSpan
  | testResult
  | buildResult
  | runtimeTrace
  | screenshot
  | interactionRecording
  | accessibilityTree
  | performanceProfile
  | architectureProof
  | formalProof
  | humanObservation
  | externalStandard
  | mutationResult
  | replayReceipt
  deriving DecidableEq, Repr

/-- Immutable evidence payload with an explicit subject and snapshot binding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9904f326ed80a0161a3baab82474fd9dffc98ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
