# dilate_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a81a7c70-80bf-9bcb-51b5-2a7554611f85",
  "kind": "theorem",
  "lexical_name": "dilate_norm_sq",
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
  "slug": "dilate-norm-sq--c5ae7180f205ac3c9609282b",
  "source": {
    "blob": "810e834337a81268b6a06c96063aecbf4e59d4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ae7180f205ac3c9609282bd4273db8a047d9848fe6e63379c2af3f54e81bf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81a7c70-80bf-9bcb-51b5-2a7554611f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_norm_sq (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    ‖dilate a ha f‖^2 = ‖f‖^2 := by
  rw [norm_sq_integral]
  have he : (fun x => ‖dilate a ha f x‖^2) =ᵐ[positiveMeasure]
      (fun x => a*‖f (a*x)‖^2) := by
    filter_upwards [dilate_ae a ha f] with x hx
    rw [hx,dilateFunc,norm_mul,Complex.norm_real,Real.norm_eq_abs,
      abs_of_nonneg (Real.sqrt_nonneg a),mul_pow,Real.sq_sqrt ha.le]
  rw [integral_congr_ae he,integral_const_mul]
  change a*(∫ x in Ioi 0, ‖f (a*x)‖^2) = _
  rw [integral_comp_mul_left_Ioi (fun x => ‖f x‖^2) 0 ha,mul_zero,smul_eq_mul,
    ←mul_assoc,mul_inv_cancel₀ ha.ne',one_mul,←norm_sq_integral]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810e834337a81268b6a06c96063aecbf4e59d4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
