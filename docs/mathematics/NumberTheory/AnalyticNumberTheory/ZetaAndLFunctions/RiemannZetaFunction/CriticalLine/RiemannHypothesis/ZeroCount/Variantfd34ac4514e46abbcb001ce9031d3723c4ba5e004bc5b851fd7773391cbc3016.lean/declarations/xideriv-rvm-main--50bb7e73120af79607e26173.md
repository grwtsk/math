# xiDeriv_rvM_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d44ffcd5-59be-6561-0e4c-9d6cc4c2c8d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08f5faa8-1d65-abd1-1e64-ec55d2452a40",
  "kind": "theorem",
  "lexical_name": "xiDeriv_rvM_main",
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
  "slug": "xideriv-rvm-main--50bb7e73120af79607e26173",
  "source": {
    "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50bb7e73120af79607e26173a7d88c228d8b6fe4a7054b2544b5392e9845aa8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08f5faa8-1d65-abd1-1e64-ec55d2452a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_rvM_main (hF2 : XiDerivZerosInStrip) (hs : XiDerivSeam) :
    ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
      |((xiDerivZeros hF2 hs).N T (2 * T) : ℝ) - T / (2 * Real.pi) * ell1 T| ≤ C * Real.log T := by
  refine GenericRvM.rvM_main_of (xiDerivZeros hF2 hs) GoodHeight xiDeriv (a₀ := 0) le_rfl
    (fun a _ => exists_goodHeight hs a) (fun T₁ T₂ _ h12 hg₁ hg₂ => ?_) ?_ (xiDeriv_local_count hF2 hs)
  · rw [xiDerivZeros_N]
    exact Ncount_eq_im_halfContour hF2 hs h12 hg₁ hg₂
  · obtain ⟨CY, TY, hCY, -, hYb⟩ := halfContour_Yfn_bound
    refine ⟨CY, 3 * Real.pi, TY, hCY, by positivity, fun T₁ T₂ hT₁ h12 hg₁ hg₂ => ?_⟩
    rw [halfContour_xiDeriv_split hF2 hg₁ hg₂, Complex.add_im, add_sub_cancel_left]
    exact hYb T₁ T₂ hT₁ h12 hg₁ hg₂

end ZeroCount

/-- **H-RvM for the zeros of ξ′** ([XF′ (F3)], rendered as Zeta23.RiemannVonMangoldt for the ξ′ configuration):
both the main count N_{ξ′}(T,2T) = (T/2π)ℓ₁(T) + O(log T) and the two-sided local count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa8e4703df69d60e537b5ecef1c3888d474e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
