# ResidualFreshTrail.exists_maximal_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dd845e2-fa85-c607-4248-1d60be7501b9",
  "kind": "theorem",
  "lexical_name": "ResidualFreshTrail.exists_maximal_extension",
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
  "slug": "residualfreshtrail-exists-maximal-extension--44e9e26771fa1bb47851c606",
  "source": {
    "blob": "449ded2bf1599439d1fef91b2276b08fb428f476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 119,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e9e26771fa1bb47851c606eecb20e2b282a13ad809f249895e96ed28a86143",
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

Occurrence: `result:7dd845e2-fa85-c607-4248-1d60be7501b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFreshTrail.exists_maximal_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b) :
    ∃ (z : Fin m → Bool) (Q : ResidualFreshTrail m c U a z),
      Q.Maximal ∧ R.trail.used ⊆ Q.trail.used := by
  classical
  suffices hmain :
      ∀ (n : ℕ) (b : Fin m → Bool)
        (R : ResidualFreshTrail m c U a b),
        (U \ R.trail.used).card = n →
        ∃ (z : Fin m → Bool) (Q : ResidualFreshTrail m c U a z),
          Q.Maximal ∧ R.trail.used ⊆ Q.trail.used by
    exact hmain _ b R rfl
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro b R hn
      rcases R.maximal_or_strict_successor with hmax | hstep
      · exact ⟨b, R, hmax, Finset.Subset.rfl⟩
      · obtain ⟨e, heU, fresh, incident, hlt⟩ := hstep
        let S := R.append e heU fresh incident
        have hs : (U \ S.trail.used).card < n := by
          dsimp [S]
          omega
        obtain ⟨z, Q, hmax, hSQ⟩ := ih _ hs _ S rfl
        refine ⟨z, Q, hmax, ?_⟩
        have hRS : R.trail.used ⊆ S.trail.used := by
          dsimp [S]
          rw [FreshCountedTrail.append_used]
          exact Finset.subset_insert _ _
        exact hRS.trans hSQ



/-- A terminal-maximal residual trail uses every residual outgoing
edge instance at its final vertex. Hence its unused residual
outgoing degree is exactly zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449ded2bf1599439d1fef91b2276b08fb428f476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
