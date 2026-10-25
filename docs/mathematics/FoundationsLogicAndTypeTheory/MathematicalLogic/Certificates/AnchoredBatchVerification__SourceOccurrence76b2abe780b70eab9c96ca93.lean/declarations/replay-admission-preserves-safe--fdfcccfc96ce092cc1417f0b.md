# replay_admission_preserves_safe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21443c62-bcfe-6c21-6cf0-70d10ee8b60d",
  "kind": "theorem",
  "lexical_name": "replay_admission_preserves_safe",
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
  "slug": "replay-admission-preserves-safe--fdfcccfc96ce092cc1417f0b",
  "source": {
    "blob": "09de70ad4e6666cc1477deed1f96c3d1af4503c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 145,
    "path": "GRWTSK/Logic/Certificates/AnchoredBatchVerification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdfcccfc96ce092cc1417f0b7235614b1218591ed30f32356093afb61a664adc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21443c62-bcfe-6c21-6cf0-70d10ee8b60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_admission_preserves_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger)
    (safe : ReplaySafe schema policy ledger) :
    ReplaySafe schema policy (ledger.admit schema policy admission) := by
  constructor
  · intro claim member
    exact safe.pending_issued (Finset.mem_sdiff.mp member).1
  · intro claim member
    rcases Finset.mem_union.mp member with old | added
    · exact safe.verified_issued old
    · exact safe.pending_issued (admission.pending_only added)
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · by_cases admitted : claim ∈ admission.claims
      · exact Finset.mem_union_right _ (Finset.mem_union_right _ admitted)
      · exact Finset.mem_union_left _ (Finset.mem_sdiff.mpr ⟨pending, admitted⟩)
    · exact Finset.mem_union_right _ (Finset.mem_union_left _ verified)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have remaining := Finset.mem_sdiff.mp pending
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.disjoint_left.mp safe.statuses_disjoint remaining.1 old
    · exact remaining.2 added
  · intro claim verified prerequisite dependency
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.mem_union_left _ (safe.verified_dependencies claim old prerequisite dependency)
    · exact admission.prerequisites claim added prerequisite dependency
  · intro claim verified
    rcases Finset.mem_union.mp verified with old | added
    · rcases safe.verified_evidence claim old with legacy | replay
      · exact Or.inl legacy
      · rcases replay with ⟨record, archived, claimEq, readsEq, accepted⟩
        exact Or.inr ⟨record, List.mem_append_left _ archived, claimEq, readsEq, accepted⟩
    · rcases admission.coverage claim added with ⟨record, supplied, claimEq⟩
      have checked := admission.current_evidence record supplied
      refine Or.inr ⟨record, List.mem_append_right _ supplied, claimEq, ?_, ?_⟩
      · simpa only [claimEq] using checked.1
      · exact supplied_replay_accepted schema policy ledger admission record supplied
  · exact safe.receipts_historical
  · exact safe.corrections_exact

/-- Every verified claim has its exact target at the current source snapshot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Certificates/AnchoredBatchVerification.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09de70ad4e6666cc1477deed1f96c3d1af4503c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
