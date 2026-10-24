# sum_Iic_pow_mul_two_pow_neg_le

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5178a7db-0dfe-649b-2524-35693b91cb30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4ab8298-a148-8340-58d1-e4469aacf681",
  "kind": "lemma",
  "lexical_name": "sum_Iic_pow_mul_two_pow_neg_le",
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
  "slug": "sum-iic-pow-mul-two-pow-neg-le--b482822fa4e68448ae9ea588",
  "source": {
    "blob": "3d8af6e90aba7cba86bdf6acab7b59613ecb38f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b482822fa4e68448ae9ea588cb9cd12d6f4d514f696b6095f483a83be49da899",
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

Occurrence: `result:b4ab8298-a148-8340-58d1-e4469aacf681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Iic_pow_mul_two_pow_neg_le {k : ℕ} {M : ℕ} {c : ℝ} (hc : 0 < c) :
    ∑ i ∈ Finset.Iic M, i ^ k * (2 : ℝ) ^ (- (c * i)) ≤
      2 ^ c * k ! / (Real.log 2 * c) ^ (k + 1) := by
  have A (i : ℕ) : (2 : ℝ) ^ (- (c * i)) = rexp (- (Real.log 2 * c) * i) := by
    conv_lhs => rw [← exp_log zero_lt_two, ← exp_mul]
    congr 1
    ring
  simp only [A, neg_mul]
  apply (sum_Iic_pow_mul_exp_neg_le (by positivity)).trans_eq
  rw [exp_mul, exp_log zero_lt_two]

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8af6e90aba7cba86bdf6acab7b59613ecb38f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
