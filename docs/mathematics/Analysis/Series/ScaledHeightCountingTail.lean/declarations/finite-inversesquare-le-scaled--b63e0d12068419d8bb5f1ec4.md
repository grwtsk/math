# finite_inverseSquare_le_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b50d172b-b797-1975-ea86-762cde54b6eb",
  "kind": "theorem",
  "lexical_name": "finite_inverseSquare_le_scaled",
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
  "slug": "finite-inversesquare-le-scaled--b63e0d12068419d8bb5f1ec4",
  "source": {
    "blob": "330123ddaace860044eda362ecaddbac64b5450d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/Analysis/Series/ScaledHeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b63e0d12068419d8bb5f1ec431af72c5e5c688d31d4aab53ab3003ea5b9c7113",
  "verification": {
    "reference": "docs/verification/Analysis/Series/ScaledHeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50d172b-b797-1975-ea86-762cde54b6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inverseSquare_le_scaled (S : Finset ι)
    (height weight : ι → ℝ) (T A : ℝ) (hT : 1 ≤ T) (hA : 0 < A)
    (hlower : ∀ i ∈ S, T < height i)
    (hcount : ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ A * (t * Real.log t)) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤ A * inverseSquareBudget T := by
  have hc : ∀ t, T ≤ t →
      finiteCountingMass S height (fun i => weight i / A) t ≤ t * Real.log t := by
    intro t ht
    rw [finiteCountingMass_div]
    apply (div_le_iff₀ hA).mpr
    simpa only [mul_comm A] using hcount t ht
  have hb := finite_inverseSquare_le S height (fun i => weight i / A) T hT hlower hc
  have he : (∑ i ∈ S, weight i / height i ^ 2) =
      A * ∑ i ∈ S, (weight i / A) / height i ^ 2 := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    have hhi : height i ≠ 0 :=
      ne_of_gt ((lt_of_lt_of_le zero_lt_one hT).trans (hlower i hi))
    field_simp [hA.ne', hhi]
  rw [he]
  exact mul_le_mul_of_nonneg_left hb hA.le

/-- Absolute norm mass and summability are derived from all finite subfamilies.
The conclusion bounds the sum of norms, stronger than the norm of the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/ScaledHeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/ScaledHeightCountingTail.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330123ddaace860044eda362ecaddbac64b5450d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
