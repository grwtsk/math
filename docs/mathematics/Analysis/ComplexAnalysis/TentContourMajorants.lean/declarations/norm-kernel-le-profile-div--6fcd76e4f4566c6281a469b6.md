# norm_kernel_le_profile_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf815071-86fa-2479-88f8-39c9930c582e",
  "kind": "theorem",
  "lexical_name": "norm_kernel_le_profile_div",
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
  "slug": "norm-kernel-le-profile-div--6fcd76e4f4566c6281a469b6",
  "source": {
    "blob": "6112bcfd991df7cea0c12af7deea378f689bba53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/Analysis/Complex/TentContourMajorants.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fcd76e4f4566c6281a469b69eebb2217d5fb55fcc34b7cb6101a1899cc2c05d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf815071-86fa-2479-88f8-39c9930c582e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_kernel_le_profile_div (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (d : ℝ) (hd : 0 < d) (hden : d ≤ ‖z‖ * ‖z + 1‖) :
    ‖tentKernel x h z‖ ≤ numeratorProfile x h z.re / (h * d) := by
  have hz : z ≠ 0 := by
    intro he
    simp only [he, norm_zero, zero_mul] at hden
    linarith
  have hz1 : z + 1 ≠ 0 := by
    intro he
    rw [he, norm_zero, mul_zero] at hden
    linarith
  have hp : 0 < h * ‖z‖ * ‖z + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz)) (norm_pos_iff.mpr hz1)
  rw [tentKernel_eq_quotient x h hh ha z hz hz1, norm_div, norm_mul, norm_mul,
    Complex.norm_of_nonneg hh.le]
  calc
    _ ≤ numeratorProfile x h z.re / (h * ‖z‖ * ‖z + 1‖) :=
      div_le_div_of_nonneg_right (norm_numerator_le_profile x h z) hp.le
    _ ≤ _ := div_le_div_of_nonneg_left (numeratorProfile_nonneg x h z.re)
      (mul_pos hh hd) (by simpa only [mul_assoc] using
        mul_le_mul_of_nonneg_left hden hh.le)

/-- No singular height-zero expression is used on horizontal contours: y!=0 is explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentContourMajorants.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6112bcfd991df7cea0c12af7deea378f689bba53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
