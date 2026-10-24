# xiDeriv_simple_vs_zetaCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecd62d95-6890-2416-a85c-a2898e662d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b379ae91-77e9-a8ad-f2ce-855808eba6c4",
  "kind": "theorem",
  "lexical_name": "xiDeriv_simple_vs_zetaCount",
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
  "slug": "xideriv-simple-vs-zetacount--f0fa1250f9dbf611f61d5cac",
  "source": {
    "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 304,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0fa1250f9dbf611f61d5cacc5cd67de4b07b67118accb22f4a122f5ba4486e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b379ae91-77e9-a8ad-f2ce-855808eba6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_simple_vs_zetaCount :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.85838 : ℝ) * (Zeta23.Ncount T (2 * T) : ℝ) ≤ (N0simple T (2 * T) : ℝ) ∧
      (0.92919 : ℝ) * (Zeta23.Ncount T (2 * T) : ℝ) ≤ (Ndist T (2 * T) : ℝ) := by
  obtain ⟨lam, hl1, hl2, hc, hcd⟩ := certFlat
  have hl0 : 0 < lam := by linarith
  have hfix := xiDeriv_fixedLamBounds hl0 hl2
  have hκ : 0 ≤ kappaXi lam vFlat := (kappaXi_pos_vFlat hl0 hl2.le).le
  refine headline_of_strict (N := fun T => (Zeta23.Ncount T (2 * T) : ℝ))
    (lowS := fun T => (N0simple T (2 * T) : ℝ)) (lowD := fun T => (Ndist T (2 * T) : ℝ))
    (fun _ => Nat.cast_nonneg _) hc hcd ?_
  intro ε hε
  -- ε/2 on the ξ′ side, δ := ε/8 on the count side ((2−κ)·δ ≤ 2δ ≤ ε/4 ≤ ε/2)
  obtain ⟨T₁, hT₁⟩ := hfix (ε / 2) (by linarith)
  obtain ⟨T₂, hT₂⟩ := eventually_atTop.mp (eventually_zetaCount_le_Ncount (ε / 8) (by linarith))
  refine ⟨max T₁ T₂, fun T hT => ?_⟩
  obtain ⟨hA, hB⟩ := hT₁ T ((le_max_left _ _).trans hT)
  have hz := hT₂ T ((le_max_right _ _).trans hT)
  have ez : (Zeta23.zetaZeroConfig.N T (2 * T) : ℝ) = (Zeta23.Ncount T (2 * T) : ℝ) := by
    simp [Zeta23.zetaZeroConfig]
  rw [ez] at hz
  have hNζ : 0 ≤ (Zeta23.Ncount T (2 * T) : ℝ) := Nat.cast_nonneg _
  have hNξ : 0 ≤ (Ncount T (2 * T) : ℝ) := Nat.cast_nonneg _
  have hκ2 : kappaXi lam vFlat ≤ 2 := by linarith
  have hS0 : 0 ≤ (N0simple T (2 * T) : ℝ) := Nat.cast_nonneg _
  have hD0 : 0 ≤ (Ndist T (2 * T) : ℝ) := Nat.cast_nonneg _
  show (2 - kappaXi lam vFlat - ε) * (Zeta23.Ncount T (2 * T) : ℝ) ≤ (N0simple T (2 * T) : ℝ) ∧
    (3 / 2 - kappaXi lam vFlat / 2 - ε) * (Zeta23.Ncount T (2 * T) : ℝ) ≤ (Ndist T (2 * T) : ℝ)
  constructor
  · by_cases h : 0 ≤ 2 - kappaXi lam vFlat - ε
    · have h2 : 0 ≤ 2 - kappaXi lam vFlat - ε / 2 := by linarith
      have step := mul_le_mul_of_nonneg_left hz h2
      have k1 : 0 ≤ 4 - (2 - kappaXi lam vFlat) + ε / 2 := by linarith
      have key := mul_nonneg (mul_nonneg hε.le k1) hNζ
      linarith [step, hA, key]
    · have h' : 2 - kappaXi lam vFlat - ε < 0 := lt_of_not_ge h
      nlinarith [h', hNζ, hS0]
  · by_cases h : 0 ≤ 3 / 2 - kappaXi lam vFlat / 2 - ε
    · have h2 : 0 ≤ 3 / 2 - kappaXi lam vFlat / 2 - ε / 2 := by linarith
      have step := mul_le_mul_of_nonneg_left hz h2
      have k1 : 0 ≤ 4 - (3 / 2 - kappaXi lam vFlat / 2) + ε / 2 := by linarith
      have key := mul_nonneg (mul_nonneg hε.le k1) hNζ
      linarith [step, hB, key]
    · have h' : 3 / 2 - kappaXi lam vFlat / 2 - ε < 0 := lt_of_not_ge h
      nlinarith [h', hNζ, hD0]

end VsZeta

/-! ## The quartic window  v(s) = 1 − (7/100)(2s)² − (51/200)(2s)⁴  [XF′ Thm 8.2, optimal-window line]

Same binder list as the flat case: the extra input (the zero-side facts for the height family
Pf := (paramsOf ϱ λ).atV vQuartic — Assembly.WindowZeroSide) is proved as windowZeroSide_atV
(XiPrime/QuarticWindow/ZeroSide.lean), and the quartic prime-side inputs are Inputs.coeffMoments_quartic_xi /
Inputs.traceTransfer_quartic. -/

/-- **The ξ′ explicit formula for the window family P.atV v, any C³ taper and any admissible profile v,
every λ ∈ (0,1)** — xiEF with FamilyHyps := familyHyps_atV (Zeta23/XiPrime/FamilyHypsV.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e977c23ce5839e0cbd49741cf48f80606e3e8071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
