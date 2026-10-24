# lem_ends_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ead5da50-01da-f633-7b6c-cf86c954b34b",
  "kind": "theorem",
  "lexical_name": "lem_ends_chi",
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
  "slug": "lem-ends-chi--5fbe6316386ef2b81f64e94b",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1447,
    "line": 1383,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fbe6316386ef2b81f64e94b83b848fcfb5e8d8b84dfb14a4c12e51f94bee371",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ead5da50-01da-f633-7b6c-cf86c954b34b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1383–1447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lem_ends_chi (hΓq : GammaFactsChi κ q) (hcheb : ChebyshevMertens)
    (hc : CoeffOK q c) (hlam : 0 < lam ∧ lam ≤ 1) (hq : 1 ≤ q) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |trGt2ChiA κ q c p F - MtotalChiA κ q c p F|
        ≤ C * (p.L * Zeta23.l p.T * Real.log (Zeta23.l p.T) * (Zeta23.l p.T ^ 2 + p.X))) := by
  obtain ⟨Cends, T₀e, hends⟩ := Zeta23.PrimeSide.lem_ends_nu (cϱ := cϱ) (lam := lam)
  obtain ⟨C₀, T₀μ, hC₀1, hμB⟩ := muq_nuBound (κ := κ) (q := q) hΓq hq
  obtain ⟨x₀, hx₀1, hPb⟩ := PXc_abs_le (q := q) (c := c) hcheb hc
  refine ⟨|Cends| * (2 * C₀ ^ 2 + 2),
    max T₀e (max T₀μ (2 * π * Real.exp (|x₀| / lam))), fun p F hplam hT hF => ?_⟩
  have hTe : T₀e ≤ p.T := (le_max_left _ _).trans hT
  have hTμ : T₀μ ≤ p.T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hTx : 2 * π * Real.exp (|x₀| / lam) ≤ p.T :=
    ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  have hlam0 : 0 < p.lam := hplam ▸ hlam.1
  have hX : x₀ ≤ p.X := Setting.le_X_of_T hlam0 (by rw [hplam]; exact hTx)
  have hL := hF.L_pos
  have hl1 : (1:ℝ) ≤ Zeta23.l p.T := hF.one_le_l
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  set B : ℝ := C₀ * Zeta23.l p.T + Real.sqrt p.X with hB
  have hcont : Continuous (nuXc κ q c p.X) := by
    have h1 : (nuXc κ q c p.X) = fun τ => muq κ q τ + PXc c p.X τ := rfl
    rw [h1]
    exact (hΓq.smooth.continuous).add (PXc_continuous c p.X_pos)
  have hnu : Zeta23.PrimeSide.NuBound p B (nuXc κ q c p.X) := by
    intro τ
    have h1 : |nuXc κ q c p.X τ| ≤ |muq κ q τ| + |PXc c p.X τ| := by
      have h0 : nuXc κ q c p.X τ = muq κ q τ + PXc c p.X τ := rfl
      rw [h0]
      exact abs_add_le _ _
    have h2 := hμB p hTμ τ
    have h3 := hPb p.X hX τ
    rw [hB]
    linarith
  have hlB : Zeta23.l p.T ≤ B := by
    rw [hB]
    nlinarith
  have hmain := hends p F B (nuXc κ q c p.X) hplam hTe hF hcont hnu hlB
  have heq : trGt2ChiA κ q c p F - MtotalChiA κ q c p F
      = (p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d,
          Zeta23.PrimeSide.GentryNu (nuXc κ q c p.X) p F k l ^ 2
        - Zeta23.PrimeSide.MtotalNu (nuXc κ q c p.X) p F := rfl
  show |trGt2ChiA κ q c p F - MtotalChiA κ q c p F| ≤ _
  rw [heq]
  refine hmain.trans ?_
  have hB2 : B ^ 2 ≤ (2 * C₀ ^ 2 + 2) * (Zeta23.l p.T ^ 2 + p.X) := by
    have hsq : Real.sqrt p.X ^ 2 = p.X := Real.sq_sqrt (le_of_lt p.X_pos)
    have hC₀0 : (0:ℝ) ≤ C₀ := by linarith
    rw [hB]
    nlinarith [sq_nonneg (C₀ * Zeta23.l p.T - Real.sqrt p.X), sq_nonneg (Zeta23.l p.T),
      sq_nonneg (Real.sqrt p.X), mul_nonneg (mul_nonneg hC₀0 hC₀0) (sq_nonneg (Zeta23.l p.T))]
  have hlog0 : 0 ≤ Real.log (Zeta23.l p.T) := Real.log_nonneg hl1
  calc Cends * (p.L * p.l * Real.log p.l * B ^ 2)
      ≤ |Cends| * (p.L * p.l * Real.log p.l * B ^ 2) := by
        apply mul_le_mul_of_nonneg_right (le_abs_self _)
        positivity
    _ ≤ |Cends| * (p.L * p.l * Real.log p.l * ((2 * C₀ ^ 2 + 2) * (Zeta23.l p.T ^ 2 + p.X))) := by
        gcongr
    _ = |Cends| * (2 * C₀ ^ 2 + 2)
        * (p.L * Zeta23.l p.T * Real.log (Zeta23.l p.T) * (Zeta23.l p.T ^ 2 + p.X)) := by
        ring


end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L1383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
