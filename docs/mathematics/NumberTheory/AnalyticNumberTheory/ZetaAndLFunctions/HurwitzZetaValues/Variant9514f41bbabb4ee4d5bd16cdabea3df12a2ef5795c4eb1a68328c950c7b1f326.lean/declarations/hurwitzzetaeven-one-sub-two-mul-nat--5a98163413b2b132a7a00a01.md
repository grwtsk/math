# hurwitzZetaEven_one_sub_two_mul_nat

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
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cbad672-bf75-2fb2-a6aa-7e2d627ceb88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78954ec1-87e9-8704-c848-541b09dffba8",
  "kind": "theorem",
  "lexical_name": "hurwitzZetaEven_one_sub_two_mul_nat",
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
  "slug": "hurwitzzetaeven-one-sub-two-mul-nat--5a98163413b2b132a7a00a01",
  "source": {
    "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a98163413b2b132a7a00a01a9fae4314c103c849e11a2b4c72d6945f292db30",
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

Occurrence: `result:78954ec1-87e9-8704-c848-541b09dffba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hurwitzZetaEven_one_sub_two_mul_nat (hk : k ≠ 0) (hx : x ∈ Icc (0 : ℝ) 1) :
    hurwitzZetaEven x (1 - 2 * k) =
      -1 / (2 * k) * ((Polynomial.bernoulli (2 * k)).map (algebraMap ℚ ℂ)).eval (x : ℂ) := by
  have h1 (n : ℕ) : (2 * k : ℂ) ≠ -n := by
    rw [← Int.cast_ofNat, ← Int.cast_natCast, ← Int.cast_mul, ← Int.cast_natCast n, ← Int.cast_neg,
      Ne, Int.cast_inj, ← Ne]
    refine ne_of_gt ((neg_nonpos_of_nonneg n.cast_nonneg).trans_lt (mul_pos two_pos ?_))
    exact Nat.cast_pos.mpr (Nat.pos_of_ne_zero hk)
  have h2 : (2 * k : ℂ) ≠ 1 := by norm_cast; simp
  have h3 : Gammaℂ (2 * k) ≠ 0 := by
    refine mul_ne_zero (mul_ne_zero two_ne_zero ?_) (Gamma_ne_zero h1)
    simp [pi_ne_zero]
  rw [hurwitzZetaEven_one_sub _ h1 (Or.inr h2), ← Gammaℂ, cosZeta_two_mul_nat' hk hx, ← mul_assoc,
    ← mul_div_assoc, mul_assoc, mul_div_cancel_left₀ _ h3, ← mul_div_assoc]
  congr 2
  rw [mul_div_assoc, mul_div_cancel_left₀ _ two_ne_zero, ← ofReal_natCast, ← ofReal_mul,
    ← ofReal_cos, mul_comm π, ← sub_zero (k * π), cos_nat_mul_pi_sub, Real.cos_zero, mul_one,
    ofReal_pow, ofReal_neg, ofReal_one, pow_succ, mul_neg_one, mul_neg, ← mul_pow, neg_one_mul,
    neg_neg, one_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
