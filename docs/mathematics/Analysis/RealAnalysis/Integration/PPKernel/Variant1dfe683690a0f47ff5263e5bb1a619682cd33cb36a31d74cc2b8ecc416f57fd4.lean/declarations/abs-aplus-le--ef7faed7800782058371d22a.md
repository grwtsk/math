# abs_Aplus_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e79afae6-6793-a6b9-1d65-ce28fdd7ae64",
  "kind": "lemma",
  "lexical_name": "abs_Aplus_le",
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
  "slug": "abs-aplus-le--ef7faed7800782058371d22a",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 396,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7faed7800782058371d22a977f84240f75edfed5b42dbef8cd4c2028b519f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e79afae6-6793-a6b9-1d65-ce28fdd7ae64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_Aplus_le (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) {y y' : ℝ}
    (hyy : 0 < y + y') :
    |Aplus Φ T y y'| ≤ 2 / (y + y') * ∫ x, Φ x ^ 2 := by
  unfold Aplus
  have hne : y + y' ≠ 0 := hyy.ne'
  have hint : IntegrableOn (fun x => Φ x ^ 2 * JpK T y y' x) (Icc (-T) T) :=
    ((hΦ.pow 2).mul (continuous_JpK T y y')).integrableOn_Icc
  calc |∫ x in Icc (-T) T, Φ x ^ 2 * JpK T y y' x|
      ≤ ∫ x in Icc (-T) T, |Φ x ^ 2 * JpK T y y' x| := abs_integral_le_integral_abs
    _ ≤ ∫ x in Icc (-T) T, Φ x ^ 2 * (2 / (y + y')) := by
        apply setIntegral_mono_on hint.abs (hΦ2.integrableOn.mul_const _) measurableSet_Icc
        intro x _
        rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
        refine mul_le_mul_of_nonneg_left ?_ (sq_nonneg _)
        have := abs_Jker_le hne (x * y) (max (T - x) T) (min (2 * T - x) (2 * T))
        rw [abs_of_pos hyy] at this
        exact this
    _ = 2 / (y + y') * ∫ x in Icc (-T) T, Φ x ^ 2 := by rw [integral_mul_const]; ring
    _ ≤ 2 / (y + y') * ∫ x, Φ x ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact setIntegral_le_integral hΦ2 (Filter.Eventually.of_forall fun x => sq_nonneg _)

/-! ### The difference-frequency terms 𝒪₁, exact evaluation (§5.4) -/

/-- The four half-line trigonometric moments of Φ² (the paper's α_n^±, §5.4, split into
real and imaginary parts): C⁺(y) = ∫_0^T Φ²cos(xy), S⁺(y) = ∫_0^T Φ²sin(xy),
C⁻(y) = ∫_{−T}^0 Φ²cos(xy), S⁻(y) = ∫_{−T}^0 Φ²sin(xy). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
