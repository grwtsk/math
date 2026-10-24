# two_stage_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95a90d69-7da9-354e-4ec7-83132ca842ae",
  "kind": "theorem",
  "lexical_name": "two_stage_abs_le",
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
  "slug": "two-stage-abs-le--d81b01b67d4896554e8db626",
  "source": {
    "blob": "df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81b01b67d4896554e8db626047e2e01b3b74795731d617a9622bfe5f77fa0a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a90d69-7da9-354e-4ec7-83132ca842ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_stage_abs_le (c b d : ι → ℝ) (f g : ℝ → ℝ)
    (P Q : ι → ι → ℝ) (L : ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hQ : ∀ j k, 0 ≤ Q j k)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i)
    (hr : ∀ j, inducedDrift c d P j = (∑ k, Q j k) - ∑ k, Q k j)
    (ht : ∀ i j, |f (c i) - f (c j) - (c i - c j) * g (c j)| ≤
      L * (c i - c j) ^ 2 / 2)
    (hg : ∀ j k, |g (c j) - g (c k)| ≤ L * |c j - c k|) :
    |readout c b d f g| ≤ L * transportCost c P Q := by
  have hsecond : (∑ j, inducedDrift c d P j * g (c j)) =
      ∑ j, ∑ k, Q j k * (g (c j) - g (c k)) := by
    simp_rw [hr, sub_mul, Finset.sum_mul, Finset.sum_sub_distrib, mul_sub]
    rw [Finset.sum_comm (f := fun j k => Q k j * g (c j))]
    simp_rw [Finset.sum_sub_distrib]
  rw [first_transport_identity c b d f g P hb, hsecond]
  calc
    _ ≤ (∑ i, ∑ j,
        |P i j * (f (c i) - f (c j) - (c i - c j) * g (c j))|) +
        ∑ j, ∑ k, |Q j k * (g (c j) - g (c k))| := by
      apply (abs_add_le _ _).trans
      apply add_le_add
      all_goals
        apply (Finset.abs_sum_le_sum_abs _ _).trans
        exact Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ (∑ i, ∑ j, P i j * (L * (c i - c j) ^ 2 / 2)) +
        ∑ j, ∑ k, Q j k * (L * |c j - c k|) := by
      apply add_le_add
      · apply Finset.sum_le_sum
        intro i _
        apply Finset.sum_le_sum
        intro j _
        rw [abs_mul, abs_of_nonneg (hP i j)]
        exact mul_le_mul_of_nonneg_left (ht i j) (hP i j)
      · apply Finset.sum_le_sum
        intro j _
        apply Finset.sum_le_sum
        intro k _
        rw [abs_mul, abs_of_nonneg (hQ j k)]
        exact mul_le_mul_of_nonneg_left (hg j k) (hQ j k)
    _ = _ := by
      unfold transportCost
      rw [mul_add, Finset.mul_sum, Finset.mul_sum]
      apply congrArg₂ (· + ·)
      · rw [mul_div_assoc, Finset.mul_sum]
        simp only [Finset.sum_div, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      · simp only [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j _
        apply Finset.sum_congr rfl
        intro k _
        ring


end Transport

end FormalResearch.RiemannHypothesis.SourceSchedulingTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
