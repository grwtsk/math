# quadraticCharFun_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82b46ca4-9759-772b-ed23-564cf0dfd878",
  "kind": "theorem",
  "lexical_name": "quadraticCharFun_mul",
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
  "slug": "quadraticcharfun-mul--9427771f7a4d37910e71ff3b",
  "source": {
    "blob": "bfb44db3faab1a143092c2caeb083e2aced57053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9427771f7a4d37910e71ff3b41af18f21e2c853fdc595d0ba55e36a3d5509c73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82b46ca4-9759-772b-ed23-564cf0dfd878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticCharFun_mul (a b : F) :
    quadraticCharFun F (a * b) = quadraticCharFun F a * quadraticCharFun F b := by
  by_cases ha : a = 0
  · rw [ha, zero_mul, quadraticCharFun_zero, zero_mul]
  -- now `a ≠ 0`
  by_cases hb : b = 0
  · rw [hb, mul_zero, quadraticCharFun_zero, mul_zero]
  -- now `a ≠ 0` and `b ≠ 0`
  have hab := mul_ne_zero ha hb
  by_cases hF : ringChar F = 2
  ·-- case `ringChar F = 2`
    rw [quadraticCharFun_eq_one_of_char_two hF ha, quadraticCharFun_eq_one_of_char_two hF hb,
      quadraticCharFun_eq_one_of_char_two hF hab, mul_one]
  · -- case of odd characteristic
    rw [quadraticCharFun_eq_pow_of_char_ne_two hF ha, quadraticCharFun_eq_pow_of_char_ne_two hF hb,
      quadraticCharFun_eq_pow_of_char_ne_two hF hab, mul_pow]
    cases' FiniteField.pow_dichotomy hF hb with hb' hb'
    · simp only [hb', mul_one, eq_self_iff_true, if_true]
    · have h := Ring.neg_one_ne_one_of_char_ne_two hF
      -- `-1 ≠ 1`
      simp only [hb', h, mul_neg, mul_one, if_false, ite_mul, neg_mul]
      cases' FiniteField.pow_dichotomy hF ha with ha' ha' <;>
        simp only [ha', h, neg_neg, eq_self_iff_true, if_true, if_false]
#align quadratic_char_fun_mul quadraticCharFun_mul

variable (F)

/-- The quadratic character as a multiplicative character. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb44db3faab1a143092c2caeb083e2aced57053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
