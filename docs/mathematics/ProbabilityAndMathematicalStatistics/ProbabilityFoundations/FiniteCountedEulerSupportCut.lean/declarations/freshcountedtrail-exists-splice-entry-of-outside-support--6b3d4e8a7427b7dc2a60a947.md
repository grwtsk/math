# FreshCountedTrail.exists_splice_entry_of_outside_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cafd63f-2f87-c1fa-dd2b-1f25b2b349a2",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.exists_splice_entry_of_outside_support",
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
  "slug": "freshcountedtrail-exists-splice-entry-of-outside-support--6b3d4e8a7427b7dc2a60a947",
  "source": {
    "blob": "8cb989bc0033ef3f2fcbfb5066b77cef070de133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 134,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3d4e8a7427b7dc2a60a947a8e9a3f7f4113e8da17d2c559d15b2589039a2d5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cafd63f-2f87-c1fa-dd2b-1f25b2b349a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.exists_splice_entry_of_outside_support
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (S : Finset (Fin m → Bool))
    (hused : ∀ e ∈ T.used,
      countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∈ S)
    (hinside : ∃ e : CountedBinaryEdge m c, CountedEdgeMeets m c S e)
    (houtside : ∃ e : CountedBinaryEdge m c,
      countedEdgeSource m c e ∉ S ∨ countedEdgeTarget m c e ∉ S) :
    ∃ v : Fin m → Bool, v ∈ S ∧
      ∃ e : CountedBinaryEdge m c,
        e ∉ T.used ∧ countedEdgeSource m c e = v := by
  obtain ⟨v, hv, e, he, hs⟩ :=
    T.unused_outgoing_at_supported_cut
      hclosed hbalance hconn S hused hinside houtside
  exact ⟨v, hv, e, (Finset.mem_sdiff.mp he).2, hs⟩



/-- An unused edge that already meets the circuit's vertex set
supplies an unused outgoing edge there, using residual balance
to reverse incoming incidence when necessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb989bc0033ef3f2fcbfb5066b77cef070de133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
