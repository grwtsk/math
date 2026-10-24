# ResidualFreshTrail.in_degree_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40d813ce-430c-23c4-2d9b-235058a3b0b0",
  "kind": "theorem",
  "lexical_name": "ResidualFreshTrail.in_degree_partition",
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
  "slug": "residualfreshtrail-in-degree-partition--096853d13f7f023e542763b5",
  "source": {
    "blob": "449ded2bf1599439d1fef91b2276b08fb428f476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 239,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096853d13f7f023e542763b57b1c963a90b1bf015119788aca605e19961a84d2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d813ce-430c-23c4-2d9b-235058a3b0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFreshTrail.in_degree_partition
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (v : Fin m → Bool) :
    countedUsedInDegree m c U v =
      countedUsedInDegree m c R.trail.used v +
        countedUsedInDegree m c (U \ R.trail.used) v := by
  classical
  unfold countedUsedInDegree
  have hdisj :
      Disjoint (R.trail.used.filter
        (fun e => countedEdgeTarget m c e = v))
        ((U \ R.trail.used).filter
          (fun e => countedEdgeTarget m c e = v)) := by
    apply Finset.disjoint_left.mpr
    intro e he1 he2
    exact (Finset.mem_sdiff.mp (Finset.mem_filter.mp he2).1).2
      (Finset.mem_filter.mp he1).1
  have hunion :
      U.filter (fun e => countedEdgeTarget m c e = v) =
        (R.trail.used.filter
          (fun e => countedEdgeTarget m c e = v)) ∪
        ((U \ R.trail.used).filter
          (fun e => countedEdgeTarget m c e = v)) := by
    ext e
    simp only [Finset.mem_filter, Finset.mem_union, Finset.mem_sdiff]
    constructor
    · intro ⟨heU, hv⟩
      by_cases hu : e ∈ R.trail.used
      · exact Or.inl ⟨hu, hv⟩
      · exact Or.inr ⟨⟨heU, hu⟩, hv⟩
    · intro h
      rcases h with ⟨hu, hv⟩ | ⟨⟨heU, _⟩, hv⟩
      · exact ⟨R.supported hu, hv⟩
      · exact ⟨heU, hv⟩
  rw [hunion, Finset.card_union_of_disjoint hdisj]



/-- A terminal-maximal residual trail in a degree-balanced residual
multigraph returns to its starting vertex. If its endpoints differed,
the unused incoming degree at the finish would have to be negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449ded2bf1599439d1fef91b2276b08fb428f476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
