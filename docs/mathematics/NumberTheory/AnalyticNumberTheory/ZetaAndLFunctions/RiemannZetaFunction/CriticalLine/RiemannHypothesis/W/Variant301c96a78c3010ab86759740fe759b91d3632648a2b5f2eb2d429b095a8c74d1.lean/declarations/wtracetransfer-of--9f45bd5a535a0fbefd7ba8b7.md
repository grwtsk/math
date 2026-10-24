# wTraceTransfer_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa5eadd-bfd9-6763-d826-6974eb1cb294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f06b127-e887-f666-9793-0ea7633df4c7",
  "kind": "theorem",
  "lexical_name": "wTraceTransfer_of",
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
  "slug": "wtracetransfer-of--9f45bd5a535a0fbefd7ba8b7",
  "source": {
    "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 341,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f45bd5a535a0fbefd7ba8b755a99b836f011acfb37eaed9c7c1d2bd7299df84",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f06b127-e887-f666-9793-0ea7633df4c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wTraceTransfer_of (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily)
    (P : Params) (hP : P.Valid) (hlam1 : P.lam < 1) (hPf : ∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w)
    {cϱ : ℝ} (hcore : ∃ T₁ : ℝ, ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cϱ ((Pf T).toSetting T) ((Pf T).localFun T))
    (hΓ : GammaFacts)
    (ha : ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ᶠ T in atTop, a₀ ≤ (Pf T).a T)
    (hR : RiemannVonMangoldt Z) (hEF : WEF Z Pf)
    {e : ℝ → ℕ → ℕ → ℂ} {ρ₀ A T₀ : ℝ} (hρ₀ : 0 ≤ ρ₀) (hE : ReexpansionW F e ρ₀ A T₀)
    (hPP : PPUpper cϱ P.lam) :
    XiTraceTransfer Z Pf F := by
  obtain ⟨A', T₀', hA', hG⟩ := reexpansionGeom_of Pf P hP hPf hcore hρ₀ hE.toAt hPP
  have h1 : HatNegligible Z Pf (fun T => Z.Gz (Pf T) T - (Pf T).GpW1 T) := by
    obtain ⟨C, δ, T₀, hδ, h⟩ := hEF
    exact hatNegligible_of_entryBound Z Pf P hP hPf ha hR (fun T => (Pf T).GpW1 T)
      ⟨C, δ, T₀, hδ, fun T hT k l => (h T hT k l).2⟩
  have h2 := hatNegligible_entryDependenceW Z Pf F P hP hlam1 hPf hcore hΓ ha hR hρ₀ hA' hG
  have h3 := hatNegligible_piPart Z Pf F.c P hP hPf hcore hΓ ha hR
  refine xiTraceTransfer_of_negligible₁ Z Pf F (((h1.add h2).add h3).congr fun T => ?_)
  abel

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `812c26bf4f3b41e667569f13aaee85f1df82df1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
