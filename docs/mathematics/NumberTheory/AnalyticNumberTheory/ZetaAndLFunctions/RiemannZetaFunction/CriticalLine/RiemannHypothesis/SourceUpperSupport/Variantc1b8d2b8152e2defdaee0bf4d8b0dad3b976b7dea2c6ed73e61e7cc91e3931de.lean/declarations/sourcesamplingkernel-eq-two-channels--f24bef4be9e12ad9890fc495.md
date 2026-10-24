# sourceSamplingKernel_eq_two_channels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5f6bd1b-3202-27fd-30fe-17fab986c87b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73118448-7686-c3de-a53f-56a673011a41",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_eq_two_channels",
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
  "slug": "sourcesamplingkernel-eq-two-channels--f24bef4be9e12ad9890fc495",
  "source": {
    "blob": "8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f24bef4be9e12ad9890fc4951da5a760ce5d926c3f746f6a8b07d3dcdae5aae1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73118448-7686-c3de-a53f-56a673011a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_eq_two_channels (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  let T := (Icc 2 3).filter (fun k : ℕ ↦ x*(k:ℝ)<Real.exp (2*A))
  have hsub : T ⊆ SourceSampling.samplingIndices A x := by
    intro k hk
    have ht := mem_filter.mp hk
    exact (SourceSampling.mem_samplingIndices_iff A x k hx).mpr
      ⟨by have h := (mem_Icc.mp ht.1).1; omega, ht.2⟩
  have heq : SourceSampling.sourceSamplingKernel A x =
      ∑ k ∈ T, Real.log (k:ℝ)/Real.sqrt (x*(k:ℝ))*
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log (x*(k:ℝ))) := by
    unfold SourceSampling.sourceSamplingKernel
    symm
    apply sum_subset hsub
    intro k hk hkT
    by_cases hk1 : k=1
    · simp [hk1]
    · have hm := (SourceSampling.mem_samplingIndices_iff A x k hx).mp hk
      have hk4 : 4 ≤ k := by
        by_contra h
        apply hkT
        exact mem_filter.mpr ⟨mem_Icc.mpr (by omega),hm.2⟩
      have hk4r : (4:ℝ) ≤ k := by exact_mod_cast hk4
      have hmul : 4*x ≤ x*(k:ℝ) := by nlinarith
      exact False.elim (not_lt_of_ge (hcut.trans hmul) hm.2)
  rw [heq]
  dsimp [T]
  rw [sum_filter]
  have hI : Icc (2:ℕ) 3 = {2,3} := by decide
  rw [hI]
  norm_num only [sum_insert, sum_singleton, mem_singleton, Nat.cast_ofNat, not_false_eq_true]
  simp only [mul_comm x]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
