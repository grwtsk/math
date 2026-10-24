# strict_sample_eq_padded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dd89fb7-0f12-dd83-bdda-c7bc1dfabc37",
  "kind": "theorem",
  "lexical_name": "strict_sample_eq_padded",
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
  "slug": "strict-sample-eq-padded--8d15bf56677c151a63dfda9f",
  "source": {
    "blob": "aae5930c09c365323c06ada6904c8975b6ea35f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d15bf56677c151a63dfda9f2bfffef3c5ed8c6c9527613de5ae213f73d3f9f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dd89fb7-0f12-dd83-bdda-c7bc1dfabc37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_sample_eq_padded (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      F (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A) / x⌋₊ + 1), TwoMomentSampling.samplingIntegrand F x k := by
  let N := ⌊Real.exp (2 * A) / x⌋₊ + 1
  have hN : Real.exp (2 * A) / x ≤ (N : ℝ) := by
    simpa only [N, Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one (Real.exp (2 * A) / x)).le
  calc
    _ = ∑ k ∈ samplingIndices A x, TwoMomentSampling.samplingIntegrand F x k := by
      apply sum_congr rfl
      intro k hk
      have hk1 := ((mem_samplingIndices_iff A x k hx).mp hk).1
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
      rw [TwoMomentSampling.samplingIntegrand, Real.log_mul hx.ne' hk0.ne']
    _ = _ := by
      apply sum_subset (samplingIndices_subset_fixed A x N hx hN)
      intro k hk hout
      have hk1 := (mem_Icc.mp hk).1
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
      have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
        by_contra h
        exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
      exact sampling_zero A x k F hx hk0 hzero hcut

/-- The padded endpoint lies beyond the actual support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae5930c09c365323c06ada6904c8975b6ea35f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
