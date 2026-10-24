# momentsW_of_family_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29e0adc8f7c08fc7fb9053a45620403942e640c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37c8d550-1e8e-ec4f-437b-b881d2ae5327",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1668d75-c4b5-5569-3694-9ff8b3b242be",
  "kind": "theorem",
  "lexical_name": "momentsW_of_family_final",
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
  "slug": "momentsw-of-family-final--9f0097d1a1bee0edf45fb19a",
  "source": {
    "blob": "29e0adc8f7c08fc7fb9053a45620403942e640c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0097d1a1bee0edf45fb19a516fe69b6dff4d92a98bd20d2e09842054a52f3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1668d75-c4b5-5569-3694-9ff8b3b242be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentsW_of_family_final {P : Params} {Pf : ℝ → Params} {Fam : CoeffFamily} {cW : ℝ}
    {Z : ZeroConfig} (cPi : ℝ) (hP : P.Valid) (hlam1 : P.lam < 1)
    (hset : ∀ T, (Pf T).toSetting T = P.toSetting T)
    (hloc : ∀ T, (Pf T).localFun T = AdmWindow.localFun ((Pf T).phi T) (P.L T))
    (haL : ∀ T, (Pf T).a T * (Pf T).L T = AdmWindow.av ((Pf T).phi T) (P.L T) * P.L T)
    (hwin : AdmFamily P (fun T => (Pf T).phi T) cW)
    (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hRvM : RiemannVonMangoldt Z) {cinf : ℝ} (hc0 : 0 < cinf)
    (hc : Tendsto (fun T => ThmD.cRatio (P.lam1 T) (AdmWindow.av ((Pf T).phi T) (P.L T))
        (AdmWindow.bv ((Pf T).phi T) (P.L T))
        (JD Fam.D (AdmWindow.gv ((Pf T).phi T)) (P.L T) (l T))) atTop (𝓝 cinf)) :
    MomentsW Z Pf Fam cPi cinf⁻¹ :=
  momentsW_of_family cPi hP hlam1 hset hloc haL hwin hF hΓ hMV ppInput_of_PP hRvM hc0 hc

/-- **CoeffMoments, QUARTIC window v(s) = 1 − (7/100)(2s)² − (51/200)(2s)⁴ — no prime-side input left.**
Window admissibility: admFamily_atV_quartic (Zeta23.XiPrime.QuarticWindow.Family); window
limit: tendsto_cRatio_quartic + cWin_vQuartic_pos (Zeta23.XiPrime.Window.Quartic). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e0adc8f7c08fc7fb9053a45620403942e640c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
