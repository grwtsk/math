# fixedLam_family_W

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efd67ae0-0f5b-0da3-f9b1-99c06fd5fbe9",
  "kind": "theorem",
  "lexical_name": "fixedLam_family_W",
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
  "slug": "fixedlam-family-w--7c884b4388dd2d277d073ab4",
  "source": {
    "blob": "800f4ced3575e62484eaaef1af4a74a32d280f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 567,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c884b4388dd2d277d073ab4aea5f6f44f3472eab999de15653960feade468ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efd67ae0-0f5b-0da3-f9b1-99c06fd5fbe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedLam_family_W {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀)
    (hR : RiemannVonMangoldt (wZeros hZ hs))
    {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1)
    {v : ℝ → ℝ} {Pf : ℝ → Params} (hW : WindowZeroSide (wZeros hZ hs) (paramsOf ϱ lam) Pf)
    (hCM : CoeffMoments (wZeros hZ hs) Pf wCoeffFamily (kappaXi lam v))
    (hTT : XiTraceTransfer (wZeros hZ hs) Pf wCoeffFamily) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 - kappaXi lam v - ε) * (NcountW T (2 * T) : ℝ) ≤ (N0simpleW T (2 * T) : ℝ) ∧
      (3 / 2 - kappaXi lam v / 2 - ε) * (NcountW T (2 * T) : ℝ) ≤ (NdistW T (2 * T) : ℝ) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  have hκ := kappa_nonneg_of_coeffMoments _ hR _ _ hCM
  have hM := gzMoments_of_transfer _ _ _ hκ hCM hTT
  have hlam' : (paramsOf ϱ lam).lam < 1 := h1
  have hA := simple_bound_of_gzMoments_family (wZeros hZ hs) hR (paramsOf ϱ lam) hP hlam' hW hM
  have hB := dist_bound_of_gzMoments_family (wZeros hZ hs) hR (paramsOf ϱ lam) hP hlam' hW hM
  intro ε hε
  obtain ⟨T₁, hT₁⟩ := hA ε hε
  obtain ⟨T₂, hT₂⟩ := hB ε hε
  refine ⟨max (max T₁ T₂) t₀, fun T hT => ?_⟩
  have ht : t₀ ≤ T := (le_max_right _ _).trans hT
  have h12 : max T₁ T₂ ≤ T := (le_max_left _ _).trans hT
  have hA' := hT₁ T ((le_max_left _ _).trans h12)
  have hB' := hT₂ T ((le_max_right _ _).trans h12)
  rw [wZeros_N hZ hs ht, wZeros_N0s hZ hs ht] at hA'
  rw [wZeros_N hZ hs ht, wZeros_Nd hZ hs ht] at hB'
  exact ⟨hA', hB'⟩

end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800f4ced3575e62484eaaef1af4a74a32d280f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
