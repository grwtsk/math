# corrected_reciprocal_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4544681-0374-e520-f59c-1fc4e9f5417e",
  "kind": "theorem",
  "lexical_name": "corrected_reciprocal_moment_zero",
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
  "slug": "corrected-reciprocal-moment-zero--7b73137e6dcb88bbe93ae422",
  "source": {
    "blob": "ccb1694431fd57b0a5f5a980b30bff2b698b0c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b73137e6dcb88bbe93ae422ea9d52826c3cd3dd26ed21e59d8782213191d0fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4544681-0374-e520-f59c-1fc4e9f5417e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_reciprocal_moment_zero (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ)) = 0 := by
  simp only [dampedCoefficient, neg_zero, zero_mul, Real.exp_zero, mul_one]
  simp_rw [sub_div, ite_div, zero_div]
  rw [sum_sub_distrib]
  simp [mobiusReciprocalSum, hX, (show (X : ℝ) ≠ 0 by exact_mod_cast (show X ≠ 0 by omega))]

/-- The logarithmic reciprocal moment survives with the signed source normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant0cd509b200d1aeca3bd8b81e02cd1e88a6cc5dfd7b40f693b0faec4b1ba0ba43.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb1694431fd57b0a5f5a980b30bff2b698b0c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
