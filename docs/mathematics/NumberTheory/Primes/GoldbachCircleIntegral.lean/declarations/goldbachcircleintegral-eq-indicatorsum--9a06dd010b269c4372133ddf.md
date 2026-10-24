# goldbachCircleIntegral_eq_indicatorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5a303f1-43e9-4501-9e91-a71e50f756b2",
  "kind": "theorem",
  "lexical_name": "goldbachCircleIntegral_eq_indicatorSum",
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
  "slug": "goldbachcircleintegral-eq-indicatorsum--9a06dd010b269c4372133ddf",
  "source": {
    "blob": "23767c93a5de35658937b70b3deeb8538ec759b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a06dd010b269c4372133ddfb1263b71e6723c095f962f816ac577e8e034644d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a303f1-43e9-4501-9e91-a71e50f756b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCircleIntegral_eq_indicatorSum (N : ℕ) :
    (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
      ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
        (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
          (if p + q = N then 1 else 0) := by
  calc
    (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
        ∫ x : ℝ in 0..1, goldbachFrequencySum N x := by
      apply intervalIntegral.integral_congr
      intro x hx
      exact goldbachCircleIntegrand_eq_frequencySum N x
    _ = ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
          ∫ x : ℝ in 0..1, goldbachFrequencyTerm N p q x := by
      unfold goldbachFrequencySum
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro p hp
        rw [intervalIntegral.integral_finsetSum]
        intro q hq
        exact (continuous_goldbachFrequencyTerm N p q).intervalIntegrable 0 1
      · intro p hp
        have hcont : Continuous (fun x : ℝ =>
            ∑ q ∈ Finset.range (N + 1), goldbachFrequencyTerm N p q x) := by
          fun_prop
        exact hcont.intervalIntegrable 0 1
    _ = ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
          (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
            (if p + q = N then 1 else 0) := by
      apply Finset.sum_congr rfl
      intro p hp
      apply Finset.sum_congr rfl
      intro q hq
      exact integral_goldbachFrequencyTerm N p q

/-- The finite indicator sum is the existing real Goldbach logarithmic mass,
embedded in the complex numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23767c93a5de35658937b70b3deeb8538ec759b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
