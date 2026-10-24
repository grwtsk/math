# xiTraceTransfer_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f8bfede-a0cd-73c9-df36-07aac872a726",
  "kind": "theorem",
  "lexical_name": "xiTraceTransfer_of",
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
  "slug": "xitracetransfer-of--4a36096795eba38e58ff5319",
  "source": {
    "blob": "32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 1014,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a36096795eba38e58ff53190f066ea12aadbf27d8b704235ec9c98ad65ebce4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f8bfede-a0cd-73c9-df36-07aac872a726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiTraceTransfer_of (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily)
    (P : Params) (hP : P.Valid) (hlam1 : P.lam < 1) (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    (hΓ : GammaFacts)
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z) (hEF : XiEF Z Pf)
    {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀) (hE : Reexpansion F e ρ₀ A T₀)
    (hPP : PPUpper cϱ P.lam) :
    XiTraceTransfer Z Pf F := by
  obtain ⟨A', T₀', hA', hG⟩ := reexpansionGeom_of Pf P hP hPf hcore hρ₀ hE.toAt hPP
  exact xiTraceTransfer_of_negligible Z Pf F
    (hatNegligible_entryError Z Pf P hP hPf ha hR hEF)
    (hatNegligible_entryDependence Z Pf F P hP hlam1 hPf hcore hΓ ha hR hρ₀ hA' hG)

/-! ## §6. The flat-window instance (Pf := fun _ => P): the family hypotheses discharged from the tree -/

/-- **XiTraceTransfer for the flat window family** Pf = fun _ => P: the taper facts (PrimeSide.localHypsEventually
+ LocalHyps.toCore) and a ≥ 1/2 (Params.half_le_a) come from the tree, so only the genuine inputs remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
