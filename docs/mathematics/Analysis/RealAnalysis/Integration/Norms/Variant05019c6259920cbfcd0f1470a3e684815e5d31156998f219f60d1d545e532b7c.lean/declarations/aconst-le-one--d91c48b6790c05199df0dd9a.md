# aConst_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5befa4d8-8978-96e2-2417-b378c5729232",
  "kind": "theorem",
  "lexical_name": "aConst_le_one",
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
  "slug": "aconst-le-one--d91c48b6790c05199df0dd9a",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91c48b6790c05199df0dd9ade42f5b6c9b51404ba1357dee12d376a71d778fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5befa4d8-8978-96e2-2417-b378c5729232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aConst_le_one (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    aConst ϱ L w ≤ 1 := by
  have hL := L_pos hw hwL
  unfold aConst
  have hsupp : ∀ u ∉ Icc (-(L / 2)) (L / 2), phi ϱ L w u ^ 2 = 0 := by
    intro u hu
    have : phi ϱ L w u = 0 := by
      apply phi_eq_zero hϱ hw
      rw [mem_Icc, not_and_or, not_le, not_le] at hu
      rcases hu with h | h
      · calc L / 2 ≤ -u := by linarith
          _ ≤ |u| := neg_le_abs u
      · calc L / 2 ≤ u := by linarith
          _ ≤ |u| := le_abs_self u
    rw [this]
    ring
  have heq : ∫ u : ℝ, phi ϱ L w u ^ 2 = ∫ u in Icc (-(L / 2)) (L / 2), phi ϱ L w u ^ 2 :=
    (MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero hsupp).symm
  have hle : ∫ u in Icc (-(L / 2)) (L / 2), phi ϱ L w u ^ 2
      ≤ ∫ u in Icc (-(L / 2)) (L / 2), (1 : ℝ) := by
    refine MeasureTheory.setIntegral_mono_on
      ((integrable_phi_pow hϱ hw hwL (by norm_num)).integrableOn)
      (MeasureTheory.integrableOn_const (by simp)) measurableSet_Icc fun u _ => ?_
    have h0 := phi_nonneg hϱ (L := L) (w := w) u
    have h1 := phi_le_one hϱ (L := L) (w := w) u
    nlinarith
  have hvol : ∫ u in Icc (-(L / 2)) (L / 2), (1 : ℝ) = L := by
    rw [MeasureTheory.setIntegral_const]
    rw [MeasureTheory.measureReal_def, Real.volume_Icc]
    rw [ENNReal.toReal_ofReal (by linarith)]
    rw [smul_eq_mul, mul_one]
    ring
  calc L⁻¹ * ∫ u : ℝ, phi ϱ L w u ^ 2 ≤ L⁻¹ * L := by
        rw [heq]
        exact mul_le_mul_of_nonneg_left (le_trans hle (le_of_eq hvol)) (by positivity)
    _ = 1 := inv_mul_cancel₀ hL.ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
