# absolute_weighted_mobius_mass_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4285eae7-9a2b-53fd-a05a-bb9b5d87f78a",
  "kind": "theorem",
  "lexical_name": "absolute_weighted_mobius_mass_unbounded",
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
  "slug": "absolute-weighted-mobius-mass-unbounded--45c0f941763a1bf2cf4a8fbd",
  "source": {
    "blob": "6deb99900b4d3250a24a4017bacdb01d9cf6821b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 77,
    "path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c0f941763a1bf2cf4a8fbd6f11caad8e33c33b37995aea9ecd983d5fbbd398",
  "verification": {
    "reference": "docs/verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4285eae7-9a2b-53fd-a05a-bb9b5d87f78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absolute_weighted_mobius_mass_unbounded (D R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧
      D < ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), |weightedMoebius d| := by
  have hN : ∃ N : ℕ, D < ∑ d ∈ Finset.range N, |weightedMoebius d| := by
    by_contra h
    have hb : ∀ N : ℕ, (∑ d ∈ Finset.range N, |weightedMoebius d|) ≤ D := by
      simpa only [not_exists, not_lt] using h
    exact abs_weightedMoebius_not_summable
      (summable_of_sum_range_le (fun _ ↦ abs_nonneg _) hb)
  obtain ⟨N, hN⟩ := hN
  let A : ℝ := max R ((N : ℝ) + 1)
  have hNA : (N : ℝ) + 1 ≤ A := le_max_right _ _
  have hA : 1 ≤ A := by have := Nat.cast_nonneg (α := ℝ) N; linarith
  have hcut : N ≤ sourceKernelCutoff A := by
    apply Nat.le_floor
    have h := Real.add_one_le_exp (2*A)
    change (N : ℝ) ≤ Real.exp (2*A)
    linarith
  refine ⟨A, hA, le_max_left _ _, hN.trans_le ?_⟩
  rw [← abs_weightedMoebius_sum_zero_eq]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _,
      (Finset.mem_range.mp hd).le.trans hcut⟩
  · intro d hd hdnot
    exact abs_nonneg _

/-- An eventual constant upper envelope for the entire absolute jump mass is false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6deb99900b4d3250a24a4017bacdb01d9cf6821b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
