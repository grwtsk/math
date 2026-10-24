# prime_logpow_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17da169e0814ca6cf64425c8276565660731d843",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:381af803-7065-d713-55d1-928dc5ad979a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:763950db-7a62-88b1-8703-4773fd6cbd97",
  "kind": "theorem",
  "lexical_name": "prime_logpow_sum",
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
  "slug": "prime-logpow-sum--247ab6c0905829f9008b85bd",
  "source": {
    "blob": "17da169e0814ca6cf64425c8276565660731d843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:247ab6c0905829f9008b85bdc3b0ade6af2891117e928431e1059163c4e27584",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763950db-7a62-88b1-8703-4773fd6cbd97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_logpow_sum (b : ℕ) (hb : 2 ≤ b) : ∃ C : ℝ, ∀ u : ℝ, 0 ≤ u →
    |(∑ p ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter Nat.Prime, Real.log p ^ b / p) - u ^ b / b|
      ≤ C * (1 + u) ^ (b - 1) := by
  refine ⟨2 * KM + 2 * Cdef, fun u hu => ?_⟩
  have hb1 : 1 ≤ b := by omega
  rw [sum_prime_logpow_eq b hb1]
  have hmain := mertens_monomial (b - 1) hu
  have hb' : b - 1 + 1 = b := Nat.sub_add_cancel hb1
  rw [hb'] at hmain
  have hcast : ((b - 1 : ℕ) : ℝ) + 1 = b := by rw [Nat.cast_sub hb1]; push_cast; ring
  rw [hcast] at hmain
  have hnp := sum_not_prime_lam_logpow_div_le b hb hu
  have hnp0 : 0 ≤ ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime), Λ n / n * Real.log n ^ (b - 1) :=
    sum_nonneg fun n _ => mul_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n))
      (pow_nonneg (Real.log_natCast_nonneg n) _)
  have hu1 : u ^ (b - 2) ≤ (1 + u) ^ (b - 1) := by
    calc u ^ (b - 2) ≤ (1 + u) ^ (b - 2) := pow_le_pow_left₀ hu (by linarith) _
      _ ≤ (1 + u) ^ (b - 1) := pow_le_pow_right₀ (by linarith) (by omega)
  have hCdef : (0:ℝ) ≤ Cdef := by unfold Cdef; norm_num
  rw [abs_le] at hmain ⊢
  constructor
  · nlinarith [hmain.1, hnp, hu1, KM_nonneg, pow_nonneg (by linarith : (0:ℝ) ≤ 1 + u) (b - 1)]
  · nlinarith [hmain.2, hnp0, hu1, KM_nonneg, pow_nonneg (by linarith : (0:ℝ) ≤ 1 + u) (b - 1)]

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17da169e0814ca6cf64425c8276565660731d843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
