# replay_correctMany_histories

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23a3aceb-2ab5-b247-cfa5-2ff4b3a92464",
  "kind": "theorem",
  "lexical_name": "replay_correctMany_histories",
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
  "slug": "replay-correctmany-histories--624486ace2152c7326ce4c6a",
  "source": {
    "blob": "b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 233,
    "path": "GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624486ace2152c7326ce4c6a73e128dd45d766870dc82c04934b376b4d822365",
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

Occurrence: `result:23a3aceb-2ab5-b247-cfa5-2ff4b3a92464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_correctMany_histories (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).base.archive = ledger.base.archive ∧
      (ledger.correctMany schema policy requests).replayArchive = ledger.replayArchive ∧
      (ledger.correctMany schema policy requests).base.receipts = ledger.base.receipts ∧
      (ledger.correctMany schema policy requests).base.issued = ledger.base.issued := by
  rw [replay_correctMany_base]
  exact ⟨correctMany_archive_preserved schema policy ledger.base requests,
    replay_correctMany_replay_archive_preserved schema policy ledger requests,
    correctMany_receipts_preserved schema policy ledger.base requests,
    correctMany_issued_preserved schema policy ledger.base requests⟩

/-- Each request appends one exact event to the original immutable history. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
