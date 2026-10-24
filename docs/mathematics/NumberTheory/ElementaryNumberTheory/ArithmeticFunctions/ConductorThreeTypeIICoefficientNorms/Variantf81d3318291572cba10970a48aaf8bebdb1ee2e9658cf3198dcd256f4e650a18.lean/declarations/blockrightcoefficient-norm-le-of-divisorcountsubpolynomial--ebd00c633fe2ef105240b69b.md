# blockRightCoefficient_norm_le_of_divisorCountSubpolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e91bada9-d1d7-aa8f-463e-dce12588f3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12579b64-0dfe-2d1c-5bce-1a6e1a689060",
  "kind": "theorem",
  "lexical_name": "blockRightCoefficient_norm_le_of_divisorCountSubpolynomial",
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
  "slug": "blockrightcoefficient-norm-le-of-divisorcountsubpolynomial--ebd00c633fe2ef105240b69b",
  "source": {
    "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 292,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd00c633fe2ef105240b69b97034a32a18c78c9cf7d0169fbc289953dd1efd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12579b64-0dfe-2d1c-5bce-1a6e1a689060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem blockRightCoefficient_norm_le_of_divisorCountSubpolynomial
    {η C : ℝ} (hη : 0 < η) (hC : 0 ≤ C)
    (hCbound : ∀ k : ℕ, 1 ≤ k →
      (k.divisors.card : ℝ) ≤ C * (k : ℝ) ^ η)
    {N : ℕ} (B : TypeIIDyadicBlock N) (k : B.Right) :
    ‖blockRightCoefficient B k‖ ≤ C * (2 * B.K : ℝ) ^ η := by
  by_cases hcut : vaughanFourthRootCutoff N < k.1.1
  · have hk_one : 1 ≤ k.1.1 := by omega
    rw [blockRightCoefficient, conductorThreeVaughanRight, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul]
    calc
      |(conductorThreeIntegerValue k.1.1 : ℝ)| *
          |vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ≤
          1 * |vaughanDivisorCoefficient
            (vaughanFourthRootCutoff N) k.1.1| := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one k.1.1)
          (abs_nonneg _)
      _ ≤ (k.1.1.divisors.card : ℝ) := by
        simpa using abs_vaughanDivisorCoefficient_le_card_divisors
          (vaughanFourthRootCutoff N) k.1.1
      _ ≤ C * (k.1.1 : ℝ) ^ η := hCbound k.1.1 hk_one
      _ ≤ C * (2 * B.K : ℝ) ^ η := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply Real.rpow_le_rpow
        · positivity
        · exact_mod_cast k.2.2
        · exact hη.le
  · have htarget : 0 ≤ C * (2 * B.K : ℝ) ^ η :=
      mul_nonneg hC (Real.rpow_nonneg (by positivity) η)
    simp [blockRightCoefficient, conductorThreeVaughanRight, hcut, htarget]

/-- Conditional improvement supplied exactly by the named divisor-count
obligation.  The displayed bound is the direct finite `ℓ²` consequence;
rewriting its right side gives the customary `K^(1/2+η)` form up to the
fixed factor `2^η`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dfd6a331d07998d68d2e7d5d700bf4593184b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
