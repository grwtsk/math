# momentsW_of_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe0b475-c82a-2785-d4f8-bd566c8f3486",
  "kind": "theorem",
  "lexical_name": "momentsW_of_family",
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
  "slug": "momentsw-of-family--74e6247fd0ebfcd122e2fb05",
  "source": {
    "blob": "8636a9fd7745206d31f2a08957c332d998e96a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e6247fd0ebfcd122e2fb058f676d28bd0f676e3aa2104aa53de24efdf8cc51",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe0b475-c82a-2785-d4f8-bd566c8f3486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentsW_of_family {P : Params} {Pf : ℝ → Params} {Fam : CoeffFamily} {cW : ℝ}
    {Z : ZeroConfig} (cPi : ℝ) (hP : P.Valid) (hlam1 : P.lam < 1)
    (hset : ∀ T, (Pf T).toSetting T = P.toSetting T)
    (hloc : ∀ T, (Pf T).localFun T = AdmWindow.localFun ((Pf T).phi T) (P.L T))
    (haL : ∀ T, (Pf T).a T * (Pf T).L T = AdmWindow.av ((Pf T).phi T) (P.L T) * P.L T)
    (hwin : AdmFamily P (fun T => (Pf T).phi T) cW)
    (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hPP : PPInput) (hRvM : RiemannVonMangoldt Z) {cinf : ℝ} (hc0 : 0 < cinf)
    (hc : Tendsto (fun T => ThmD.cRatio (P.lam1 T) (AdmWindow.av ((Pf T).phi T) (P.L T))
        (AdmWindow.bv ((Pf T).phi T) (P.L T))
        (JD Fam.D (AdmWindow.gv ((Pf T).phi T)) (P.L T) (l T))) atTop (𝓝 cinf)) :
    MomentsW Z Pf Fam cPi cinf⁻¹ := by
  set win : ℝ → ℝ → ℝ := fun T => (Pf T).phi T with hwin_def
  set Ncnt : ℝ → ℝ := fun T => (Z.N T (2 * T) : ℝ) with hN_def
  have hN := rvm_evBound hRvM
  have hTr := tracesBoundsXi_concrete (P := P) (win := win) (Fam := Fam) (cPi := cPi) (cW := cW)
    (Ncnt := Ncnt) hP hlam1 hwin hF hΓ hMV hPP hN
  have hN0 : ∀ᶠ T in atTop, 0 ≤ Ncnt T := Eventually.of_forall fun T => Nat.cast_nonneg _
  obtain ⟨Tw, hTw⟩ := id hwin
  have haLne : ∀ᶠ T in atTop, AdmWindow.av (win T) (P.L T) * P.L T ≠ 0 := by
    filter_upwards [eventually_ge_atTop Tw, eventually_L_ge P hP.lam_pos 1] with T hT hL
    obtain ⟨hW, hb⟩ := hTw T hT
    have ha : 1 / 2 ≤ AdmWindow.av (win T) (P.L T) := hb.trans hW.bv_le_av
    exact mul_ne_zero (by linarith) (by linarith)
  -- rewrite the statement's hat-unit quantities into the concrete data
  have htr_eq : ∀ T, rtrace ((Pf T).hat T ((Pf T).GpCW T cPi (Fam.c T)))
      = (concreteData P win Fam cPi Ncnt).trG T
          / ((concreteData P win Fam cPi Ncnt).aT T * P.L T) := by
    intro T
    rw [rtrace_hat_GpCW, haL, hset, hloc]
    rfl
  have hfr_eq : ∀ T, frobSq ((Pf T).hat T ((Pf T).GpCW T cPi (Fam.c T)))
      = (concreteData P win Fam cPi Ncnt).trG2 T
          / ((concreteData P win Fam cPi Ncnt).aT T * P.L T) ^ 2 := by
    intro T
    rw [frobSq_hat_GpCW, haL, hset, hloc]
    rfl
  refine ⟨fun δ hδ => ?_, fun δ hδ => ?_⟩
  · filter_upwards [moments_trace hTr hN0 haLne hδ] with T hT
    rw [htr_eq]
    exact hT
  · filter_upwards [moments_frob hTr hN0 hc0 hc hδ] with T hT
    rw [hfr_eq]
    exact hT

/-- **CoeffMoments (pole weight 1) for a height-indexed parameter family** — the statement as a `Prop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8636a9fd7745206d31f2a08957c332d998e96a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
