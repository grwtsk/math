# rank_eq_wfRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4e6171f-e14d-9d8e-c59c-dea8ef859e3b",
  "kind": "theorem",
  "lexical_name": "rank_eq_wfRank",
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
  "slug": "rank-eq-wfrank--127ff5aa951b142db2a5c7ec",
  "source": {
    "blob": "682c95a6f443d7e949b76252a794985806cc764c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127ff5aa951b142db2a5c7ec274e82d6f01136e8bc6dd565ca73d2b6324a22e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4e6171f-e14d-9d8e-c59c-dea8ef859e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq_wfRank : lift.{u + 1, u} (rank x) = WellFounded.rank (α := ZFSet) (· ∈ ·) x := by
  induction x using inductionOn with | _ x ih
  rw [WellFounded.rank_eq]
  simp_rw [← fun y : { y // y ∈ x } => ih y y.2]
  apply (le_of_forall_lt _).antisymm (Ordinal.iSup_le _) <;> intro h
  · rw [lt_lift_iff]
    rintro ⟨o, h, rfl⟩
    simpa [Ordinal.lt_iSup_iff] using lt_rank_iff.1 h
  · simpa using rank_lt_of_mem h.2

end ZFSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c95a6f443d7e949b76252a794985806cc764c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
