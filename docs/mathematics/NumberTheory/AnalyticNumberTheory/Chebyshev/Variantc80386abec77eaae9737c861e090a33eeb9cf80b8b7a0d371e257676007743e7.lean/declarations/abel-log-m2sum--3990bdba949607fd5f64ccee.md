# abel_log_M2sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39e049c1-87c9-36a7-5f96-925735bccfb2",
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
  "slug": "abel-log-m2sum--3990bdba949607fd5f64ccee",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 577,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3990bdba949607fd5f64ccee4fc4ea938db0894bd6a9347c2b9043adc93d6620",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39e049c1-87c9-36a7-5f96-925735bccfb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–602.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
