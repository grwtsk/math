# GammaSeq_eq_approx_Gamma_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b0b24ac-5bff-d423-3077-48651d2ec208",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14cbf78c-e4ad-4b33-595c-b75a6a97cf8e",
  "kind": "theorem",
  "lexical_name": "GammaSeq_eq_approx_Gamma_integral",
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
  "slug": "gammaseq-eq-approx-gamma-integral--0f58a7a3ea04e4aea2a086c0",
  "source": {
    "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 266,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f58a7a3ea04e4aea2a086c0573f6a9affdcbf3203d7672e7ba5efabc1a04b5f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14cbf78c-e4ad-4b33-595c-b75a6a97cf8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GammaSeq_eq_approx_Gamma_integral {s : ℂ} (hs : 0 < re s) {n : ℕ} (hn : n ≠ 0) :
    GammaSeq s n = ∫ x : ℝ in (0)..n, ↑((1 - x / n) ^ n) * (x : ℂ) ^ (s - 1) := by
  have : ∀ x : ℝ, x = x / n * n := by intro x; rw [div_mul_cancel]; exact Nat.cast_ne_zero.mpr hn
  conv_rhs => enter [1, x, 2, 1]; rw [this x]
  rw [GammaSeq_eq_betaIntegral_of_re_pos hs]
  have := intervalIntegral.integral_comp_div (a := 0) (b := n)
    (fun x => ↑((1 - x) ^ n) * ↑(x * ↑n) ^ (s - 1) : ℝ → ℂ) (Nat.cast_ne_zero.mpr hn)
  dsimp only at this
  rw [betaIntegral, this, real_smul, zero_div, div_self, add_sub_cancel,
    ← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_const_mul]
  swap; · exact Nat.cast_ne_zero.mpr hn
  simp_rw [intervalIntegral.integral_of_le zero_le_one]
  refine' set_integral_congr measurableSet_Ioc fun x hx => _
  push_cast
  have hn' : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  have A : (n : ℂ) ^ s = (n : ℂ) ^ (s - 1) * n := by
    conv_lhs => rw [(by ring : s = s - 1 + 1), cpow_add _ _ hn']
    simp
  have B : ((x : ℂ) * ↑n) ^ (s - 1) = (x : ℂ) ^ (s - 1) * (n : ℂ) ^ (s - 1) := by
    rw [← ofReal_nat_cast,
      mul_cpow_ofReal_nonneg hx.1.le (Nat.cast_pos.mpr (Nat.pos_of_ne_zero hn)).le]
  rw [A, B, cpow_nat_cast]; ring
#align complex.Gamma_seq_eq_approx_Gamma_integral Complex.GammaSeq_eq_approx_Gamma_integral

/-- The main techical lemma for `GammaSeq_tendsto_Gamma`, expressing the integral defining the
Gamma function for `0 < re s` as the limit of a sequence of integrals over finite intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19004bb83df9dbb84f2643aec6bec388982f15a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
