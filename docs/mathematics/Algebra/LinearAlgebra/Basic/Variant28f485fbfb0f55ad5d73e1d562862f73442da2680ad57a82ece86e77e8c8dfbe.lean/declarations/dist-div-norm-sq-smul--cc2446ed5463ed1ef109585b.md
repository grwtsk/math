# dist_div_norm_sq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e29c98e-b614-ee43-b7f7-82b9804f1724",
  "kind": "theorem",
  "lexical_name": "dist_div_norm_sq_smul",
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
  "slug": "dist-div-norm-sq-smul--cc2446ed5463ed1ef109585b",
  "source": {
    "blob": "fe0b40c10ae995e75e59bb4387ec36d450a5abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1201,
    "line": 1181,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc2446ed5463ed1ef109585ba595b5c39eb9eeff7c607e8f155fa39345eb4ba5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e29c98e-b614-ee43-b7f7-82b9804f1724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1181–1201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_norm_sq_smul {x y : F} (hx : x ≠ 0) (hy : y ≠ 0) (R : ℝ) :
    dist ((R / ‖x‖) ^ 2 • x) ((R / ‖y‖) ^ 2 • y) = R ^ 2 / (‖x‖ * ‖y‖) * dist x y :=
  have hx' : ‖x‖ ≠ 0 := norm_ne_zero_iff.2 hx
  have hy' : ‖y‖ ≠ 0 := norm_ne_zero_iff.2 hy
  calc
    dist ((R / ‖x‖) ^ 2 • x) ((R / ‖y‖) ^ 2 • y) =
        sqrt (‖(R / ‖x‖) ^ 2 • x - (R / ‖y‖) ^ 2 • y‖ ^ 2) :=
      by rw [dist_eq_norm, sqrt_sq (norm_nonneg _)]
    _ = sqrt ((R ^ 2 / (‖x‖ * ‖y‖)) ^ 2 * ‖x - y‖ ^ 2) :=
      (congr_arg sqrt <| by
        field_simp [sq, norm_sub_mul_self_real, norm_smul, real_inner_smul_left, inner_smul_right,
          Real.norm_of_nonneg (mul_self_nonneg _)]
        ring)
    _ = R ^ 2 / (‖x‖ * ‖y‖) * dist x y := by
      rw [sqrt_mul (sq_nonneg _), sqrt_sq (norm_nonneg _),
        sqrt_sq (div_nonneg (sq_nonneg _) (mul_nonneg (norm_nonneg _) (norm_nonneg _))),
        dist_eq_norm]

#align dist_div_norm_sq_smul dist_div_norm_sq_smul

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean#L1181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0b40c10ae995e75e59bb4387ec36d450a5abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
