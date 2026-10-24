# unique_batch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c463e7a9-b04c-02a9-8e52-c0642c4c1afb",
  "kind": "theorem",
  "lexical_name": "unique_batch",
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
  "slug": "unique-batch--58bd3a4bd74c87e3846df069",
  "source": {
    "blob": "b39d6cf29e119cfff1a261c954d91201d85c2137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58bd3a4bd74c87e3846df06966d7b4624021cb2607a044ecae7f9c6cdc8e0ab1",
  "verification": {
    "reference": "docs/verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c463e7a9-b04c-02a9-8e52-c0642c4c1afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_batch (d : ℕ → ℕ) (hd : ∀ n, 0 < d n) (j : ℕ) :
    ∃! n, batchClock d n ≤ j ∧ j < batchClock d (n + 1) := by
  have hex : ∃ n, j < batchClock d n :=
    ⟨j + 1, lt_of_lt_of_le (Nat.lt_succ_self j) (index_le_batchClock d hd (j + 1))⟩
  let k := Nat.find hex
  have hk : j < batchClock d k := Nat.find_spec hex
  have hk0 : k ≠ 0 := by
    intro he
    simp [he, batchClock] at hk
  obtain ⟨n, hn⟩ := Nat.exists_eq_succ_of_ne_zero hk0
  have hnle : batchClock d n ≤ j := by
    have h := Nat.find_min hex (show n < Nat.find hex by change n < k; omega)
    omega
  have hnlt : j < batchClock d (n + 1) := by simpa [hn] using hk
  refine ⟨n, ⟨hnle, hnlt⟩, ?_⟩
  intro m hm
  have hmono := (batchClock_strictMono d hd).monotone
  rcases lt_trichotomy m n with h | h | h
  · have := hmono (show m + 1 ≤ n by omega)
    omega
  · exact h
  · have := hmono (show n + 1 ≤ m by omega)
    omega

/-- Each member of a nonempty finite epoch reappears at arbitrarily late indices
and each such index belongs to a unique stage. This is scheduling, not signoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39d6cf29e119cfff1a261c954d91201d85c2137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
