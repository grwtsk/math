# lower_density_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48ba29bf-2606-60c9-8535-7592a6b333f9",
  "kind": "theorem",
  "lexical_name": "lower_density_integral",
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
  "slug": "lower-density-integral--e0211d38d2aea1ee226ce0b6",
  "source": {
    "blob": "1a24d8406f8860416376c48539b38fbde9702e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0211d38d2aea1ee226ce0b621b7109d0103d1d74dd75d2378d90a128daeecd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ba29bf-2606-60c9-8535-7592a6b333f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lower_density_integral :
    (∫ y in (13 / 2 : ℝ)..7, (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ)) = blockMargin := by
  have hz : (0 : ℝ) ∉ Set.uIcc (13 / 2 : ℝ) 7 := by
    rw [uIcc_of_le (by norm_num : (13 / 2 : ℝ) ≤ 7)]
    norm_num
  have hpow := integral_rpow (a := (13 / 2 : ℝ)) (b := 7) (r := -(3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in (13 / 2 : ℝ)..7, (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ)) =
      ∫ y in (13 / 2 : ℝ)..7, (1 / 24 : ℝ) * y ^ (-(3 / 2 : ℝ)) := by
    apply intervalIntegral.integral_congr
    intro y hy
    rw [uIcc_of_le (by norm_num : (13 / 2 : ℝ) ≤ 7)] at hy
    have hyp : 0 ≤ y := by linarith [hy.1]
    dsimp only
    rw [Real.rpow_neg hyp, div_eq_mul_inv]
  rw [he, intervalIntegral.integral_const_mul, hpow]
  norm_num only [show -(3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by norm_num]
  rw [Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 7),
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 13 / 2),
    ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  unfold blockMargin
  rw [← reciprocal_sqrt_six_half]
  ring

/-- The actual closed-atom dy block has a scale-independent strictly positive margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a24d8406f8860416376c48539b38fbde9702e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
