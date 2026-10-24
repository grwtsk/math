# tendsto_cRatio_quartic_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "282effa9c3758192cbef75f8323437363b039b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dd041a6-b5d4-40f8-f582-3533e698466f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b31a5f19-7d17-2c73-7e53-0b00b0186fe4",
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
  "slug": "tendsto-cratio-quartic-of--62e083c0e7f0e47721efdf4e",
  "source": {
    "blob": "282effa9c3758192cbef75f8323437363b039b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e083c0e7f0e47721efdf4e035f2bf60a661193862515d35d9d03c72cab7ed3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31a5f19-7d17-2c73-7e53-0b00b0186fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282effa9c3758192cbef75f8323437363b039b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
