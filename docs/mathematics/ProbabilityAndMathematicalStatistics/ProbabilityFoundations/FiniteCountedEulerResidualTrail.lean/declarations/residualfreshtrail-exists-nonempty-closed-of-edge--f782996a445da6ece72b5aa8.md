# ResidualFreshTrail.exists_nonempty_closed_of_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a8332a-3e0c-e5f6-1407-eb55e34e9137",
  "kind": "theorem",
  "lexical_name": "ResidualFreshTrail.exists_nonempty_closed_of_edge",
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
  "slug": "residualfreshtrail-exists-nonempty-closed-of-edge--f782996a445da6ece72b5aa8",
  "source": {
    "blob": "449ded2bf1599439d1fef91b2276b08fb428f476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 340,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f782996a445da6ece72b5aa87c363369e2cbd715121ac0b161c678c8f77e9e0c",
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

Occurrence: `result:85a8332a-3e0c-e5f6-1407-eb55e34e9137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFreshTrail.exists_nonempty_closed_of_edge
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    (U : Finset (CountedBinaryEdge m c))
    (hbalance : ResidualDegreeBalanced m c U)
    (e : CountedBinaryEdge m c) (he : e ∈ U) :
    ∃ R : ResidualFreshTrail m c U
        (countedEdgeSource m c e) (countedEdgeSource m c e),
      e ∈ R.trail.used ∧ 0 < R.trail.used.card := by
  let T := ResidualFreshTrail.single m c U e he
  obtain ⟨z, Q, hmax, hTQ⟩ := T.exists_maximal_extension
  have hclosed := Q.closed_of_balanced_maximal hbalance hmax
  subst z
  refine ⟨Q, ?_, ?_⟩
  · apply hTQ
    rw [ResidualFreshTrail.single_used]
    exact Finset.mem_singleton_self e
  · exact Finset.card_pos.mpr
      ⟨e, hTQ (by
        rw [ResidualFreshTrail.single_used]
        exact Finset.mem_singleton_self e)⟩



/-- A residual trail constructed inside U is automatically edge-disjoint
from a preexisting circuit whose used instances are disjoint from U.
This supplies the exact freshness premise for cycle splicing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449ded2bf1599439d1fef91b2276b08fb428f476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
