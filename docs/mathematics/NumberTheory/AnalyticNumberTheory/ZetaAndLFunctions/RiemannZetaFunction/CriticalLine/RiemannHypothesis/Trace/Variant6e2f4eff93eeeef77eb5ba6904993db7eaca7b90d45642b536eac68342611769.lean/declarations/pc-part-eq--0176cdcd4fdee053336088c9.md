# Pc_part_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c998f5b65d3f23b8c6d530068e9af4d4b2e1b0ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae5c930c-6956-42a5-6af9-c6ad2982d9be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99173b70-0e0f-3dcf-9358-a393fc2f56c1",
  "kind": "lemma",
  "lexical_name": "Pc_part_eq",
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
  "slug": "pc-part-eq--0176cdcd4fdee053336088c9",
  "source": {
    "blob": "c998f5b65d3f23b8c6d530068e9af4d4b2e1b0ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0176cdcd4fdee053336088c9c045438aa4eaa0fe4d9671be3a7abf743b4388ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99173b70-0e0f-3dcf-9358-a393fc2f56c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pc_part_eq (hF : LocalHypsCoreW cϱ p F) (c : ℕ → ℂ) (t : ℝ) :
    ∫ r, F.phiHat r ^ 2 * Pc p.X c (t + r)
      = 2 * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, (Real.sqrt n)⁻¹ * F.Aphi (Real.log n)
          * ((c n).re * Real.cos (t * Real.log n) + (c n).im * Real.sin (t * Real.log n)) := by
  have h1 : (fun r => F.phiHat r ^ 2 * Pc p.X c (t + r))
      = fun r => ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊,
          ((1 / Real.pi) * (Real.sqrt n)⁻¹)
            * ((c n).re * (F.phiHat r ^ 2 * Real.cos ((t + r) * Real.log n))
              + (c n).im * (F.phiHat r ^ 2 * Real.sin ((t + r) * Real.log n))) := by
    funext r
    unfold Pc
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [div_eq_mul_inv]
    ring
  rw [h1, MeasureTheory.integral_finset_sum]
  · rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [MeasureTheory.integral_const_mul, MeasureTheory.integral_add,
      MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul,
      integral_phiHat_sq_mul_cos_shift_core hF, integral_phiHat_sq_mul_sin_shift_core hF]
    · have hπ : Real.pi ≠ 0 := Real.pi_ne_zero
      field_simp
    · exact (hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
        (fun x => Real.abs_cos_le_one _)).const_mul _
    · exact (hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
        (fun x => Real.abs_sin_le_one _)).const_mul _
  · intro n _
    exact (((hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
        (fun x => Real.abs_cos_le_one _)).const_mul _).add
      ((hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop)
        (fun x => Real.abs_sin_le_one _)).const_mul _)).const_mul _

/-- **Sum of the P_c-parts over the grid** (mirror of ThmE.sum_P_part_chi_bound with weights
`‖c_N‖/√N`): `|Σ_{k<d} ∫ φ̂(r)² P_c(τ_k + r) dr| ≤ (L²/log 2) · S₁(c; X)`, provided `c 1 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant6e2f4eff93eeeef77eb5ba6904993db7eaca7b90d45642b536eac68342611769.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c998f5b65d3f23b8c6d530068e9af4d4b2e1b0ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
