# weightedMangoldt_Ioc_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9f1d894-a4cd-8212-1518-4120930843a8",
  "kind": "theorem",
  "lexical_name": "weightedMangoldt_Ioc_error",
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
  "slug": "weightedmangoldt-ioc-error--c04a1f21d6a39e26fea391da",
  "source": {
    "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04a1f21d6a39e26fea391daae60796ee62f25c345ecd2df02b7c88bf0a01daa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f1d894-a4cd-8212-1518-4120930843a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMangoldt_Ioc_error
    {X Y : ℕ} (hX : 2 ≤ X) (hXY : X ≤ Y) :
    (∑ n ∈ Finset.Ioc X Y, coefficient n) -
        Real.log ((Y : ℝ) / (X : ℝ)) =
      psiError (Y : ℝ) / (Y : ℝ) -
        psiError (X : ℝ) / (X : ℝ) +
        ∫ u in (X : ℝ)..(Y : ℝ), psiError u / u^2 := by
  have hAbel := weightedMangoldt_Ioc_abel hX hXY
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 2) hX)
  have hYpos : (0 : ℝ) < (Y : ℝ) :=
    hXpos.trans_le (by exact_mod_cast hXY)
  have hpsi :
      IntervalIntegrable ψ volume (X : ℝ) (Y : ℝ) :=
    Chebyshev.psi_mono.intervalIntegrable
  have hinv2 :
      ContinuousOn (fun u : ℝ => (u^2)⁻¹)
        (Set.uIcc (X : ℝ) (Y : ℝ)) := by
    rw [Set.uIcc_of_le (by exact_mod_cast hXY)]
    apply ContinuousOn.inv₀ (continuousOn_id.pow 2)
    intro u hu
    exact pow_ne_zero _ (ne_of_gt (hXpos.trans_le hu.1))
  have hpsiDiv :
      IntervalIntegrable (fun u : ℝ => ψ u / u^2)
        volume (X : ℝ) (Y : ℝ) := by
    simpa [div_eq_mul_inv] using hpsi.mul_continuousOn hinv2
  have hone :
      IntervalIntegrable (fun u : ℝ => (1 : ℝ) / u)
        volume (X : ℝ) (Y : ℝ) := by
    exact ContinuousOn.intervalIntegrable (by
      rw [Set.uIcc_of_le (by exact_mod_cast hXY)]
      exact continuousOn_const.div continuousOn_id (fun u hu => ne_of_gt (hXpos.trans_le hu.1)))
  have herr :
      IntervalIntegrable (fun u : ℝ => psiError u / u^2)
        volume (X : ℝ) (Y : ℝ) := by
    have hsub := hpsiDiv.sub hone
    apply hsub.congr
    intro u hu
    unfold psiError
    have hu0 : u ≠ 0 := by
      rw [Set.uIoc_of_le (by exact_mod_cast hXY)] at hu
      linarith [hu.1, hXpos]
    field_simp [hu0]
  have hsplit :
      (∫ u in (X : ℝ)..(Y : ℝ), ψ u / u^2) =
        (∫ u in (X : ℝ)..(Y : ℝ), psiError u / u^2) +
        Real.log ((Y : ℝ) / (X : ℝ)) := by
    rw [← integral_one_div_of_pos hXpos hYpos]
    rw [← intervalIntegral.integral_add herr hone]
    apply intervalIntegral.integral_congr
    intro u hu
    unfold psiError
    have hu0 : u ≠ 0 := by
      rw [Set.uIcc_of_le (by exact_mod_cast hXY)] at hu
      linarith [hu.1, hXpos]
    field_simp [hu0]
    ring
  rw [hAbel, hsplit]
  unfold psiError
  field_simp [hXpos.ne', hYpos.ne']
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0848b6c414d19057d9738771f5225587186cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
