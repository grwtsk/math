# jacobiTheta₂'_functional_equation'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aad021de-58ba-b13b-fbf1-9524fa2a9bd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e371f884-753c-34e6-7e6f-54a6656803f1",
  "kind": "lemma",
  "lexical_name": "jacobiTheta₂'_functional_equation'",
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
  "slug": "jacobitheta-functional-equation--0f4ebebdb919bbab4c80ae5f",
  "source": {
    "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 81,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f4ebebdb919bbab4c80ae5fcd7e9bc8806e7948bc3a675046139e6e28cabd67",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e371f884-753c-34e6-7e6f-54a6656803f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobiTheta₂'_functional_equation' (z τ : ℂ) :
    jacobiTheta₂' z τ = (-2 * π) / (-I * τ) ^ (3 / 2 : ℂ) * jacobiTheta₂'' z (-1 / τ) := by
  rcases eq_or_ne τ 0 with rfl | hτ
  · rw [jacobiTheta₂'_undef _ (by simp), mul_zero, zero_cpow (by norm_num), div_zero, zero_mul]
  have aux1 : (-2 * π : ℂ) / (2 * π * I) = I := by
    rw [div_eq_iff two_pi_I_ne_zero, mul_comm I, mul_assoc _ I I, I_mul_I, neg_mul, mul_neg,
      mul_one]
  rw [jacobiTheta₂'_functional_equation, ← mul_one_div _ τ, mul_right_comm _ (cexp _),
    (by rw [cpow_one, ← div_div, div_self (neg_ne_zero.mpr I_ne_zero)] :
      1 / τ = -I / (-I * τ) ^ (1 : ℂ)), div_mul_div_comm,
    ← cpow_add _ _ (mul_ne_zero (neg_ne_zero.mpr I_ne_zero) hτ), ← div_mul_eq_mul_div,
    (by norm_num : (1 / 2  + 1 : ℂ) = 3 / 2), mul_assoc (1 / _), mul_assoc (1 / _),
    ← mul_one_div (-2 * π : ℂ), mul_comm _ (1 / _), mul_assoc (1 / _)]
  congr 1
  rw [jacobiTheta₂'', div_add' _ _ _ two_pi_I_ne_zero, ← mul_div_assoc, ← mul_div_assoc,
    ← div_mul_eq_mul_div (-2 * π : ℂ), mul_assoc, aux1, mul_div z (-1), mul_neg_one, neg_div τ z,
    jacobiTheta₂_neg_left, jacobiTheta₂'_neg_left, neg_mul, ← mul_neg, ← mul_neg,
    mul_div, mul_neg_one, neg_div, neg_mul, neg_mul, neg_div]
  congr 2
  rw [neg_sub, ← sub_eq_neg_add, mul_comm _ (_ * I), ← mul_assoc]

/-- Odd Hurwitz zeta kernel (function whose Mellin transform will be the odd part of the completed
Hurwitz zeta function). See `oddKernel_def` for the defining formula, and `hasSum_int_oddKernel`
for an expression as a sum over `ℤ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f63abc696aeec59a76ab48157eb9ca4ca6c4505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
