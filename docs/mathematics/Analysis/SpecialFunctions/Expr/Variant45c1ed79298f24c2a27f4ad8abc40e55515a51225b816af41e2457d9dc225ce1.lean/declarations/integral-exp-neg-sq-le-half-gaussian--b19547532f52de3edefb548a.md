# integral_exp_neg_sq_le_half_gaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30afdde8-f038-b283-dc61-638df6d6b0ef",
  "kind": "theorem",
  "lexical_name": "integral_exp_neg_sq_le_half_gaussian",
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
  "slug": "integral-exp-neg-sq-le-half-gaussian--b19547532f52de3edefb548a",
  "source": {
    "blob": "bbbeabf31f259c64b9edcd689d9547d1922b82a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 127,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19547532f52de3edefb548a3f69d2b1665407c7d9f5792af6c4c65bf82e61fc",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30afdde8-f038-b283-dc61-638df6d6b0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_exp_neg_sq_le_half_gaussian (x : ℝ) (hx : 0 ≤ x) :
    ∫ t in (0:ℝ)..x, Real.exp (-(t^2)) ≤ Real.sqrt Real.pi / 2 := by
  have hgauss : ∫ t in Set.Ioi 0, Real.exp (-(1:ℝ) * t^2) = Real.sqrt (Real.pi / 1) / 2 :=
    integral_gaussian_Ioi 1
  simp only [div_one] at hgauss
  -- The interval integral equals the set integral on Ioc when x ≥ 0
  rw [intervalIntegral.integral_of_le hx]
  -- Need: ∫ t in Ioc 0 x, ... ≤ ∫ t in Ioi 0, ...
  -- We have Ioc 0 x ⊆ Ioi 0 for x ≥ 0
  have hint : MeasureTheory.Integrable (fun t => Real.exp (-(1:ℝ) * t^2)) MeasureTheory.volume :=
    integrable_exp_neg_mul_sq (by norm_num : (0:ℝ) < 1)
  have hint_Ioi : MeasureTheory.Integrable (fun t => Real.exp (-(t^2))) (MeasureTheory.volume.restrict (Set.Ioi 0)) := by
    have heq : (fun t : ℝ => Real.exp (-(t^2))) = (fun t => Real.exp (-(1:ℝ) * t^2)) := by
      funext t; ring_nf
    rw [heq]
    exact hint.restrict
  calc ∫ t in Set.Ioc 0 x, Real.exp (-(t^2))
      ≤ ∫ t in Set.Ioi 0, Real.exp (-(t^2)) := by
        apply MeasureTheory.setIntegral_mono_set hint_Ioi
        · -- Nonnegativity
          filter_upwards with t using le_of_lt (exp_neg_sq_pos t)
        · -- Set inclusion: Ioc 0 x ⊆ Ioi 0 (need to convert to ae form)
          exact Filter.Eventually.of_forall (fun t ht => Set.Ioc_subset_Ioi_self ht)
      _ = Real.sqrt Real.pi / 2 := by
        have heq : (fun t : ℝ => Real.exp (-(t^2))) = (fun t => Real.exp (-(1:ℝ) * t^2)) := by
          funext t; ring_nf
        rw [heq, hgauss]

/-- Helper: The interval integral of a positive function over [0, x] is nonneg when x ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbeabf31f259c64b9edcd689d9547d1922b82a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
