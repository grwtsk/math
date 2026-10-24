# thetaRankFivePolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e829a4a90e249ea4b0849f4954149f45bb0a3033",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd5ea90d-643b-d978-18ba-e2c79dc593cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25ef12fb-8e9a-0f79-9751-46e29e9a7912",
  "kind": "theorem",
  "lexical_name": "thetaRankFivePolynomial_abs_le",
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
  "slug": "thetarankfivepolynomial-abs-le--1158ac9db0b01cff2b262f75",
  "source": {
    "blob": "e829a4a90e249ea4b0849f4954149f45bb0a3033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 189,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1158ac9db0b01cff2b262f75395ef67cc7c30ad4923a7e7326a97b5424316e13",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ef12fb-8e9a-0f79-9751-46e29e9a7912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFivePolynomial_abs_le (n : Fin 9) {y : ℝ} (hy : 1 ≤ y) :
    |(thetaPhiDerivativePolynomial n.val).eval y| ≤
      thetaRankFiveCoefficientNorm n.val * y ^ (n.val + 1) := by
  rw [thetaRankFivePolynomial_eq]
  let x := y - 1
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 1 := by dsimp [x]; ring
  rw [he]
  apply abs_le.mpr
  constructor
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) +
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) -
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e829a4a90e249ea4b0849f4954149f45bb0a3033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
