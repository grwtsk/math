# prop_EF_of_lit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:127c2943-7b47-0ce9-d00f-196bc179a578",
  "kind": "theorem",
  "lexical_name": "prop_EF_of_lit",
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
  "slug": "prop-ef-of-lit--6b5ef366b9e0ffe40e25c95d",
  "source": {
    "blob": "b11805266fa0912a0a3fc34dcca5b5413e43294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 711,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5ef366b9e0ffe40e25c95dd0629606f215c9ea0317f3279c5a436bdaf69e49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127c2943-7b47-0ce9-d00f-196bc179a578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_EF_of_lit (Z : ZeroConfig) (hEF : EF_lit Z) {L : ℝ} (hL : 0 < L) {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 2 f) (hg : ContDiff ℝ 2 g)
    (hfs : tsupport f ⊆ Icc (-(L / 2)) (L / 2)) (hgs : tsupport g ⊆ Icc (-(L / 2)) (L / 2))
    (hFk : Integrable (𝓕 (weilTest f g)))
    (hμ : Integrable (fun τ : ℝ => paperFT (weilTest f g) τ * (mu τ : ℂ))) :
    Summable (fun ρ : Z.carrier => Z.Wsummand f g ρ) ∧
    Integrable (fun τ : ℝ => paperFT f τ * conj (paperFT g τ) * (nuX (Real.exp L) τ : ℂ)) ∧
    Z.W f g = ∫ τ : ℝ, paperFT f τ * conj (paperFT g τ) * (nuX (Real.exp L) τ : ℂ) := by
  have hfc : HasCompactSupport f :=
    IsCompact.of_isClosed_subset isCompact_Icc (isClosed_tsupport f) hfs
  have hgc : HasCompactSupport g :=
    IsCompact.of_isClosed_subset isCompact_Icc (isClosed_tsupport g) hgs
  have hkd : ContDiff ℝ 2 (weilTest f g) := weilTest_contDiff hf hg.continuous hfc
  have hk : Continuous (weilTest f g) := hkd.continuous
  have hks : tsupport (weilTest f g) ⊆ Icc (-L) L := tsupport_weilTest_subset hfs hgs
  obtain ⟨hsum, heq⟩ := hEF (weilTest f g) hkd (weilTest_hasCompactSupport hfc hgc)
  have hfac : ∀ z : ℂ, paperFT (weilTest f g) z = paperFT f z * conj (paperFT g (conj z)) :=
    paperFT_weilTest hf.continuous hg.continuous hfc hgc
  -- termwise: m_ρ h_k(γ_ρ) = m_ρ h_f(γ_ρ) conj(h_g(conj γ_ρ))
  have hterm : (fun ρ : Z.carrier => (Z.mult ρ : ℂ) * paperFT (weilTest f g) (gammaOf ρ))
      = fun ρ : Z.carrier => Z.Wsummand f g ρ := by
    ext ρ; simp only [ZeroConfig.Wsummand, hfac, mul_assoc]
  -- on the real line: h_k(τ) = h_f(τ) conj(h_g(τ))
  have hreal : (fun τ : ℝ => paperFT (weilTest f g) τ * (nuX (Real.exp L) τ : ℂ))
      = fun τ : ℝ => paperFT f τ * conj (paperFT g τ) * (nuX (Real.exp L) τ : ℂ) := by
    ext τ; rw [hfac, Complex.conj_ofReal]
  refine ⟨hterm ▸ hsum, hreal ▸ integrable_paperFT_mul_nuX hL hFk hμ, ?_⟩
  rw [literatureRHS_eq_integral_nu hL hk hks hFk hμ, hreal] at heq
  rw [← heq, ZeroConfig.W, ← hterm]

end EF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11805266fa0912a0a3fc34dcca5b5413e43294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
