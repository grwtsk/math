# remark_2_6_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d645be53aef2067c81ea220aede21a93d941f61e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8191c1a3-9b84-f1a8-c98b-df20e60d221d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ec2fe1-bba0-ed26-ba35-0c56fa4a6c2e",
  "kind": "theorem",
  "lexical_name": "remark_2_6_a",
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
  "slug": "remark-2-6-a--ae35ecc4c34f3c9cc39da36d",
  "source": {
    "blob": "d645be53aef2067c81ea220aede21a93d941f61e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 268,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae35ecc4c34f3c9cc39da36dfbc9ef00235c8e751f1037d0a367faf8ca2e706b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ec2fe1-bba0-ed26-ba35-0c56fa4a6c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remark_2_6_a (x : ℝ) (hx : 0 ≤ x) :
    Gamma.incomplete 3 x = (x ^ 2 + 2 * (x + 1)) * exp (-x) := by
  have integrableOn_Ioi (s : ℝ) {a : ℝ} (hs : 0 < s) (ha : 0 ≤ a) :
      IntegrableOn (fun t ↦ exp (-t) * t ^ (s - 1)) (Set.Ioi a) :=
    (GammaIntegral_convergent hs).mono_set (Set.Ioi_subset_Ioi ha)
  have recurrence (s : ℝ) (hs : 0 < s) {y : ℝ} (hy : 0 ≤ y) :
      Gamma.incomplete (s + 1) y = y ^ s * exp (-y) + s * Gamma.incomplete s y := by
    unfold Gamma.incomplete
    conv_lhs => arg 2; intro t; rw [mul_comm]
    norm_num
    rw [integral_Ioi_mul_deriv_eq_deriv_mul (u := fun t ↦ t ^ s) (v := fun t ↦ -exp (-t))
        (u' := fun t ↦ s * t ^ (s - 1)) (v' := fun t ↦ exp (-t))
        (a' := -y ^ s * exp (-y)) (b' := 0)]
    · ring_nf
      simp [sub_eq_add_neg, integral_neg, ← integral_const_mul, mul_assoc, mul_comm]
    · exact fun t ht ↦ hasDerivAt_rpow_const (by grind)
    · exact fun t _ ↦ by convert (hasDerivAt_neg t).exp.neg using 1; norm_num
    · simpa [mul_comm] using integrableOn_Ioi (s + 1) (by grind) (by grind : 0 ≤ y)
    · refine ((integrableOn_Ioi s hs hy).const_mul (-s)).congr ?_
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t _; norm_num; ring
    · convert Filter.Tendsto.mul
        (Filter.Tendsto.rpow (Filter.tendsto_id.mono_left inf_le_left) tendsto_const_nhds _)
        (Filter.Tendsto.neg (continuous_exp.continuousAt.tendsto.comp
          (Filter.Tendsto.neg (Filter.tendsto_id.mono_left inf_le_left)))) using 1 <;> aesop
    · have h_lim : Filter.Tendsto (fun t : ℝ ↦ t ^ s * exp (-t)) Filter.atTop (nhds 0) := by
        apply squeeze_zero_norm' _ (tendsto_pow_mul_exp_neg_atTop_nhds_zero ⌈s⌉₊)
        filter_upwards [Filter.eventually_gt_atTop 1] with t ht
        rw [norm_of_nonneg (by positivity)]
        exact mul_le_mul_of_nonneg_right
          (by simpa using rpow_le_rpow_of_exponent_le ht.le <| Nat.le_ceil s) (by positivity)
      convert h_lim.neg using 2 <;> norm_num
  rw [show (3 : ℝ) = 2 + 1 by norm_num, recurrence 2 (by norm_num) hx,
      show (2 : ℝ) = 1 + 1 by norm_num, recurrence 1 (by norm_num) hx]
  norm_num [Gamma.incomplete, integral_exp_neg_Ioi x]; ring

@[blueprint
  "fks-remark-2-6-b"
  (title := "FKS Remark 2-6-b")
  (statement := /-- For $s>1$, one has $\Gamma(s,x) \sim x^{s-1} e^{-x}$. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d645be53aef2067c81ea220aede21a93d941f61e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
