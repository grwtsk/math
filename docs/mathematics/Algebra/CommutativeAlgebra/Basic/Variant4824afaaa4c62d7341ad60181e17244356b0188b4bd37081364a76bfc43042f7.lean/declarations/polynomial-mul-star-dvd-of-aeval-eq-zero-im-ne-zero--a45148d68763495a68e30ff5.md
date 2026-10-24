# Polynomial.mul_star_dvd_of_aeval_eq_zero_im_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a415b24f0ea01eba1f3e48dd843502690c13a103",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:864364dd-bd14-65e1-763e-71567fbddb9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76a410f3-3e79-e20a-ae3a-e811e037c320",
  "kind": "lemma",
  "lexical_name": "Polynomial.mul_star_dvd_of_aeval_eq_zero_im_ne_zero",
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
  "slug": "polynomial-mul-star-dvd-of-aeval-eq-zero-im-ne-zero--a45148d68763495a68e30ff5",
  "source": {
    "blob": "a415b24f0ea01eba1f3e48dd843502690c13a103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45148d68763495a68e30ff560dae2760058664ece879beec3be35ce9a6d032d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a410f3-3e79-e20a-ae3a-e811e037c320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.mul_star_dvd_of_aeval_eq_zero_im_ne_zero (p : ℝ[X]) {z : ℂ} (h0 : aeval z p = 0)
    (hz : z.im ≠ 0) : (X - C ((starRingEnd ℂ) z)) * (X - C z) ∣ map (algebraMap ℝ ℂ) p := by
  apply IsCoprime.mul_dvd
  · exact isCoprime_X_sub_C_of_isUnit_sub <| .mk0 _ <| sub_ne_zero.2 <| mt conj_eq_iff_im.1 hz
  · simpa [dvd_iff_isRoot, aeval_conj]
  · simpa [dvd_iff_isRoot]

/-- If `z` is a non-real complex root of a real polynomial,
then `p` is divisible by a quadratic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a415b24f0ea01eba1f3e48dd843502690c13a103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
