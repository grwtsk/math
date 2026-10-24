# coeffMoments_flat_cWin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dceedb2c-4f14-9b13-7f0f-8bbb5c06af69",
  "kind": "theorem",
  "lexical_name": "coeffMoments_flat_cWin",
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
  "slug": "coeffmoments-flat-cwin--fc947838c5534623ef06ff51",
  "source": {
    "blob": "129215358bfaa9e62ffa1a5bff606c7b56610861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant526a605049ecdabc5beac0ea0cecdd2b2ebacc9b539971ecca49ff4075716109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc947838c5534623ef06ff512c389bcd002ef978dbfcf4c130ef6d7c154cc33d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant526a605049ecdabc5beac0ea0cecdd2b2ebacc9b539971ecca49ff4075716109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dceedb2c-4f14-9b13-7f0f-8bbb5c06af69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffMoments_flat_cWin {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hPP : PPInput) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (fun _ => P) Fam (cWin Fam.D P.lam vFlat)⁻¹ := by
  obtain ⟨T₀, hT₀⟩ := admFamily_taper hP
  have hwin : AdmFamily P (fun T => P.phi T) P.crho := ⟨T₀, fun T hT => hT₀ T hT⟩
  have hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ Fam.D x := hF.D_nonneg
  exact coeffMoments_flat hP hlam1 hwin hF hΓ hMV hPP hRvM
    (cWin_vFlat_pos hD0 hP.lam_pos hP.lam_le_one)
    (tendsto_cRatio_flat hP hF.D_cont.continuousOn hD0)

/-- the same with the `1 / cWin` spelling (`kappaXi`-shape). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant526a605049ecdabc5beac0ea0cecdd2b2ebacc9b539971ecca49ff4075716109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant526a605049ecdabc5beac0ea0cecdd2b2ebacc9b539971ecca49ff4075716109.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `129215358bfaa9e62ffa1a5bff606c7b56610861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
