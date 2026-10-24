# riesz_prime_sum_eq_strict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f260b88a1f5cb637bfe04747fca27caa4ea083e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 640,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cf3ce9d-2fab-9e0a-3ca6-f87baa5f4dae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70b1042-8443-1abc-80ec-9a8d6aa73b48",
  "kind": "theorem",
  "lexical_name": "riesz_prime_sum_eq_strict",
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
  "slug": "riesz-prime-sum-eq-strict--de05943ea8b682e8707ac053",
  "source": {
    "blob": "6f260b88a1f5cb637bfe04747fca27caa4ea083e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 640,
    "path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de05943ea8b682e8707ac0537a03d334ab95d19d9fe0c317ed48307fcf41ae1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70b1042-8443-1abc-80ec-9a8d6aa73b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_prime_sum_eq_strict (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      rieszWindow A (Real.log n)) =
        ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ) := by
  classical
  rw [tsum_eq_sum (s := primeIndices A) (fun n hn ↦ ?_)]
  · rw [prime_power_riesz_sum_exact A hA]
    push_cast
    apply Finset.sum_congr rfl
    intro n hn
    have hcut := boundary_distance_pos_of_mem_primeIndices A n hn
    have hnpos : 0 < n := by have := ((mem_primeIndices_iff A n).mp hn).1; omega
    unfold rieszWindow
    rw [indicator_of_mem (show Real.log n ∈ Iio (2 * A) by
      change Real.log n < 2 * A
      unfold boundaryDistance at hcut
      linarith), ← boundary_distance_eq_log_cutoff_ratio A n hnpos]
    rfl
  · by_cases hn2 : 2 ≤ n
    · have hcut : Real.exp (2 * A) ≤ (n : ℝ) := by
        by_contra h
        exact hn ((mem_primeIndices_iff A n).mpr ⟨hn2, lt_of_not_ge h⟩)
      have hlog : 2 * A ≤ Real.log n := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      unfold rieszWindow
      rw [indicator_of_notMem (show Real.log n ∉ Iio (2 * A) from not_lt.mpr hlog)]
      simp
    · have hs : n = 0 ∨ n = 1 := by omega
      rcases hs with rfl | rfl <;> simp

/-- R6: genuine half-line Fourier inversion gives the complete strict finite Riesz sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f260b88a1f5cb637bfe04747fca27caa4ea083e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
