# mul_splits_in_splittingField_of_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8573e04-e23d-2de0-4d62-7712ab393e86",
  "kind": "theorem",
  "lexical_name": "mul_splits_in_splittingField_of_mul",
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
  "slug": "mul-splits-in-splittingfield-of-mul--11afc8bb3b354ab6227ad7da",
  "source": {
    "blob": "1688d4383f6337c54520d0b343870d96a7f7172e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 325,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11afc8bb3b354ab6227ad7da009339d4c3086e27bfd369a83365025161d5d64e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8573e04-e23d-2de0-4d62-7712ab393e86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_splits_in_splittingField_of_mul {p₁ q₁ p₂ q₂ : F[X]} (hq₁ : q₁ ≠ 0) (hq₂ : q₂ ≠ 0)
    (h₁ : p₁.Splits (algebraMap F q₁.SplittingField))
    (h₂ : p₂.Splits (algebraMap F q₂.SplittingField)) :
    (p₁ * p₂).Splits (algebraMap F (q₁ * q₂).SplittingField) := by
  apply splits_mul
  · rw [←
      (SplittingField.lift q₁
          (splits_of_splits_of_dvd (algebraMap F (q₁ * q₂).SplittingField) (mul_ne_zero hq₁ hq₂)
            (SplittingField.splits _) (dvd_mul_right q₁ q₂))).comp_algebraMap]
    exact splits_comp_of_splits _ _ h₁
  · rw [←
      (SplittingField.lift q₂
          (splits_of_splits_of_dvd (algebraMap F (q₁ * q₂).SplittingField) (mul_ne_zero hq₁ hq₂)
            (SplittingField.splits _) (dvd_mul_left q₂ q₁))).comp_algebraMap]
    exact splits_comp_of_splits _ _ h₂
#align polynomial.gal.mul_splits_in_splitting_field_of_mul Polynomial.Gal.mul_splits_in_splittingField_of_mul

set_option maxHeartbeats 300000 in
/-- `p` splits in the splitting field of `p ∘ q`, for `q` non-constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1688d4383f6337c54520d0b343870d96a7f7172e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
