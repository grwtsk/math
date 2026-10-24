# norm_tentKernel_rightLine_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:065733d1-038a-b125-94ea-1df74489df3e",
  "kind": "theorem",
  "lexical_name": "norm_tentKernel_rightLine_le",
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
  "slug": "norm-tentkernel-rightline-le--e65aaaf45810d54aad97b04f",
  "source": {
    "blob": "c338b95981bd643fc48488ccd539e00ecfa30c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 132,
    "path": "GRWTSK/Analysis/Complex/TentMellinInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e65aaaf45810d54aad97b04f783813265974f6c5af9afb0914d111286db007ce",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:065733d1-038a-b125-94ea-1df74489df3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tentKernel_rightLine_le (x h t : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    ‖tentKernel x h (rightLine t)‖ ≤ rightLineConstant x h * (1 + t ^ 2)⁻¹ := by
  have hz : rightLine t ≠ 0 := by
    intro he; have hr := congrArg Complex.re he; norm_num [rightLine] at hr
  have hz1 : rightLine t + 1 ≠ 0 := by
    intro he; have hr := congrArg Complex.re he; norm_num [rightLine] at hr
  have hsq : ‖rightLine t‖ ^ 2 = 4 + t ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply, rightLine]; ring
  have hsq1 : ‖rightLine t + 1‖ ^ 2 = 9 + t ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply, rightLine]; ring
  have hmono : ‖rightLine t‖ ≤ ‖rightLine t + 1‖ :=
    (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp (by nlinarith)
  have hprod : 1 + t ^ 2 ≤ ‖rightLine t‖ * ‖rightLine t + 1‖ := by
    have hm := mul_le_mul_of_nonneg_left hmono (norm_nonneg (rightLine t))
    nlinarith
  have hd : 0 < h * ‖rightLine t‖ * ‖rightLine t + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz)) (norm_pos_iff.mpr hz1)
  have hs : 0 < h * (1 + t ^ 2) := mul_pos hh (by positivity)
  have hb := norm_tent_numerator_le x h 2 hh ha (by norm_num) (rightLine t)
    (by simp [rightLine])
  norm_num only at hb
  rw [tentKernel_eq_quotient x h hh ha (rightLine t) hz hz1,
    norm_div, norm_mul, norm_mul, Complex.norm_of_nonneg hh.le]
  rw [show rightLineConstant x h * (1 + t ^ 2)⁻¹ =
    (4 * Real.exp (3 * Real.log (x + h))) / (h * (1 + t ^ 2)) by
      unfold rightLineConstant; field_simp]
  apply (div_le_div_iff₀ hd hs).mpr
  exact (mul_le_mul_of_nonneg_right hb hs.le).trans
    (mul_le_mul_of_nonneg_left
      (by simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hprod hh.le)
      (by positivity))

/-- The vertical integrability required by upstream inversion is derived explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinInversion.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c338b95981bd643fc48488ccd539e00ecfa30c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
