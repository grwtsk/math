# actual_sixth_correlation_moment_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0590878e-43dd-eaf7-cb0b-95ebf53c774f",
  "kind": "theorem",
  "lexical_name": "actual_sixth_correlation_moment_positive",
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
  "slug": "actual-sixth-correlation-moment-positive--8fa00339f0714776cc92920a",
  "source": {
    "blob": "f17be0f56b224a736bca0adae05cdccad59641fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceSign/Variant5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa00339f0714776cc92920ab211fc84e5fbb0b09c94227eb955e71f502e4669",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceSign/Variant5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0590878e-43dd-eaf7-cb0b-95ebf53c774f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_correlation_moment_positive {A : ℝ} (hA : 1 ≤ A) :
    0 < ∫ t, Real.exp (t / 6) * C A t := by
  have h := exact_full_correlation_laplace_square hA (1 / 6)
  have hn := actual_sixth_laplace_negative hA
  have hp : 0 < (testMoment A (1 / 6)) ^ 2 := sq_pos_of_neg hn
  rw [← h] at hp
  simpa only [one_div_mul_eq_div] using hp

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSourceLaplaceSign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceSign/Variant5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceSign/Variant5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17be0f56b224a736bca0adae05cdccad59641fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
