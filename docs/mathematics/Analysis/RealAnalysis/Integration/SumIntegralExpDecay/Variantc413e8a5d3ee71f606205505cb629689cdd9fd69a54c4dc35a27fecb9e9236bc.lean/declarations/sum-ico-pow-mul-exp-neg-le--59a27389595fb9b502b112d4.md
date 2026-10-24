# sum_Ico_pow_mul_exp_neg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8af6e90aba7cba86bdf6acab7b59613ecb38f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f325d659-8d2a-ff1a-7b05-fd8829c8911f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:154f5f78-a435-5e9d-a1ee-6e270314ec1a",
  "kind": "lemma",
  "lexical_name": "sum_Ico_pow_mul_exp_neg_le",
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
  "slug": "sum-ico-pow-mul-exp-neg-le--59a27389595fb9b502b112d4",
  "source": {
    "blob": "3d8af6e90aba7cba86bdf6acab7b59613ecb38f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59a27389595fb9b502b112d43630b7806e1743c27748b5ab606eb51c25c6dfdd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:154f5f78-a435-5e9d-a1ee-6e270314ec1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Ico_pow_mul_exp_neg_le {k : ℕ} {M : ℕ} {c : ℝ} (hc : 0 < c) :
    ∑ i ∈ Finset.Ico 0 M, i ^ k * rexp (- (c * i)) ≤ rexp c * k ! / c ^ (k + 1) := calc
  ∑ i ∈ Finset.Ico 0 M, i ^ k * rexp (- (c * i))
  _ ≤ ∫ x in (0 : ℕ)..M, x ^ k * rexp (- (c * (x - 1))) := by
    apply sum_mul_Ico_le_integral_of_monotone_antitone
      (f := fun x ↦ x ^ k) (g := fun x ↦ rexp (- (c * x)))
    · exact Nat.zero_le M
    · intro x hx y hy hxy
      apply pow_le_pow_left₀ (by simpa using hx.1) hxy
    · intro x hx y hy hxy
      apply exp_monotone
      simp only [neg_le_neg_iff]
      gcongr
    · simp
    · apply exp_nonneg
  _ ≤ (k ! / c ^ (k + 1)) * rexp c := by
    simp only [mul_sub, mul_one, neg_sub, CharP.cast_eq_zero]
    simp only [sub_eq_add_neg, Real.exp_add, mul_comm (rexp c), ← mul_assoc]
    rw [intervalIntegral.integral_mul_const]
    gcongr
    exact intervalIntegral_pow_mul_exp_neg_le (by simp) hc
  _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8af6e90aba7cba86bdf6acab7b59613ecb38f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
