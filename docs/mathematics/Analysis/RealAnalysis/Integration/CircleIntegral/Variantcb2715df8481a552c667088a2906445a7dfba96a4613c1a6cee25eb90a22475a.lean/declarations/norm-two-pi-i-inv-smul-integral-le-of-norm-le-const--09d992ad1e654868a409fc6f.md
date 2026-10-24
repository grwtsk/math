# norm_two_pi_i_inv_smul_integral_le_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1070d92e-86b6-0a25-639a-e002c1497aeb",
  "kind": "theorem",
  "lexical_name": "norm_two_pi_i_inv_smul_integral_le_of_norm_le_const",
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
  "slug": "norm-two-pi-i-inv-smul-integral-le-of-norm-le-const--09d992ad1e654868a409fc6f",
  "source": {
    "blob": "9bf325246cf83f7d0712dfc65aa77cb722bd98ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 533,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09d992ad1e654868a409fc6fd89efce10f35f22f4198c4fdf868d72990fcb577",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1070d92e-86b6-0a25-639a-e002c1497aeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_two_pi_i_inv_smul_integral_le_of_norm_le_const {f : ℂ → E} {c : ℂ} {R C : ℝ}
    (hR : 0 ≤ R) (hf : ∀ z ∈ sphere c R, ‖f z‖ ≤ C) :
    ‖(2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), f z‖ ≤ R * C := by
  have : ‖(2 * π * I : ℂ)⁻¹‖ = (2 * π)⁻¹ := by simp
  rw [norm_smul, this, ← div_eq_inv_mul, div_le_iff₀ Real.two_pi_pos, mul_comm (R * C), ← mul_assoc]
  exact norm_integral_le_of_norm_le_const hR hf

/-- If `f` is continuous on the circle `|z - c| = R`, `R > 0`, the `‖f z‖` is less than or equal to
`C : ℝ` on this circle, and this norm is strictly less than `C` at some point `z` of the circle,
then `‖∮ z in C(c, R), f z‖ < 2 * π * R * C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf325246cf83f7d0712dfc65aa77cb722bd98ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
