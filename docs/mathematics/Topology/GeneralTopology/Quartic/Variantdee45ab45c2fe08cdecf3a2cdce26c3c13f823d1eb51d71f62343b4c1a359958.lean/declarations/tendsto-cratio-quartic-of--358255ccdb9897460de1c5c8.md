# tendsto_cRatio_quartic_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e480347-b752-4678-3df5-98f201153563",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_quartic_of",
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
  "slug": "tendsto-cratio-quartic-of--358255ccdb9897460de1c5c8",
  "source": {
    "blob": "5f0c5c1e04fcfd7e66c655e666dda15472b662c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358255ccdb9897460de1c5c8feb5340774d1a229cd9048f50002255b1c95f28b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e480347-b752-4678-3df5-98f201153563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_quartic_of {P : Params} (hP : P.Valid) {D : ℝ → ℝ}
    (hD : ContinuousOn D (Icc 0 1)) (hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ D x)
    {aT bT : ℝ → ℝ} {g : ℝ → ℝ → ℝ} {Ca Cb Cg : ℝ}
    (ha : ∀ᶠ T in atTop, |aT T - 2777 / 3000| ≤ Ca * P.w / P.L T)
    (hb : ∀ᶠ T in atTop, |bT T - 518783 / 600000| ≤ Cb * P.w / P.L T)
    (hgc : ∀ᶠ T in atTop, Continuous (g T))
    (hg : ∀ᶠ T in atTop, ∀ y ∈ Icc (0:ℝ) (P.L T),
      |g T y - P.L T * vConv vQuartic (y / P.L T)| ≤ Cg * P.w) :
    Tendsto (fun T => ThmD.cRatio (P.lam1 T) (aT T) (bT T)
      (2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D (y / l T) * g T y))) atTop
      (𝓝 (cWin D P.lam vQuartic)) := by
  have haT : Tendsto aT atTop (𝓝 (∫ s in (-(1:ℝ)/2)..(1/2), vQuartic s)) := by
    rw [integral_vQuartic]; exact ThmD.tendsto_of_close hP.lam_pos ha
  have hbT : Tendsto bT atTop (𝓝 (∫ s in (-(1:ℝ)/2)..(1/2), vQuartic s ^ 2)) := by
    rw [integral_vQuartic_sq]; exact ThmD.tendsto_of_close hP.lam_pos hb
  have hJ := tendsto_JT_of_autocorr_close (v := vQuartic) hP hD continuous_vQuartic hgc hg
  refine tendsto_cRatio_cWin hP.lam_pos (ThmD.tendsto_lam1 hP.lam_pos) haT hbT hJ ?_
  exact cWin_denom_pos (by rw [integral_vQuartic_sq]; norm_num)
    (jWin_nonneg hD0 (fun _ hs => vQuartic_nonneg_on hs) hP.lam_pos.le hP.lam_le_one) hP.lam_pos.le

/-- positivity of the limit constant (Endgame/CoeffMoments' hc0) for any D ≥ 0 on [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0c5c1e04fcfd7e66c655e666dda15472b662c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
