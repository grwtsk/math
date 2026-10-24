# guard_preserves_safe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07c85c74-5482-bf52-2d25-a2152f036fa7",
  "kind": "theorem",
  "lexical_name": "guard_preserves_safe",
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
  "slug": "guard-preserves-safe--5cfc822177d59ef0d1df2dd7",
  "source": {
    "blob": "1d3f4f339e079b69883fca2ed763e26109b3bfd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 180,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfc822177d59ef0d1df2dd7f1b3f105eb3359370000142d3e6fca1a21399a31",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c85c74-5482-bf52-2d25-a2152f036fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem guard_preserves_safe (P : Policy) (source : Source) (budget : ℕ)
    {s : State} {p : Proposal} (hs : Safe P source budget s) (hg : Guard P s p) :
    Safe P source budget (update s p) := by
  constructor
  · exact hs.source_eq
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact Finset.mem_union_left _ (hs.pending_issued (Finset.mem_sdiff.mp ho).1)
    · exact Finset.mem_union_right _ ho
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact Finset.mem_union_left _ (hs.verified_issued ho)
    · exact Finset.mem_union_left _ (hs.pending_issued (hg.discharged_pending ho))
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · rcases Finset.mem_union.mp (hs.issued_covered ho) with hp | hv
      · exact Finset.mem_union.mpr (update_retains_pending s p hp)
      · exact Finset.mem_union_right _ (Finset.mem_union_left _ hv)
    · exact Finset.mem_union_left _ (Finset.mem_union_right _ ho)
  · intro o ho
    rcases Finset.mem_union.mp ho with ho | ho
    · exact hs.verified_sound o ho
    · simpa only [hs.source_eq] using hg.mathematical_evidence o ho
  · intro r hr
    rcases List.mem_append.mp hr with hr | hr
    · exact hs.receipts_valid r hr
    · refine ⟨?_, ?_, (hg.operational_evidence r hr).1, ?_, ?_⟩
      · exact (hg.effects_source r hr).trans (hg.source_eq.trans hs.source_eq)
      · simpa only [hs.source_eq] using hg.effects_typed r hr
      · simpa only [hs.source_eq] using (hg.operational_evidence r hr).2
      · simpa only [hs.source_eq] using hg.rights_evidence r hr
  · dsimp [update]
    have hcost := hg.cost_available
    have hbalance := hs.budget_balance
    omega
  · dsimp [update]
    rw [hs.checkpoint_eq_lift]

/-- Every admitted effect has separately checked operational and rights
evidence. A mathematical proof is not an authentication mechanism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3f4f339e079b69883fca2ed763e26109b3bfd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
