# dilate_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:258d81b9-4e92-6a91-37a5-ae724fcc8eab",
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
  "slug": "dilate-norm-sq--9bbeb5f8ff40b8ce0f014a61",
  "source": {
    "blob": "82a1ae31b07613482426b12d41e741673c76d3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bbeb5f8ff40b8ce0f014a615b7b146a28718e94952cb56899ffe80757eb8bc3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258d81b9-4e92-6a91-37a5-ae724fcc8eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

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
    ←mul_assoc,mul_inv_cancel₀ ha.ne',one_mul]
  exact (norm_sq_integral f).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a1ae31b07613482426b12d41e741673c76d3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
