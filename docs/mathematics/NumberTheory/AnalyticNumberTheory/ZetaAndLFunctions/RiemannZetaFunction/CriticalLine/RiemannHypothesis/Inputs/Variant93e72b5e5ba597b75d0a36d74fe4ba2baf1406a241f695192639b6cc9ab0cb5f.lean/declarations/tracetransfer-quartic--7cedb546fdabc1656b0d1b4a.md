# traceTransfer_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eec9cecd4a86639ea8e55727b1f2a01d92758af7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3f59f63-ef2f-90cb-9713-2d9b810744c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a851b3bb-272a-0755-7f2c-0d38e578cf6b",
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
  "slug": "tracetransfer-quartic--7cedb546fdabc1656b0d1b4a",
  "source": {
    "blob": "eec9cecd4a86639ea8e55727b1f2a01d92758af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cedb546fdabc1656b0d1b4a12537c2214c9c718333c2ad094c20915107f4a3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a851b3bb-272a-0755-7f2c-0d38e578cf6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec9cecd4a86639ea8e55727b1f2a01d92758af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
