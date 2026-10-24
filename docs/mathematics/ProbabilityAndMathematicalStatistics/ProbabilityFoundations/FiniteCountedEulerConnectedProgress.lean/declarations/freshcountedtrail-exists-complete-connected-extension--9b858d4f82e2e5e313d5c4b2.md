# FreshCountedTrail.exists_complete_connected_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da42d146-c0ad-d796-be71-d8ad6d0ead9a",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.exists_complete_connected_extension",
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
  "slug": "freshcountedtrail-exists-complete-connected-extension--9b858d4f82e2e5e313d5c4b2",
  "source": {
    "blob": "63225b5daf030a150a29c5f427753155f9274d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 65,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b858d4f82e2e5e313d5c4b2b3279d1cb6c22f8e4e9e98c31306ef1ea0474448",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da42d146-c0ad-d796-be71-d8ad6d0ead9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.exists_complete_connected_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (hnonempty : T.used.Nonempty) :
    ∃ R : FreshCountedTrail m c a b,
      R.used = Finset.univ ∧ T.used ⊆ R.used := by
  classical
  suffices hmain :
      ∀ (n : ℕ) (T : FreshCountedTrail m c a b),
        (Finset.univ \ T.used).card = n →
        T.used.Nonempty →
        ∃ R : FreshCountedTrail m c a b,
          R.used = Finset.univ ∧ T.used ⊆ R.used by
    exact hmain _ T rfl hnonempty
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro T hn hne
      rcases T.complete_or_strict_connected_progress
          hclosed hbalance hconn hne with hdone | ⟨S, hTS, hlt⟩
      · exact ⟨T, hdone, Finset.Subset.rfl⟩
      · have hS : S.used.Nonempty := by
          obtain ⟨e, he⟩ := hne
          exact ⟨e, hTS he⟩
        obtain ⟨R, hR, hSR⟩ := ih _ (by omega) S rfl hS
        exact ⟨R, hR, hTS.trans hSR⟩



/-- A balanced, weakly edge-support-connected counted graph with
at least one individual edge instance admits a complete closed
fresh trail. This begins from the actual one-edge trail, then
uses residual maximality and finite cycle splicing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63225b5daf030a150a29c5f427753155f9274d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
