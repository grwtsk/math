# finite_weighted_sample_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a218a6-0fd8-1fc1-8c0d-159d8e7ee79e",
  "kind": "theorem",
  "lexical_name": "finite_weighted_sample_error",
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
  "slug": "finite-weighted-sample-error--36b0e72e6a5f741fffa44949",
  "source": {
    "blob": "34afcf9d49fd8d20e0defcbd73953708d44fe06a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 174,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36b0e72e6a5f741fffa449490d99bf6902e41e295ef28271983b8a23e0717152",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a218a6-0fd8-1fc1-8c0d-159d8e7ee79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_weighted_sample_error {ι : Type*} (S : Finset ι)
    (m : ι → ℕ) (z : ι → ℂ) (β : ι → ℝ)
    (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x) (ha : 1 < x 0)
    (v : ι → ℕ → ℂ) (ε : ι → ℕ → ℝ)
    (hz : ∀ j ∈ S, (z j).re ≤ β j)
    (hv : ∀ j ∈ S, ∀ i < N, ‖density (z j) (x i) - v j i‖ ≤ ε j i) :
    ‖(∑ j ∈ S, (m j : ℂ) * kernel (x 0) (x N) (z j)) -
      ∑ j ∈ S, (m j : ℂ) * (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ ≤
      ∑ j ∈ S, (m j : ℝ) * (partitionError x N (β j) (z j) +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε j i) := by
  calc
    _ = ‖∑ j ∈ S, (m j : ℂ) * (kernel (x 0) (x N) (z j) -
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ := by
      simp only [mul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * (kernel (x 0) (x N) (z j) -
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      simpa [norm_mul] using
        mul_le_mul_of_nonneg_left
          (kernel_sample_error x N hx ha (hz j hj) (v j) (ε j) (hv j hj))
          (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)

/-- A concrete equal-width mesh. A positive N is required to reach b. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34afcf9d49fd8d20e0defcbd73953708d44fe06a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
