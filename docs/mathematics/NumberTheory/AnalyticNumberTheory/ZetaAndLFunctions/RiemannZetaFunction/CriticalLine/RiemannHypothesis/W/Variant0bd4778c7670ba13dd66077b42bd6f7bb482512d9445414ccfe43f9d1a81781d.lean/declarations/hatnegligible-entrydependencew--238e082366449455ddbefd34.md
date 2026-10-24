# hatNegligible_entryDependenceW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbfacb08-8cfe-9323-5aec-d30a14290e1b",
  "kind": "theorem",
  "lexical_name": "hatNegligible_entryDependenceW",
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
  "slug": "hatnegligible-entrydependencew--238e082366449455ddbefd34",
  "source": {
    "blob": "66a3151faad91392cf595133a0dffa7df549aa1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238e082366449455ddbefd3428d7de1dce7832f9d3858f2a32a6be1cd756814d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbfacb08-8cfe-9323-5aec-d30a14290e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hatNegligible_entryDependenceW (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily)
    (P : Params) (hP : P.Valid) (hlam1 : P.lam < 1) (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    (hΓ : GammaFacts)
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z)
    {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀) (hA : 0 ≤ A)
    (hG : ReexpansionGeom Pf L2T F.c e ρ₀ A T₀) :
    HatNegligible Z Pf (fun T => (Pf T).GpW1 T - (Pf T).GpCW T 2 (F.c T)) := by
  refine hatNegligible_of_geom Z Pf P hP hlam1 hPf hcore ha hR hρ₀ hA hG _ (fun T hT hF => ?_)
  have hLf : (Pf T).L T = P.L T := fam_L hPf T
  have hL0 : 0 < (Pf T).L T := by
    rw [hLf]; unfold Params.L
    have : 1 ≤ l T := by
      have h := hF.one_le_l; simpa using h
    nlinarith [hP.lam_pos]
  have hh0 : 0 ≤ (Pf T).hgrid T := by unfold Params.hgrid; positivity
  have hX0 : 0 < (Pf T).X T := by unfold Params.X; exact Real.exp_pos _
  ext k l'
  rw [GpW1_sub_GpCW_apply (Pf T) T hΓ hF hX0 hT hh0 (F.c T) k l',
    L2star_eq_L2T_add T hT (tauStar_pos (Pf T) T hT hh0)]
  rfl

set_option maxHeartbeats 400000 in
/-- **the Π-part matrix M^{c,2} − M^{c,1} is HatNegligible** ([XF′ §9.3(i)]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a3151faad91392cf595133a0dffa7df549aa1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
