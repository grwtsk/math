# revision_verified_to_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f12c69e3-98ae-471e-0439-6297f1bd0cec",
  "kind": "theorem",
  "lexical_name": "revision_verified_to_terminal",
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
  "slug": "revision-verified-to-terminal--409477bd37a4f9b59ba47895",
  "source": {
    "blob": "4f21c84fcb80892a5ba4a1da7df0e89e78a73c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/Logic/Certificates/DependencyRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:409477bd37a4f9b59ba47895cde66986fc8ffc4e8f36259d93f015419d1ed425",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f12c69e3-98ae-471e-0439-6297f1bd0cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revision_verified_to_terminal (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (safe : RevisionSafe schema policy ledger)
    (claim : Claim) (verified : claim ∈ ledger.verified) :
    TerminalCap ledger.snapshot (policy.statement ledger.snapshot claim) := by
  rcases safe.verified_evidence claim verified with ⟨record, _, claimEq, _, accepted⟩
  have target := record.certificate.current_target accepted.1
  exact ⟨by simpa only [claimEq] using target⟩

/-- New effects must be valid for the current snapshot; history alone is insufficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Certificates/DependencyRevision.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f21c84fcb80892a5ba4a1da7df0e89e78a73c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
