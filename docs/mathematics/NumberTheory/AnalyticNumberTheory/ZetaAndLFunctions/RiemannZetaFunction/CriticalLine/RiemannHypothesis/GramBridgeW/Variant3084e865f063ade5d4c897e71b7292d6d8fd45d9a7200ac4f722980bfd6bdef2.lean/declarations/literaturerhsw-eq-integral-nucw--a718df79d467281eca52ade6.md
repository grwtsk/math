# literatureRHSW_eq_integral_nucW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30da3145-8d17-f16d-0573-1d6b7d9ad129",
  "kind": "theorem",
  "lexical_name": "literatureRHSW_eq_integral_nucW",
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
  "slug": "literaturerhsw-eq-integral-nucw--a718df79d467281eca52ade6",
  "source": {
    "blob": "53f8fd2e0a2f7b17a090ed27ede2725c0d1e2fac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant3084e865f063ade5d4c897e71b7292d6d8fd45d9a7200ac4f722980bfd6bdef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a718df79d467281eca52ade6006ead372a19759e7de6c50cdc98aa851c659dd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant3084e865f063ade5d4c897e71b7292d6d8fd45d9a7200ac4f722980bfd6bdef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30da3145-8d17-f16d-0573-1d6b7d9ad129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literatureRHSW_eq_integral_nucW (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T) (k l : ℤ) :
    literatureRHSW (kfun P T k l)
      = ∫ τ : ℝ, paperFT (kfun P T k l) τ * ((nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ : ℝ) : ℂ) := by
  have hkd := pairTest_contDiff P T hφC2 hφsupp k l
  have hkc := pairTest_hasCompactSupport P T hφsupp k l
  have hks := tsupport_pairTest P T hφsupp k l
  have hFk := Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkc
  have hμ := Zeta23.EF.integrable_paperFT_mul_mu hkd hkc Zeta23.gammaFacts
  have hnu : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ)) :=
    integrable_paperFT_pairTest_mul_nuX P T hφC2 hφsupp hL k l
  have hPi : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (PiX (P.X T) τ : ℂ)) :=
    Zeta23.EF.integrable_paperFT_mul_PiX hL hFk
  rw [literatureRHSW_eq, Zeta23.EF.literatureRHS_eq_integral_nu hL hkd.continuous hks hFk hμ,
    Zeta23.EF.pole_term hL hkd.continuous hks hFk]
  change (∫ τ : ℝ, paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ))
      + (∫ τ : ℝ, paperFT (kfun P T k l) τ * (PiX (P.X T) τ : ℂ)) = _
  rw [← integral_add hnu hPi]
  refine integral_congr_ae (ae_of_all _ fun τ => ?_)
  dsimp only
  rw [nucW_two_neg_vonMangoldt]
  push_cast
  ring

/-- integrability of ĥ·nucW 2 X (−Λ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant3084e865f063ade5d4c897e71b7292d6d8fd45d9a7200ac4f722980bfd6bdef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridgeW/Variant3084e865f063ade5d4c897e71b7292d6d8fd45d9a7200ac4f722980bfd6bdef2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f8fd2e0a2f7b17a090ed27ede2725c0d1e2fac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
