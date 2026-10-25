# replay_affected_verified_reopened

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adb2be2a-7dca-064f-bb5b-1b0cf7391e20",
  "kind": "theorem",
  "lexical_name": "replay_affected_verified_reopened",
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
  "slug": "replay-affected-verified-reopened--0c11be6c8b16abf06b01ef5e",
  "source": {
    "blob": "b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c11be6c8b16abf06b01ef5ef28eb443b3646acd8ef3f4933be9785f54c0e903",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb2be2a-7dca-064f-bb5b-1b0cf7391e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_affected_verified_reopened (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (claim : Claim) (verified : claim ∈ ledger.base.verified)
    (affected : claim ∈ correctionAffected schema ledger.base.snapshot current withdrawn) :
    claim ∈ (ledger.correct schema policy current withdrawn).base.pending ∧
      claim ∉ (ledger.correct schema policy current withdrawn).base.verified :=
  affected_verified_reopened schema policy ledger.base current withdrawn claim verified affected

/-- Actual surviving evidence proves its exact corrected-source target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
