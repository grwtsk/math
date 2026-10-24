# thmDChi_lam_abstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:928c9334-9bf9-e27b-9417-29828e67ff48",
  "kind": "theorem",
  "lexical_name": "thmDChi_lam_abstract",
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
  "slug": "thmdchi-lam-abstract--5f73d91d570a2c3949493637",
  "source": {
    "blob": "724a9d3c397ac1eac695136b52d4258f7652b525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f73d91d570a2c3949493637b81d344de43e22b4c4fbfdb40fb5bf6174a5e3c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928c9334-9bf9-e27b-9417-29828e67ff48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmDChi_lam_abstract (Z : ZeroConfig) (κ : ℕ) {q : ℕ} (hq : 1 ≤ q) (cf : ℕ → ℂ)
    (hcu : CoeffUnimodular q cf) (H : PaperInputsChi κ q cf Z) (P : Params) (hP : P.Valid)
    (hlam : P.lam < 1) :
    (∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (HD P.lam - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.N0star T (2 * T)) ∧
    (∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 * cStar P.lam - 1 - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.N0s T (2 * T)) ∧
    (∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (cStar P.lam - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.Nd T (2 * T)) := by
  have hLoc : ThmD.LocalHypsCoreDEventually P := localHypsCoreD_eventually hP
  have hTr := tracesBoundsDChi_concrete (Z := Z) hP hq hcu H hLoc
  have hc := tendsto_cRatio_concreteChi hP hq _ _ _ (tendsto_aD hP) (tendsto_bD hP)
    (tendsto_JD hP)
  have hc0 := cStar_pos hP.lam_pos hP.lam_le_one
  have ha : ∀ᶠ T in atTop, 1 / 2 ≤ (concreteDataDChi P κ q cf Z).aT T ∧
      (concreteDataDChi P κ q cf Z).aT T ≤ 1 :=
    (concreteFactsDChi hP hq hcu H hLoc).ab_range.mono fun T h => ⟨h.1.trans h.2.1, h.2.2.1⟩
  have hBlock := eventually_blockInputsD Z hP
  obtain ⟨A₀, hA₀, hloc⟩ := H.RvM.local_count
  obtain ⟨θ₀, hTail, hθ₀⟩ := eventually_tailPackageD_of_localCount Z hP hA₀ hloc
  have hNII := Tail.eventually_NII_le Z hA₀ hloc
  have hGzGp := eventually_GzGpDChi Z hP H.EF
  have hId : ∀ᶠ T in atTop,
      trGtildeChi (P.atD T) κ q cf T = (concreteDataDChi P κ q cf Z).trG T ∧
      trGtildeSqChi (P.atD T) κ q cf T = (concreteDataDChi P κ q cf Z).trG2 T ∧
      (P.atD T).a T = (concreteDataDChi P κ q cf Z).aT T :=
    Eventually.of_forall fun T =>
      ⟨Params.atD_trGtildeChi hP κ q cf T, Params.atD_trGtildeSqChi hP κ q cf T,
        Params.atD_a T hP⟩
  have hcalE := calE_tendsto_zero P hP.lam_pos hP.lam_le_one (zero_le_one.trans hP.one_le_w)
  refine ⟨?_, ?_, ?_⟩
  · have h := thmDChi_abstract Z κ hq cf P hP hlam H.RvM _ _ _ _ _ hTr hc0 hc ha hBlock θ₀ hTail hθ₀
      hNII hGzGp hId hcalE
    simpa only [HD, one_div] using h
  · exact thmDChi_simple_abstract Z κ hq cf P hP hlam H.RvM _ _ _ _ _ hTr hc0 hc ha hBlock θ₀ hTail
      hθ₀ hNII hGzGp hId
  · exact thmDChi_dist_abstract Z κ hq cf P hP hlam H.RvM _ _ _ _ _ hTr hc0 hc ha hBlock θ₀ hTail
      hθ₀ hNII hGzGp hId

/-! ## L(s,χ): fixed λ, then λ → 1⁻ — NO hypotheses -/

section Dirichlet

variable {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}

/-- **Theorem D for L(s,χ) at fixed λ ∈ (0,1)**, Thm-A line, UNCONDITIONAL. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant06caa64ee6b5f96a7e089d9e0bef0521ba85994ad27a20e4cd05fd704490e98b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724a9d3c397ac1eac695136b52d4258f7652b525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
