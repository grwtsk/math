# primitive_change_base_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4773b985-cb43-7c62-2d53-25d1b348d88f",
  "kind": "theorem",
  "lexical_name": "primitive_change_base_all",
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
  "slug": "primitive-change-base-all--f2a43566b39c03f7efd4a947",
  "source": {
    "blob": "2c162633e0f9251c3724b11a7454aeaebc60bbff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 119,
    "path": "GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a43566b39c03f7efd4a9479c9ddfe6f062e419bff9541963f3d25955597059",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4773b985-cb43-7c62-2d53-25d1b348d88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_change_base_all (a b x : ℝ) (ha : 1 < a) (hab : a ≤ b) (hax : a ≤ x) :
    rationalRieszPrimitive a x = rationalRieszPrimitive b x -
      x * (∫ t in a..b, rationalDensity t) + (∫ t in a..b, t * rationalDensity t) := by
  by_cases hbx : b ≤ x
  · exact rationalRieszPrimitive_change_base a b x ha hab hbx
  have hxb : x ≤ b := le_of_not_ge hbx
  have hi : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume a x :=
    ContinuousOn.intervalIntegrable_of_Icc hax
      ((continuous_const.sub continuous_id).continuousOn.mul (rationalDensity_continuousOn ha))
  have hj : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume x b :=
    ContinuousOn.intervalIntegrable_of_Icc hxb
      ((continuous_const.sub continuous_id).continuousOn.mul
        (rationalDensity_continuousOn (ha.trans_le hax)))
  have hf : IntervalIntegrable rationalDensity volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab (rationalDensity_continuousOn ha)
  have htf : IntervalIntegrable (fun t => t * rationalDensity t) volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab
      (continuous_id.continuousOn.mul (rationalDensity_continuousOn ha))
  have he : (∫ t in a..b, (x - t) * rationalDensity t) =
      x * (∫ t in a..b, rationalDensity t) - (∫ t in a..b, t * rationalDensity t) := by
    calc
      _ = ∫ t in a..b, (x * rationalDensity t - t * rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  have hadd := intervalIntegral.integral_add_adjacent_intervals hi hj
  unfold rationalRieszPrimitive
  rw [intervalIntegral.integral_symm x b]
  linarith

/-- Fixed-base boundary-normalized source identity for EVERY x>1.
The coefficients are explicit canonical zero values and correction integrals;
their classical special-value forms and the unsmoothed identity remain separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c162633e0f9251c3724b11a7454aeaebc60bbff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
