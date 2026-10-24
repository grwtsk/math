# one_sub_le_bConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1aecb6-78aa-c687-2fbc-071bf0f031a1",
  "kind": "theorem",
  "lexical_name": "one_sub_le_bConst",
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
  "slug": "one-sub-le-bconst--43a95b8bcc928c987531fabf",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 586,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a95b8bcc928c987531fabf898b851673bc18d0f9e76b0663fb4e1948bbe8b2",
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

Occurrence: `result:4e1aecb6-78aa-c687-2fbc-071bf0f031a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_le_bConst (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    1 - 2 * w / L ≤ bConst ϱ L w := by
  have hL := L_pos hw hwL
  unfold bConst
  have hplateau : ∫ u in Icc (-(L / 2 - w)) (L / 2 - w), phi ϱ L w u ^ 4
      = ∫ u in Icc (-(L / 2 - w)) (L / 2 - w), (1 : ℝ) := by
    refine MeasureTheory.setIntegral_congr_fun measurableSet_Icc fun u hu => ?_
    have h1 : phi ϱ L w u = 1 := by
      apply phi_eq_one hϱ hw
      rw [mem_Icc] at hu
      rw [abs_le]
      exact ⟨hu.1, hu.2⟩
    rw [h1]
    ring
  have hvol : ∫ u in Icc (-(L / 2 - w)) (L / 2 - w), (1 : ℝ) = L - 2 * w := by
    rw [MeasureTheory.setIntegral_const]
    rw [MeasureTheory.measureReal_def, Real.volume_Icc]
    rw [ENNReal.toReal_ofReal (by linarith)]
    rw [smul_eq_mul, mul_one]
    ring
  have hle : ∫ u in Icc (-(L / 2 - w)) (L / 2 - w), phi ϱ L w u ^ 4
      ≤ ∫ u : ℝ, phi ϱ L w u ^ 4 := by
    refine MeasureTheory.setIntegral_le_integral (integrable_phi_pow hϱ hw hwL (by norm_num)) ?_
    filter_upwards with u
    have h0 := phi_nonneg hϱ (L := L) (w := w) u
    positivity
  have hkey : L - 2 * w ≤ ∫ u : ℝ, phi ϱ L w u ^ 4 := by
    rw [← hvol, ← hplateau]
    exact hle
  calc 1 - 2 * w / L = L⁻¹ * (L - 2 * w) := by field_simp
    _ ≤ L⁻¹ * ∫ u : ℝ, phi ϱ L w u ^ 4 := mul_le_mul_of_nonneg_left hkey (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
