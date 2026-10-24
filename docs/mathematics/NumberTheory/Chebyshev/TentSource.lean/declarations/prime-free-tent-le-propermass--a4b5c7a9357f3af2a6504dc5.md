# prime_free_tent_le_properMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:265200d1-8552-5d11-ba81-29cf018f1aa4",
  "kind": "theorem",
  "lexical_name": "prime_free_tent_le_properMass",
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
  "slug": "prime-free-tent-le-propermass--a4b5c7a9357f3af2a6504dc5",
  "source": {
    "blob": "79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b5c7a9357f3af2a6504dc5eb5f6a63ba9efbe5818166be72463c6cfc2a5c64",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:265200d1-8552-5d11-ba81-29cf018f1aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_free_tent_le_properMass (n : ℕ) (hzero : squareCount n = 0) :
    squareTentMangoldt n ≤ properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) := by
  classical
  unfold squareTentMangoldt properPrimePowerMass
  rw [Finset.sum_filter]
  apply Finset.sum_le_sum
  intro m hm
  by_cases hp : Nat.Prime m
  · have hwzero : squareWeight n m = 0 := by
      apply le_antisymm _ (squareWeight_nonneg n m)
      apply le_of_not_gt
      intro hpos
      have hbounds := (squareWeight_pos_iff n m).mp hpos
      have hcount := (squareCount_pos_iff n).mpr ⟨m, hp, hbounds.1, hbounds.2⟩
      rw [hzero] at hcount
      exact (lt_irrefl 0) hcount
    simp [hp, hwzero]
  · simpa only [hp, not_false_eq_true, if_true, mul_one] using
      mul_le_mul_of_nonneg_left (squareWeight_le_one n m)
        (ArithmeticFunction.vonMangoldt_nonneg (n := m))

/-- A tent sum above the inherited complete correction bound supplies a prime
without unsmoothing. This does not supply a lower bound for the tent sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentSource.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
