# thetaExpBoundary_norm_le_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b1a9a00-5557-cd05-7423-4d0ccd8757bd",
  "kind": "theorem",
  "lexical_name": "thetaExpBoundary_norm_le_eventually",
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
  "slug": "thetaexpboundary-norm-le-eventually--66e0070a58066a3fee67471a",
  "source": {
    "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66e0070a58066a3fee67471ad280572578202e4987b63e57711088c982dc8bba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b1a9a00-5557-cd05-7423-4d0ccd8757bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpBoundary_norm_le_eventually (u : ℂ) :
    ∀ᶠ t in atTop,
      ‖thetaExpBoundary u t‖ ≤
        thetaBoundaryDecayConstant u * Real.exp (-t) := by
  let r : ℝ := 2 * ‖u‖ + 1
  filter_upwards [eventually_ge_atTop (0 : ℝ),
    thetaA_norm_le_exp_rate_eventually r,
    thetaADerivSeries_norm_le_exp_rate_eventually r] with t ht hA hD
  have hk := thetaExpKernel_norm_le u ht
  unfold thetaExpBoundary
  rw [norm_mul]
  calc
    ‖(thetaADerivSeries t : ℂ) -
        (2 * u) * (thetaA t : ℂ)‖ *
        ‖thetaExpKernel u t‖
      ≤ (‖thetaADerivSeries t‖ +
          2 * ‖u‖ * ‖thetaA t‖) *
          Real.exp (2 * ‖u‖ * t) := by
        apply mul_le_mul
        · calc
            ‖(thetaADerivSeries t : ℂ) -
                (2 * u) * (thetaA t : ℂ)‖
              ≤ ‖(thetaADerivSeries t : ℂ)‖ +
                  ‖(2 * u) * (thetaA t : ℂ)‖ := norm_sub_le _ _
            _ = ‖thetaADerivSeries t‖ +
                2 * ‖u‖ * ‖thetaA t‖ := by
              simp [mul_assoc]
        · exact hk
        · positivity
        · positivity
    _ ≤ (thetaADerivDecayConstant * Real.exp (-r * t) +
          2 * ‖u‖ *
            (thetaADecayConstant * Real.exp (-r * t))) *
          Real.exp (2 * ‖u‖ * t) := by
        gcongr
    _ = (thetaADerivDecayConstant +
          2 * ‖u‖ * thetaADecayConstant) *
        (Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t)) := by
      ring
    _ = thetaBoundaryDecayConstant u * Real.exp (-t) := by
      have hexp :
          Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t) =
            Real.exp (-t) := by
        rw [← Real.exp_add]
        congr 1
        unfold r
        ring
      rw [hexp]
      rfl

/-- The oriented exponential boundary vanishes at infinity for every fixed
complex spectral parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
