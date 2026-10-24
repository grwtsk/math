# abel_log_M2sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:792f82a8-f499-5238-f329-f09badabdf12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f59625df-a7ce-e04a-db39-e5661758fd59",
  "kind": "lemma",
  "lexical_name": "abel_log_M2sum",
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
  "slug": "abel-log-m2sum--bc32f8a5ad3aee3f6582f0f4",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 569,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc32f8a5ad3aee3f6582f0f48d168712fba5b1ef1e4802e9652a3a81d1cf625e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f59625df-a7ce-e04a-db39-e5661758fd59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma abel_log_M2sum {x : ℝ} (_hx : 1 ≤ x) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Real.log n * (Λ n ^ 2 / n)
      = Real.log x * ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n
        - ∫ t in Set.Ioc 1 x, t⁻¹ * M2sum t := by
  have hf_diff : ∀ t ∈ Set.Icc (1 : ℝ) x, DifferentiableAt ℝ Real.log t := fun t ht =>
    Real.differentiableAt_log (by nlinarith [ht.1])
  have hf_int : IntegrableOn (deriv Real.log) (Set.Icc 1 x) := by
    rw [Real.deriv_log']
    refine ContinuousOn.integrableOn_Icc ?_
    exact continuousOn_inv₀.mono fun t ht => by
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      nlinarith [ht.1]
  have habel := sum_mul_eq_sub_integral_mul₀ (fun n => Λ n ^ 2 / n) (by simp) x hf_diff hf_int
  have hL : ∑ k ∈ Icc 0 ⌊x⌋₊, Real.log k * ((fun n : ℕ => Λ n ^ 2 / n) k)
      = ∑ n ∈ Ioc 0 ⌊x⌋₊, Real.log n * (Λ n ^ 2 / n) := by
    rw [sum_Icc_eq_sum_Ioc (by simp) ⌊x⌋₊]
  have hR : ∑ k ∈ Icc 0 ⌊x⌋₊, (fun n : ℕ => Λ n ^ 2 / n) k
      = ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n := by
    rw [sum_Icc_eq_sum_Ioc (by simp) ⌊x⌋₊]
  rw [hL, hR] at habel
  rw [habel]
  congr 1
  refine setIntegral_congr_fun measurableSet_Ioc fun t _ => ?_
  rw [Real.deriv_log]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
