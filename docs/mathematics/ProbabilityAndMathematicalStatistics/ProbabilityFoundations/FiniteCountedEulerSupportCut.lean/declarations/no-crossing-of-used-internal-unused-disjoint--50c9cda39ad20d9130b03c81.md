# no_crossing_of_used_internal_unused_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeae3994-c93a-663c-ed68-ea1c163caf79",
  "kind": "theorem",
  "lexical_name": "no_crossing_of_used_internal_unused_disjoint",
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
  "slug": "no-crossing-of-used-internal-unused-disjoint--50c9cda39ad20d9130b03c81",
  "source": {
    "blob": "8cb989bc0033ef3f2fcbfb5066b77cef070de133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 38,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c9cda39ad20d9130b03c81edad098bd969b02747bfad0c0f9624c49b01d851",
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

Occurrence: `result:eeae3994-c93a-663c-ed68-ea1c163caf79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_crossing_of_used_internal_unused_disjoint
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (S : Finset (Fin m → Bool))
    (hused : ∀ e ∈ used,
      countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∈ S)
    (hunused : ∀ e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)), ¬ CountedEdgeMeets m c S e) :
    ∀ e : CountedBinaryEdge m c, ¬ CountedEdgeCrosses m c S e := by
  classical
  intro e hc
  by_cases he : e ∈ used
  · obtain ⟨hs, ht⟩ := hused e he
    rcases hc with ⟨_, hnot⟩ | ⟨hnot, _⟩
    · exact hnot ht
    · exact hnot hs
  · have hu : e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)) :=
      Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, he⟩
    have havoid := hunused e hu
    rcases hc with ⟨hs, _⟩ | ⟨_, ht⟩
    · exact havoid (Or.inl hs)
    · exact havoid (Or.inr ht)

/-- A proof-relevant cut formulation of weak connectivity on the
edge-supported graph. The premises insist on supported vertices on
both sides; isolated vertices do not affect this property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb989bc0033ef3f2fcbfb5066b77cef070de133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
