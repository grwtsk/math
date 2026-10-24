# traceTransfer_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee0deea7-bd08-d151-6c24-c29c4879ce95",
  "kind": "theorem",
  "lexical_name": "traceTransfer_quartic",
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
  "slug": "tracetransfer-quartic--ffc100000a4d00e250d52571",
  "source": {
    "blob": "e469ff09f771be09c30ddd2b49d0c7667f9d8be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc100000a4d00e250d52571760affe1b022291d755291a86f651a5b0f886715",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee0deea7-bd08-d151-6c24-c29c4879ce95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceTransfer_quartic (Z : ZeroConfig) (hR : RiemannVonMangoldt Z) {ϱ : ℝ → ℝ}
    (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1) {F : CoeffFamily}
    (hEF : XiEF Z ((paramsOf ϱ lam).atV vQuartic))
    {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀) (hE : Reexpansion F e ρ₀ A T₀) :
    XiTraceTransfer Z ((paramsOf ϱ lam).atV vQuartic) F := by
  have hP := paramsOf_valid hϱ h0 h1.le
  obtain ⟨C, hC, hMV⟩ := MV.mv_hilbert
  have hW := windowZeroSide_atV Z hR hP
  have hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → PrimeSide.LocalHypsCore (cQ (paramsOf ϱ lam).ϱ)
      (((paramsOf ϱ lam).atV vQuartic T).toSetting T) (((paramsOf ϱ lam).atV vQuartic T).localFun T) := by
    obtain ⟨T₁, hT₁⟩ := localHypsCoreQ_eventually hP
    refine ⟨T₁, fun T hT => ?_⟩
    rw [Params.atV_toSetting, Params.atV_localFun T hP vQuartic_even]
    exact hT₁ T hT
  exact xiTraceTransfer_of Z _ F (paramsOf ϱ lam) hP h1 (fun _ => ⟨rfl, rfl⟩) hcore gammaFacts
    ⟨1 / 2, by norm_num, hW.a_half⟩ hR hEF hρ₀ hE
    (frobSq_Ppart_le ppInput_of_PP hMV hC _ _ ⟨h0, h1.le⟩)

/-- **P2 for Z′ (W), flat family**, obtained from `wTraceTransfer_of` and `wReexpansion`; the one
remaining input is the W explicit formula `WEF Z Pf` (see StatementW.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e469ff09f771be09c30ddd2b49d0c7667f9d8be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
