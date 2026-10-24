# norm_tentKernel_le_inverse_height_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5ca512a-fe6f-20d1-bc58-bdafa764b42b",
  "kind": "theorem",
  "lexical_name": "norm_tentKernel_le_inverse_height_sq",
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
  "slug": "norm-tentkernel-le-inverse-height-sq--be3d0400b0ee9883f37bd3a5",
  "source": {
    "blob": "eb0bd10edfbba94a5c53fbabf9e039f9c4570baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 154,
    "path": "GRWTSK/Analysis/Complex/TentMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3d0400b0ee9883f37bd3a5d4e2006ff31b40036feedd3f993848583aaee362",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ca512a-fe6f-20d1-bc58-bdafa764b42b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tentKernel_le_inverse_height_sq (x h β : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β)
    (z : ℂ) (hz : z.re ≤ β) (hγ : z.im ≠ 0) :
    ‖tentKernel x h z‖ ≤
      (4 * Real.exp ((β + 1) * Real.log (x + h))) / (h * z.im ^ 2) := by
  have hz0 : z ≠ 0 := by intro he; apply hγ; simp [he]
  have hz1 : z + 1 ≠ 0 := by
    intro he
    have him := congrArg Complex.im he
    apply hγ
    simpa using him
  have hden : 0 < h * ‖z‖ * ‖z + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz0)) (norm_pos_iff.mpr hz1)
  have hsmall : 0 < h * z.im ^ 2 := mul_pos hh (sq_pos_of_ne_zero hγ)
  have hnormprod : z.im ^ 2 ≤ ‖z‖ * ‖z + 1‖ := by
    have hzN := Complex.abs_im_le_norm z
    have hz1N : |z.im| ≤ ‖z + 1‖ := by
      simpa using Complex.abs_im_le_norm (z + 1)
    have hp := mul_le_mul hzN hz1N (abs_nonneg z.im) (norm_nonneg z)
    simpa only [← sq, sq_abs] using hp
  have hdenle : h * z.im ^ 2 ≤ h * ‖z‖ * ‖z + 1‖ := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hnormprod hh.le
  rw [tentKernel_eq_quotient x h hh ha z hz0 hz1, norm_div, norm_mul, norm_mul,
    Complex.norm_of_nonneg hh.le]
  apply (div_le_div_iff₀ hden hsmall).2
  calc
    _ ≤ (4 * Real.exp ((β + 1) * Real.log (x + h))) * (h * z.im ^ 2) :=
      mul_le_mul_of_nonneg_right (norm_tent_numerator_le x h β hh ha hβ z hz) hsmall.le
    _ ≤ _ := mul_le_mul_of_nonneg_left hdenle (by positivity)

/-- The pole at parameter one yields the radius, not the diameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinKernel.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0bd10edfbba94a5c53fbabf9e039f9c4570baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
