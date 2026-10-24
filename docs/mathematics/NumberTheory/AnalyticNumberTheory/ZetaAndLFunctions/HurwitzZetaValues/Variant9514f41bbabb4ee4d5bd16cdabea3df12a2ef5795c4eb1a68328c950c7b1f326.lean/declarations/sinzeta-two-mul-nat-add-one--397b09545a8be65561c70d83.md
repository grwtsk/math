# sinZeta_two_mul_nat_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ae2e765-9cac-5d66-ffbb-c078980537a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e419dced-a234-6e45-35c1-1de2b7444654",
  "kind": "theorem",
  "lexical_name": "sinZeta_two_mul_nat_add_one",
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
  "slug": "sinzeta-two-mul-nat-add-one--397b09545a8be65561c70d83",
  "source": {
    "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397b09545a8be65561c70d8304776a3fd7c48027246385b07a09cee4007a10c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e419dced-a234-6e45-35c1-1de2b7444654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinZeta_two_mul_nat_add_one (hk : k ≠ 0) (hx : x ∈ Icc 0 1) :
    sinZeta x (2 * k + 1) = (-1) ^ (k + 1) * (2 * π) ^ (2 * k + 1) / 2 / (2 * k + 1)! *
      ((Polynomial.bernoulli (2 * k + 1)).map (algebraMap ℚ ℂ)).eval (x : ℂ) := by
  rw [← (hasSum_nat_sinZeta x (?_ : 1 < re (2 * k + 1))).tsum_eq]
  · refine Eq.trans ?_ <|
      (congr_arg ofReal (hasSum_one_div_nat_pow_mul_sin hk hx).tsum_eq).trans ?_
    · rw [ofReal_tsum]
      refine tsum_congr fun n ↦ ?_
      norm_cast
      ring_nf
    · push_cast
      congr 1
      have : (Polynomial.bernoulli (2 * k + 1)).map (algebraMap ℚ ℂ) = _ :=
        (Polynomial.map_map (algebraMap ℚ ℝ) ofRealHom _).symm
      rw [this, ← ofRealHom_eq_coe, ← ofRealHom_eq_coe]
      apply Polynomial.map_aeval_eq_aeval_map (by simp)
  · norm_cast
    omega

/-- Reformulation of `cosZeta_two_mul_nat` using `Gammaℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
