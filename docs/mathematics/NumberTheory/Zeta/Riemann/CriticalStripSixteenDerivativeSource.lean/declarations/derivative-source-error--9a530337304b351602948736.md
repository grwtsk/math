# derivative_source_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:708dbcd1-f04e-fc12-59de-3063588bdf40",
  "kind": "theorem",
  "lexical_name": "derivative_source_error",
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
  "slug": "derivative-source-error--9a530337304b351602948736",
  "source": {
    "blob": "8b8c1570d8e3aaf419e33610d00a93d0be37161a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 230,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a530337304b3516029487366332c5fc842008f27156a892422683feef7c4c98",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708dbcd1-f04e-fc12-59de-3063588bdf40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_source_error {s : ℂ} (hs : Region s) :
    ‖deriv poleNormalizedZeta s - exactDerivative s‖ ≤ (1/4 : ℝ) := by
  have hj := sixthKernel.tail_norm_le (T := 16) (σ := 6) (z := s+6)
    (by norm_num) (by norm_num) (by simp only [Complex.add_re, Complex.ofNat_re]; linarith [hs.1])
  have hl := sixthKernel.logTail_norm_le (T := 16) (σ := 6) (z := s+6)
    (by norm_num) (by norm_num) (by simp only [Complex.add_re, Complex.ofNat_re]; linarith [hs.1])
  change ‖tail 16 s‖ ≤ (1/30240 : ℝ) * ((16 : ℝ)^(-(6-1 : ℝ))/(6-1)) at hj
  norm_num [Real.rpow_neg] at hj
  change ‖sixthKernel.logTail (s+6) 16‖ ≤
    (1/30240 : ℝ) * ((16 : ℝ)^(-(6-2 : ℝ))/(6-2)) at hl
  norm_num [Real.rpow_neg] at hl
  have ha := product_norm_le 7 (by norm_num : (0 : ℝ) ≤ 21) (region_factors hs)
  have had := productSlope_norm_le 7 (by norm_num : (0 : ℝ) ≤ 21) (region_factors hs)
  rw [product_seven] at ha
  rw [source_derivative_identity hs.1]
  have he : exactDerivative s-productSlope 7 s*tail 16 s+
      multiplier s*sixthKernel.logTail (s+6) 16-exactDerivative s =
        -productSlope 7 s*tail 16 s+multiplier s*sixthKernel.logTail (s+6) 16 := by ring
  rw [he]
  calc
    _ ≤ ‖productSlope 7 s‖*‖tail 16 s‖ +
        ‖multiplier s‖*‖sixthKernel.logTail (s+6) 16‖ := by
      simpa only [norm_mul, norm_neg] using norm_add_le
        (-productSlope 7 s*tail 16 s) (multiplier s*sixthKernel.logTail (s+6) 16)
    _ ≤ (7*21^6 : ℝ)/(30240*5*16^5) + (21^7 : ℝ)/(30240*4*16^4) := by
      apply add_le_add
      · exact (mul_le_mul (by simpa using had) hj (norm_nonneg _) (by norm_num)).trans_eq (by norm_num)
      · exact (mul_le_mul ha hl (norm_nonneg _) (by norm_num)).trans_eq (by norm_num)
    _ ≤ 1/4 := by norm_num

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8c1570d8e3aaf419e33610d00a93d0be37161a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
