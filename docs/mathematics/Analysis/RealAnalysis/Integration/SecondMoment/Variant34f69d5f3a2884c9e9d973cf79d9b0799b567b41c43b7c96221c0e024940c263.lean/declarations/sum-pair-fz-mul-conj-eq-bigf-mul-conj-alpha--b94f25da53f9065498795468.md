# sum_pair_fz_mul_conj_eq_bigF_mul_conj_alpha

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faca7b0b-8991-02a9-cc52-9dd2b5c41562",
  "kind": "lemma",
  "lexical_name": "sum_pair_fz_mul_conj_eq_bigF_mul_conj_alpha",
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
  "slug": "sum-pair-fz-mul-conj-eq-bigf-mul-conj-alpha--b94f25da53f9065498795468",
  "source": {
    "blob": "24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94f25da53f9065498795468ec7b48e391b2f41cb2ffb135a5b1958e35aed601",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faca7b0b-8991-02a9-cc52-9dd2b5c41562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_pair_fz_mul_conj_eq_bigF_mul_conj_alpha
    (Z : Finset ℂ) (m : ℂ → ℕ) (u v : ℝ) :
    ∑ p ∈ Z ×ˢ Z, (m p.1 * m p.2 : ℂ) *
        (fz eta p.1 u * (starRingEnd ℂ) (fz eta p.2 u)) *
        (fz eta p.1 v * (starRingEnd ℂ) (fz eta p.2 v))
      = bigF eta Z m u v * (starRingEnd ℂ) (bigF eta Z m u v) := by
  simp only [Finset.sum_product, bigF, map_sum, map_mul, Complex.conj_natCast]
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro z hz
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro s hs
  ring

/-- The unconjugated finite kernel sum is the product-space second moment of `bigF`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
