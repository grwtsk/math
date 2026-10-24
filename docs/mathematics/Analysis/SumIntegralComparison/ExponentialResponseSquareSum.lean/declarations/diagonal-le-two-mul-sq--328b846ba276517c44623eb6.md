# diagonal_le_two_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:036cfe30-ac1d-cfe0-6a74-f415a9cc6ffb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52813604-85fd-449a-5bd6-f93b73c729d1",
  "kind": "theorem",
  "lexical_name": "diagonal_le_two_mul_sq",
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
  "slug": "diagonal-le-two-mul-sq--328b846ba276517c44623eb6",
  "source": {
    "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 182,
    "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:328b846ba276517c44623eb6914c11d7cd0f6384b2ef3018cbdd70d7390ac3c1",
  "verification": {
    "reference": "docs/verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52813604-85fd-449a-5bd6-f93b73c729d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_le_two_mul_sq (T : ℝ) (hT : 0 ≤ T) : PPNCP04.diagonal T ≤ 2 * T ^ 2 := by
  have hi : ∀ n ∈ integerInventory T,
      IntegrableOn (fun u => realMoebius n ^ 2 * (atom n u * atom n u)) (Icc 0 T) := by
    intro n hn
    apply Continuous.integrableOn_Icc
    exact continuous_const.mul ((atom_continuous ((mem_integerInventory.mp hn).1)).mul
      (atom_continuous ((mem_integerInventory.mp hn).1)))
  have hs : IntegrableOn
      (fun u => ∑ n ∈ integerInventory T, realMoebius n ^ 2 * (atom n u * atom n u))
      (Icc 0 T) := integrable_finsetSum _ hi
  have hc : IntegrableOn (fun u : ℝ => 4 * u) (Icc 0 T) :=
    (by fun_prop : Continuous (fun u : ℝ => 4 * u)).integrableOn_Icc
  have he : PPNCP04.diagonal T = ∫ u in Icc 0 T,
      ∑ n ∈ integerInventory T, realMoebius n ^ 2 * (atom n u * atom n u) := by
    rw [integral_finsetSum _ hi]
    unfold PPNCP04.diagonal gram
    apply Finset.sum_congr rfl
    intro n hn
    exact (integral_const_mul _ _).symm
  rw [he]
  calc
    (∫ u in Icc 0 T, ∑ n ∈ integerInventory T,
      realMoebius n ^ 2 * (atom n u * atom n u)) ≤ ∫ u in Icc 0 T, 4 * u :=
        setIntegral_mono_on hs hc measurableSet_Icc
          (fun u hu => diagonal_integrand_bound hu.1 hu.2)
    _ = 2 * T ^ 2 := by
      rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT,
        intervalIntegral.integral_const_mul, integral_id]
      ring

end EulerP04RH.SharpDiagonal

#print axioms EulerP04RH.SharpDiagonal.profile_integer_sum_bound
#print axioms EulerP04RH.SharpDiagonal.atom_inventory_square_bound
#print axioms EulerP04RH.SharpDiagonal.diagonal_le_two_mul_sq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
