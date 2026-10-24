# spatialDerivativeState_norm_sub_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba63f70c-1c64-7b9d-000b-72b84484d772",
  "kind": "theorem",
  "lexical_name": "spatialDerivativeState_norm_sub_sq",
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
  "slug": "spatialderivativestate-norm-sub-sq--6d81ff8dc48a85d07731436f",
  "source": {
    "blob": "442089b824be67f3e28ab7f567a7b21cf3294ce2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variantdd0041aa46a245347ba2e8980af2c53cf4eecf314b80a115401f131b2cd0d03c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d81ff8dc48a85d07731436f7247cd4b2aaaf91a6b4ae712d012164879bb6757",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variantdd0041aa46a245347ba2e8980af2c53cf4eecf314b80a115401f131b2cd0d03c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba63f70c-1c64-7b9d-000b-72b84484d772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivativeState_norm_sub_sq {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2 =
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2 := by
  have hi : ⟪spatialDerivativeState B - spatialDerivativeState A,
      spatialDerivativeState B - spatialDerivativeState A⟫_ℂ =
      ((∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2 : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, (((spatialDerivative B x - spatialDerivative A x) ^ 2 : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_sub (spatialDerivativeState B) (spatialDerivativeState A),
          spatialDerivativeState_coe_ae hA, spatialDerivativeState_coe_ae hB] with x hs ha hb
        rw [hs, Pi.sub_apply, ha, hb, RCLike.inner_apply']
        simp [pow_two]
      _ = _ := integral_complex_ofReal
  calc
    _ = (⟪spatialDerivativeState B - spatialDerivativeState A,
      spatialDerivativeState B - spatialDerivativeState A⟫_ℂ).re := norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ = _ := by rw [hi]; rfl

/-- Difference energy varies continuously under one fixed local compact support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variantdd0041aa46a245347ba2e8980af2c53cf4eecf314b80a115401f131b2cd0d03c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variantdd0041aa46a245347ba2e8980af2c53cf4eecf314b80a115401f131b2cd0d03c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442089b824be67f3e28ab7f567a7b21cf3294ce2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
