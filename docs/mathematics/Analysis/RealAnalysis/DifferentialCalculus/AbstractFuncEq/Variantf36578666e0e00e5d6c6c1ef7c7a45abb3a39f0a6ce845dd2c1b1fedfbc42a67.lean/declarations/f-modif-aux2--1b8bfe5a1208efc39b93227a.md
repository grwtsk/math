# f_modif_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae226f9708f6749b7e8280ce7b8d4379bed5493f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1608eda7-dbbf-0f92-cee0-4a7f8270f2f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b747fae-5b5d-b431-6be3-d3418423dd63",
  "kind": "lemma",
  "lexical_name": "f_modif_aux2",
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
  "slug": "f-modif-aux2--1b8bfe5a1208efc39b93227a",
  "source": {
    "blob": "ae226f9708f6749b7e8280ce7b8d4379bed5493f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8bfe5a1208efc39b93227a9eb954c1eb13859e6be98b1327ae7931b3970066",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b747fae-5b5d-b431-6be3-d3418423dd63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma f_modif_aux2 [CompleteSpace E] {s : ℂ} (hs : P.k < re s) :
    mellin (fun x ↦ P.f_modif x - P.f x + P.f₀) s = (1 / s) • P.f₀ + (P.ε  / (P.k - s)) • P.g₀ := by
  have h_re1 : -1 < re (s - 1) := by simpa using P.hk.trans hs
  have h_re2 : -1 < re (s - P.k - 1) := by simpa using hs
  calc
  _ = ∫ (x : ℝ) in Ioi 0, (x : ℂ) ^ (s - 1) •
      ((Ioo 0 1).indicator (fun t : ℝ ↦ P.f₀ - (P.ε * ↑(t ^ (-P.k))) • P.g₀) x
      + ({1} : Set ℝ).indicator (fun _ ↦ P.f₀ - P.f 1) x) :=
    setIntegral_congr_fun measurableSet_Ioi (fun x hx ↦ by simp [f_modif_aux1 P hx])
  _ = ∫ (x : ℝ) in Ioi 0, (x : ℂ) ^ (s - 1) • ((Ioo 0 1).indicator
      (fun t : ℝ ↦ P.f₀ - (P.ε * ↑(t ^ (-P.k))) • P.g₀) x) := by
    refine setIntegral_congr_ae measurableSet_Ioi (eventually_of_mem (U := {1}ᶜ)
        (compl_mem_ae_iff.mpr (subsingleton_singleton.measure_zero _)) (fun x hx _ ↦ ?_))
    rw [indicator_of_notMem hx, add_zero]
  _ = ∫ (x : ℝ) in Ioc 0 1, (x : ℂ) ^ (s - 1) • (P.f₀ - (P.ε * ↑(x ^ (-P.k))) • P.g₀) := by
    simp_rw [← indicator_smul, setIntegral_indicator measurableSet_Ioo,
      inter_eq_right.mpr Ioo_subset_Ioi_self, integral_Ioc_eq_integral_Ioo]
  _ = ∫ x : ℝ in Ioc 0 1, ((x : ℂ) ^ (s - 1) • P.f₀ - P.ε • (x : ℂ) ^ (s - P.k - 1) • P.g₀) := by
    refine setIntegral_congr_fun measurableSet_Ioc (fun x ⟨hx, _⟩ ↦ ?_)
    rw [ofReal_cpow hx.le, ofReal_neg, smul_sub, ← mul_smul, mul_comm, mul_assoc, mul_smul,
      mul_comm, ← cpow_add _ _ (ofReal_ne_zero.mpr hx.ne'), ← sub_eq_add_neg, sub_right_comm]
  _ = (∫ (x : ℝ) in Ioc 0 1, (x : ℂ) ^ (s - 1)) • P.f₀
        - P.ε • (∫ (x : ℝ) in Ioc 0 1, (x : ℂ) ^ (s - P.k - 1)) • P.g₀ := by
    rw [integral_sub, integral_smul, integral_smul_const, integral_smul_const]
    · apply Integrable.smul_const
      rw [← IntegrableOn, ← intervalIntegrable_iff_integrableOn_Ioc_of_le zero_le_one]
      exact intervalIntegral.intervalIntegrable_cpow' h_re1
    · refine (Integrable.smul_const ?_ _).smul _
      rw [← IntegrableOn, ← intervalIntegrable_iff_integrableOn_Ioc_of_le zero_le_one]
      exact intervalIntegral.intervalIntegrable_cpow' h_re2
  _ = _ := by simp_rw [← intervalIntegral.integral_of_le zero_le_one,
      integral_cpow (Or.inl h_re1), integral_cpow (Or.inl h_re2), ofReal_zero, ofReal_one,
      one_cpow, sub_add_cancel, zero_cpow fun h ↦ lt_irrefl _ (P.hk.le.trans_lt (zero_re ▸ h ▸ hs)),
      zero_cpow (sub_ne_zero.mpr (fun h ↦ lt_irrefl _ ((ofReal_re _) ▸ h ▸ hs)) : s - P.k ≠ 0),
      sub_zero, sub_eq_add_neg (_ •  _), ← mul_smul, ← neg_smul, mul_one_div, ← div_neg, neg_sub]

/-!
## Main theorems on weak FE-pairs
-/

/-- An entire function which differs from the Mellin transform of `f - f₀`, where defined, by a
correction term of the form `A / s + B / (k - s)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae226f9708f6749b7e8280ce7b8d4379bed5493f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
