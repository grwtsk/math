# aV_range_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df7fe234ca4ee0815795e5b1e3a8e278742112a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be0ff0cb-4d60-3447-8db5-e1792fa76791",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c4c1381-2afa-2822-7b50-0f96ec2d09af",
  "kind": "theorem",
  "lexical_name": "aV_range_of",
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
  "slug": "av-range-of--b14e982b296f64b8d5c8d8e0",
  "source": {
    "blob": "df7fe234ca4ee0815795e5b1e3a8e278742112a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14e982b296f64b8d5c8d8e026a5ad35b7a437381f6654a97f72c8594b283bcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4c1381-2afa-2822-7b50-0f96ec2d09af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aV_range_of (hP : P.Valid) {T : ℝ} (h8 : 8 * P.w ≤ P.L T) :
    1 / 2 ≤ (P.atV vQuartic T).a T ∧ (P.atV vQuartic T).a T ≤ 1 := by
  have hW := admWindow_phiV_quartic hP h8
  rw [atVQ_a_eq_av hP]
  refine ⟨?_, hW.av_le_one⟩
  have hw0 : 0 < P.w := by linarith [hP.one_le_w]
  have h2 : 2 * P.w ≤ P.L T := by linarith
  have hL : 0 < P.L T := by linarith [hP.one_le_w]
  -- av ≥ (27/40)·aConst ≥ (27/40)(1 − 2w/L) ≥ (27/40)(3/4)
  have hb : 1 - 2 * P.w / P.L T ≤ P.a T :=
    (Taper.one_sub_le_bConst hP.taper hw0 h2).trans (Taper.bConst_le_aConst hP.taper hw0 h2)
  have hwL : 2 * P.w / P.L T ≤ 1 / 4 := by rw [div_le_iff₀ hL]; linarith
  have hint : Integrable (fun u => P.phiV vQuartic T u ^ 2) := hW.integrable_pow two_pos
  have hint' : Integrable (fun u => 27 / 40 * P.phi T u ^ 2) :=
    ((Params.phi_continuous hP (by linarith)).fun_pow 2 |>.integrable_of_hasCompactSupport
      ((Params.phi_hasCompactSupport hP).comp_left (g := fun t => t ^ 2) (by norm_num))).const_mul _
  have hcmp : 27 / 40 * ∫ u, P.phi T u ^ 2 ≤ ∫ u, P.phiV vQuartic T u ^ 2 := by
    rw [← integral_const_mul]
    exact integral_mono hint' hint (phiV_quartic_sq_ge hP h8)
  have ha : P.a T = (P.L T)⁻¹ * ∫ u, P.phi T u ^ 2 := rfl
  unfold AdmWindow.av
  rw [ha] at hb
  have hLi : 0 < (P.L T)⁻¹ := inv_pos.mpr hL
  calc (1:ℝ) / 2 ≤ 27 / 40 * (1 - 2 * P.w / P.L T) := by nlinarith
    _ ≤ 27 / 40 * ((P.L T)⁻¹ * ∫ u, P.phi T u ^ 2) := by gcongr
    _ = (P.L T)⁻¹ * (27 / 40 * ∫ u, P.phi T u ^ 2) := by ring
    _ ≤ (P.L T)⁻¹ * ∫ u, P.phiV vQuartic T u ^ 2 := mul_le_mul_of_nonneg_left hcmp hLi.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df7fe234ca4ee0815795e5b1e3a8e278742112a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
