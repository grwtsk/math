# cos_lt_one_div_sqrt_sq_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24881c07-1b1f-b2f5-0e1c-6a281a34485c",
  "kind": "theorem",
  "lexical_name": "cos_lt_one_div_sqrt_sq_add_one",
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
  "slug": "cos-lt-one-div-sqrt-sq-add-one--70b249a9be2dd38589d8e88c",
  "source": {
    "blob": "aa94e3f3d0338f4080d1dc90434d1833a942e34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70b249a9be2dd38589d8e88ca34e35a6abc6b26b0c82c3717f895d5960d55178",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24881c07-1b1f-b2f5-0e1c-6a281a34485c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_lt_one_div_sqrt_sq_add_one {x : ℝ} (hx1 : -(3 * π / 2) ≤ x) (hx2 : x ≤ 3 * π / 2)
    (hx3 : x ≠ 0) : cos x < ↑1 / sqrt (x ^ 2 + 1) := by
  suffices ∀ {y : ℝ} (_ : 0 < y) (_ : y ≤ 3 * π / 2), cos y < ↑1 / sqrt (y ^ 2 + 1) by
    rcases lt_or_lt_iff_ne.mpr hx3.symm with ⟨h⟩
    · exact this h hx2
    · convert this (by linarith : 0 < -x) (by linarith) using 1
      · rw [cos_neg]
      · rw [neg_sq]
  intro y hy1 hy2
  have hy3 : ↑0 < y ^ 2 + 1 := by linarith [sq_nonneg y]
  rcases lt_or_le y (π / 2) with (hy2' | hy1')
  · -- Main case : `0 < y < π / 2`
    have hy4 : 0 < cos y := cos_pos_of_mem_Ioo ⟨by linarith, hy2'⟩
    rw [← abs_of_nonneg (cos_nonneg_of_mem_Icc ⟨by linarith, hy2'.le⟩), ←
      abs_of_nonneg (one_div_nonneg.mpr (sqrt_nonneg _)), ← sq_lt_sq, div_pow, one_pow,
      sq_sqrt hy3.le, lt_one_div (pow_pos hy4 _) hy3, ← inv_one_add_tan_sq hy4.ne', one_div,
      inv_inv, add_comm, add_lt_add_iff_left, sq_lt_sq, abs_of_pos hy1,
      abs_of_nonneg (tan_nonneg_of_nonneg_of_le_pi_div_two hy1.le hy2'.le)]
    exact Real.lt_tan hy1 hy2'
  · -- Easy case : `π / 2 ≤ y ≤ 3 * π / 2`
    refine' lt_of_le_of_lt _ (one_div_pos.mpr <| sqrt_pos_of_pos hy3)
    exact cos_nonpos_of_pi_div_two_le_of_le hy1' (by linarith [pi_pos])
#align real.cos_lt_one_div_sqrt_sq_add_one Real.cos_lt_one_div_sqrt_sq_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa94e3f3d0338f4080d1dc90434d1833a942e34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
