# coeffMoments_of_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6177dce1-973a-6c8d-f357-2489a061c631",
  "kind": "theorem",
  "lexical_name": "coeffMoments_of_family",
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
  "slug": "coeffmoments-of-family--6053b50d5302295bbac1fc24",
  "source": {
    "blob": "8636a9fd7745206d31f2a08957c332d998e96a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6053b50d5302295bbac1fc2459aab9f28122ab49b947cf505131d9342e6436a6",
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

Occurrence: `result:6177dce1-973a-6c8d-f357-2489a061c631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffMoments_of_family {P : Params} {Pf : ℝ → Params} {Fam : CoeffFamily} {cW : ℝ}
    {Z : ZeroConfig} (hP : P.Valid) (hlam1 : P.lam < 1)
    (hset : ∀ T, (Pf T).toSetting T = P.toSetting T)
    (hloc : ∀ T, (Pf T).localFun T = AdmWindow.localFun ((Pf T).phi T) (P.L T))
    (haL : ∀ T, (Pf T).a T * (Pf T).L T = AdmWindow.av ((Pf T).phi T) (P.L T) * P.L T)
    (hwin : AdmFamily P (fun T => (Pf T).phi T) cW)
    (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hPP : PPInput) (hRvM : RiemannVonMangoldt Z) {cinf : ℝ} (hc0 : 0 < cinf)
    (hc : Tendsto (fun T => ThmD.cRatio (P.lam1 T) (AdmWindow.av ((Pf T).phi T) (P.L T))
        (AdmWindow.bv ((Pf T).phi T) (P.L T))
        (JD Fam.D (AdmWindow.gv ((Pf T).phi T)) (P.L T) (l T))) atTop (𝓝 cinf)) :
    CoeffMoments Z Pf Fam cinf⁻¹ :=
  (coeffMoments_iff_momentsW Z Pf Fam _).2
    (momentsW_of_family 1 hP hlam1 hset hloc haL hwin hF hΓ hMV hPP hRvM hc0 hc)

/-- **CoeffMoments, flat window** (`Pf := fun _ => P`; the window is the tree's own taper `P.phi T`,
admissible with constant `cW` — XiPrime/Window.lean's admWindow_taper gives `cW = P.crho`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8636a9fd7745206d31f2a08957c332d998e96a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
