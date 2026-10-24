# _root_.Zeta23.XiPrime.familyHyps_atV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4517bdda-d5b0-aa01-8259-2c7bc6542272",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdcdf6c9-3c72-6362-df07-f331f9e1b73c",
  "kind": "theorem",
  "lexical_name": "_root_.Zeta23.XiPrime.familyHyps_atV",
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
  "slug": "root-zeta23-xiprime-familyhyps-atv--7b475a43095c50ed5df843a3",
  "source": {
    "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 294,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b475a43095c50ed5df843a354396e1b305ccd85b2786fd064e26fe9bfec176d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdcdf6c9-3c72-6362-df07-f331f9e1b73c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Zeta23.XiPrime.familyHyps_atV {P : Params} (hP : P.Valid) (hlam : P.lam < 1)
    {v : ℝ → ℝ} (hv : WindowProfile v) : FamilyHyps (P.atV v) := by
  obtain ⟨B, hB0, hB⟩ := FamilyHypsC3.exists_deriv_bound hP.taper
  obtain ⟨h, η, H, hη, hH1, hh, hagree, hH⟩ := exists_smooth_sqrt hv
  have hw1 : 1 ≤ P.w := hP.one_le_w
  have hw : 0 < P.w := by linarith
  refine ⟨⟨P.lam, hP.lam_pos, hlam, fun _ => rfl⟩, ?_⟩
  obtain ⟨T₀, hT₀⟩ := Filter.eventually_atTop.mp
    ((Assembly.tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop (8 * P.w))
  refine ⟨8 * (2 * B + 1) * H, T₀, fun T hT => ?_⟩
  have h8 : 8 * P.w ≤ P.L T := hT₀ T hT
  have hwL : 2 * P.w ≤ P.L T := by linarith
  have hL1 : 1 ≤ P.L T := by linarith
  have hL0 : 0 < P.L T := by linarith
  have hLT : (P.atV v T).L T = P.L T := rfl
  have hphi : (P.atV v T).phi T = P.phiV v T := Params.atV_phi_valid T hP hv.even
  have hF : P.phiV v T = fun u => gfac h (P.L T) u * Taper.phi P.ϱ (P.L T) P.w u := by
    have := phiV_eq_mul (L := P.L T) (w := P.w) hP.taper hw hL0 hη hagree
    funext u
    rw [Params.phiV_eq]
    exact congrFun this u
  rw [hphi, hLT]
  refine ⟨?_, ?_, fun u => Params.phiV_even P v T hv.even u, fun u => ?_, fun j hj1 hj3 => ?_⟩
  · rw [hF]; exact (gfac_contDiff hh).mul (Taper.phi_contDiff hP.taper hw hwL)
  · refine closure_minimal ?_ isClosed_Icc
    intro u hu
    have hφ : Taper.phi P.ϱ (P.L T) P.w u ≠ 0 := by
      intro h0; apply hu; rw [Params.phiV_eq, h0, mul_zero]
    exact Taper.phi_support_subset hP.taper hw hφ
  · rw [Params.phiV_eq, abs_mul, abs_of_nonneg (Real.sqrt_nonneg _),
      abs_of_nonneg (Taper.phi_nonneg hP.taper u)]
    have h1 : Real.sqrt (max 0 (v (u / P.L T))) ≤ 1 :=
      Real.sqrt_le_one.mpr (max_le zero_le_one (hv.le_one _)) |> fun h => by simpa using h
    have h2 := Taper.phi_le_one hP.taper (L := P.L T) (w := P.w) u
    have h3 := Taper.phi_nonneg hP.taper (L := P.L T) (w := P.w) u
    nlinarith [Real.sqrt_nonneg (max 0 (v (u / P.L T)))]
  · rw [hF]
    exact integral_abs_iteratedDeriv_mul_le hP.taper hB0 hB hw1 hwL hL1 hh hH1 hH hj1 hj3

/-- the quartic instance: the 0.86864 / 0.93432 ξ′ window family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda9409e7d4b7818fe8c522c8ddda6ed8180fc54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
