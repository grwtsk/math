# motzkin_polynomial_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48c2d2fc-0e0c-675c-56cc-b1ca77d9a1fe",
  "kind": "lemma",
  "lexical_name": "motzkin_polynomial_nonneg",
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
  "slug": "motzkin-polynomial-nonneg--c3d3f398cee7341b914f6d3b",
  "source": {
    "blob": "9666dfd38e6814c2fa05f62bef682868468c0bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 340,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d3f398cee7341b914f6d3bf2efc165056b5ee70d62cc25cb92e607fd2ea1ba",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c2d2fc-0e0c-675c-56cc-b1ca77d9a1fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma motzkin_polynomial_nonneg (x y : ℝ) :
    0 ≤ x ^ 4 * y ^ 2 + x ^ 2 * y ^ 4 - 3 * x ^ 2 * y ^ 2 + 1 := by
  have nn₁ : 0 ≤ x ^ 4 * y ^ 2 := by positivity
  have nn₂ : 0 ≤ x ^ 2 * y ^ 4 := by positivity
  have key := geom_mean_le_arith_mean3_weighted (by norm_num) (by norm_num) (by norm_num)
    nn₁ nn₂ zero_le_one (add_thirds 1)
  rw [one_rpow, mul_one, ← mul_rpow nn₁ nn₂, ← mul_add, ← mul_add,
    show x ^ 4 * y ^ 2 * (x ^ 2 * y ^ 4) = (x ^ 2) ^ 3 * (y ^ 2) ^ 3 by ring,
    mul_rpow (by positivity) (by positivity),
    ← rpow_natCast _ 3, ← rpow_mul (sq_nonneg x), ← rpow_natCast _ 3, ← rpow_mul (sq_nonneg y),
    show ((3 : ℕ) * ((1 : ℝ) / 3)) = 1 by norm_num, rpow_one, rpow_one] at key
  linarith

end Real

end GeomMeanLEArithMean

section HarmMeanLEGeomMean

/-! ### HM-GM inequality -/

namespace Real

/-- **HM-GM inequality**: The harmonic mean is less than or equal to the geometric mean, weighted
version for real-valued nonnegative functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9666dfd38e6814c2fa05f62bef682868468c0bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
