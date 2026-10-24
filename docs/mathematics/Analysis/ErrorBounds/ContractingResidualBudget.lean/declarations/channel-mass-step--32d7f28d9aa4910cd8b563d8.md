# channel_mass_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:248c9547-46e6-8506-812e-5d5b4474e7b3",
  "kind": "theorem",
  "lexical_name": "channel_mass_step",
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
  "slug": "channel-mass-step--32d7f28d9aa4910cd8b563d8",
  "source": {
    "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 164,
    "path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d7f28d9aa4910cd8b563d83118dec559875238e6ee8a980a620208807518ee",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:248c9547-46e6-8506-812e-5d5b4474e7b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem channel_mass_step (weight : ι → ℝ)
    (residual forcing : ℕ → ι → ℝ) (gain : ℕ → ι → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (evolution : ∀ n i, residual (n + 1) i =
      (∑ j, gain n i j * residual n j) + forcing n i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (n : ℕ) :
    channelMass weight (residual (n + 1)) ≤
      r * channelMass weight (residual n) + channelMass weight (forcing n) := by
  have each (i : ι) : |residual (n + 1) i| ≤
      (∑ j, |gain n i j| * |residual n j|) + |forcing n i| := by
    rw [evolution n i]
    calc
      |(∑ j, gain n i j * residual n j) + forcing n i| ≤
          |∑ j, gain n i j * residual n j| + |forcing n i| := abs_add_le _ _
      _ ≤ (∑ j, |gain n i j * residual n j|) + |forcing n i| := by
        apply add_le_add_left
        simpa only [Real.norm_eq_abs] using
          (norm_sum_le Finset.univ (fun j => gain n i j * residual n j))
      _ = (∑ j, |gain n i j| * |residual n j|) + |forcing n i| := by
        simp only [abs_mul]
  unfold channelMass
  calc
    (∑ i, weight i * |residual (n + 1) i|) ≤
        ∑ i, weight i * ((∑ j, |gain n i j| * |residual n j|) + |forcing n i|) :=
      Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_left (each i) (weightsNonnegative i)
    _ = (∑ i, ∑ j, weight i * (|gain n i j| * |residual n j|)) +
        ∑ i, weight i * |forcing n i| := by
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
    _ = (∑ j, ∑ i, weight i * (|gain n i j| * |residual n j|)) +
        ∑ i, weight i * |forcing n i| := by rw [Finset.sum_comm]
    _ = (∑ j, (∑ i, weight i * |gain n i j|) * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ (∑ j, (r * weight j) * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      apply add_le_add_left
      exact Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound n j) (abs_nonneg (residual n j))
    _ = r * (∑ j, weight j * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      simp only [Finset.mul_sum, mul_assoc]

/-- Complete mixed-channel specialization. The arithmetic readout, exact evolution,
weighted gain bound, and forcing decay remain independent application obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
