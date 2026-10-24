# integral_eq_sumZeroes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4c069a3b0e7d2b62d71963d65f56b38470cf3cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84c27cf4-047b-a164-bc60-bee70a0cfff8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce8c6ee5-46d5-d791-65ae-283c10062ba3",
  "kind": "theorem",
  "lexical_name": "integral_eq_sumZeroes",
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
  "slug": "integral-eq-sumzeroes--4c48b1298f87aca2370748a5",
  "source": {
    "blob": "c4c069a3b0e7d2b62d71963d65f56b38470cf3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c48b1298f87aca2370748a5d873cb058df795cf584be200f926843338fb61f7",
  "verification": {
    "reference": "docs/verification/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8c6ee5-46d5-d791-65ae-283c10062ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_sumZeroes {n : ℕ} {P : ℝ[X]} (hn : n ≠ 0) (hP : P.degree < 2 * n) :
    ∫ x, P.eval x ∂measureT = sumZeroes n P := by
  have hmem : P ∈ degreeLT ℝ (2 * n) := by rwa [mem_degreeLT]
  rw [← Sequence.span_degreeLT (chebyshevTsequence ℝ) (by simp),
    show Set.Iio (2 * n) = Finset.range (2 * n) by simp,
    Submodule.mem_span_image_finset_iff_exists_fun'] at hmem
  obtain ⟨c, rfl⟩ := hmem
  simp_rw [eval_finsetSum, eval_smul]
  rw [MeasureTheory.integral_finsetSum, sumZeroes_sum]
  · simp_rw [sumZeroes_smul, smul_eq_mul, MeasureTheory.integral_const_mul]
    congr! with i hrange
    simp_rw [chebyshevTsequence]
    by_cases i = 0
    case pos hi => rw [hi, Nat.cast_zero, integral_eval_T_real_measureT_zero, sumZeroes_T_zero hn]
    case neg hi =>
      have : ¬ (2 * n : ℤ) ∣ i := by
        refine (Int.not_dvd_iff_lt_mul_succ _ (by grind)).mpr ⟨0, ⟨by grind, ?_⟩⟩
        rw_mod_cast [zero_add, mul_one]
        exact mem_range.mp hrange
      rw [integral_eval_T_real_measureT_of_ne_zero (by grind), sumZeroes_T_of_not_dvd this]
  · simp_rw [← eval_smul]
    exact fun i hi => integrable_measureT (by fun_prop)

end Polynomial.Chebyshev
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c069a3b0e7d2b62d71963d65f56b38470cf3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
